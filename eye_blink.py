import cv2 as cv
import mediapipe as mp
import time
import utils, math
import numpy as np

# variables
frame_counter = 0
CEF_COUNTER = 0
TOTAL_BLINKS = 0
# constants
CLOSED_EYES_FRAME = 3
FONTS = cv.FONT_HERSHEY_COMPLEX

# Left eyes indices 
LEFT_EYE = [362, 382, 381, 380, 374, 373, 390, 249, 263, 466, 388, 387, 386, 385, 384, 398]
LEFT_EYEBROW = [336, 296, 334, 293, 300, 276, 283, 282, 295, 285]

# right eyes indices
RIGHT_EYE = [33, 7, 163, 144, 145, 153, 154, 155, 133, 173, 157, 158, 159, 160, 161, 246]
RIGHT_EYEBROW = [70, 63, 105, 66, 107, 55, 65, 52, 53, 46]

map_face_mesh = mp.solutions.face_mesh
# camera object

class eye_blink(object):
# landmark detection function
    def __init__(self):
        self.frame_counter = 0
        self.TOTAL_BLINKS = 0
        self.CEF_COUNTER = 0

    def landmarksDetection(img, results, draw=False):
        img_height, img_width = img.shape[:2]
        # list[(x,y), (x,y)....]
        mesh_coord = [(int(point.x * img_width), int(point.y * img_height)) for point in
                      results.multi_face_landmarks[0].landmark]
        if draw:
            [cv.circle(img, p, 2, (0, 255, 0), -1) for p in mesh_coord]

        # returning the list of tuples for each landmarks
        return mesh_coord


    # Euclaidean distance
    def euclaideanDistance(point, point1):
        x, y = point
        x1, y1 = point1
        distance = math.sqrt((x1 - x) ** 2 + (y1 - y) ** 2)
        return distance


    # Blinking Ratio
    def blinkRatio(img, landmarks, right_indices, left_indices):
        # Right eyes
        # horizontal line
        rh_right = landmarks[right_indices[0]]
        rh_left = landmarks[right_indices[8]]
        # vertical line
        rv_top = landmarks[right_indices[12]]
        rv_bottom = landmarks[right_indices[4]]
        # draw lines on right eyes
        cv.line(img, rh_right, rh_left, utils.GREEN, 2)
        cv.line(img, rv_top, rv_bottom, utils.WHITE, 2)

        # LEFT_EYE
        # horizontal line
        lh_right = landmarks[left_indices[0]]
        lh_left = landmarks[left_indices[8]]

        # vertical line
        lv_top = landmarks[left_indices[12]]
        lv_bottom = landmarks[left_indices[4]]

        rhDistance = eye_blink.euclaideanDistance(rh_right, rh_left)
        rvDistance = eye_blink.euclaideanDistance(rv_top, rv_bottom)

        lvDistance = eye_blink.euclaideanDistance(lv_top, lv_bottom)
        lhDistance = eye_blink.euclaideanDistance(lh_right, lh_left)

        reRatio = rhDistance / rvDistance
        leRatio = lhDistance / lvDistance

        ratio = (reRatio + leRatio) / 2
        return ratio

    def blink_count(self, image):
        with map_face_mesh.FaceMesh(min_detection_confidence=0.5, min_tracking_confidence=0.5) as face_mesh:
        # starting Video loop here.

            frame = cv.resize(image, None, fx=1.0, fy=1.0, interpolation=cv.INTER_CUBIC)
            frame_height, frame_width = frame.shape[:2]
            rgb_frame = cv.cvtColor(frame, cv.COLOR_RGB2BGR)
            results = face_mesh.process(rgb_frame)
            if results.multi_face_landmarks:
                mesh_coords = eye_blink.landmarksDetection(frame, results, False)
                ratio = eye_blink.blinkRatio(frame, mesh_coords, RIGHT_EYE, LEFT_EYE)

                if ratio > 3.4:
                    self.CEF_COUNTER += 1

                else:
                    if self.CEF_COUNTER > CLOSED_EYES_FRAME:
                        self.TOTAL_BLINKS += 1
                        self.CEF_COUNTER = 0
                # cv.putText(frame, f'Total Blinks: {TOTAL_BLINKS}', (100, 150), FONTS, 0.6, utils.GREEN, 2)
                # utils.colorBackgroundText(frame,  f'Total Blinks: {TOTAL_BLINKS}', FONTS, 0.7, (30,150),2)

                cv.polylines(frame,  [np.array([mesh_coords[p] for p in LEFT_EYE ], dtype=np.int32)], True, utils.GREEN, 1, cv.LINE_AA)
                cv.polylines(frame,  [np.array([mesh_coords[p] for p in RIGHT_EYE ], dtype=np.int32)], True, utils.GREEN, 1, cv.LINE_AA)

            # calculating  frame per seconds FPS

            # writing image for thumbnail drawing shape
            # cv.imwrite(f'img/frame_{frame_counter}.png', frame)

            print(self.TOTAL_BLINKS)

        return self.TOTAL_BLINKS