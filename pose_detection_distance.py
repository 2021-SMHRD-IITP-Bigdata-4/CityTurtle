import cv2
import mediapipe as mp
import utils, math
import time

# 그리기와 다기능(얼굴, 왼손, 오른손, 동작) 추출기 라이브러리 가져오기
mp_drawing = mp.solutions.drawing_utils
mp_holistic = mp.solutions.holistic

RIGHT_SIDE = [11, 9]
LEFT_SIDE = [10, 12]

def euclaideanDistance(point, point1):
    x, y = point
    x1, y1 = point1
    distance = math.sqrt((x1 - x) ** 2 + (y1 - y) ** 2)
    return distance

def landmarksDetection(img, results, draw=False):
    img_height, img_width = img.shape[:2]
    # list[(x,y), (x,y)....]
    mesh_coord = [(int(point.x * img_width), int(point.y * img_height)) for point in
                  results.pose_landmarks.landmark]
    if draw:
        [cv2.circle(img, p, 2, (0, 255, 0), -1) for p in mesh_coord]

    # returning the list of tuples for each landmarks
    return mesh_coord

def blinkRatio(img, landmarks, right_indices, left_indices):
    # Right eyes
    # diagonal line
    rh_right = landmarks[right_indices[0]]
    rh_left = landmarks[right_indices[1]]

    # Left eyes
    # diagonal line
    lh_right = landmarks[left_indices[0]]
    lh_left = landmarks[left_indices[1]]

    # horizon line
    h_top_r = landmarks[right_indices[0]]
    h_top_l = landmarks[left_indices[1]]

    h_bottom_r = landmarks[right_indices[1]]
    h_bottom_l = landmarks[left_indices[0]]

    # draw lines on right eyes
    #cv2.line(img, rh_right, rh_left, utils.GREEN, 2)
    #cv2.line(img, lh_right, lh_left, utils.GREEN, 2)
    # cv.line(img, rv_top, rv_bottom, utils.WHITE, 2)

    rhDistance = euclaideanDistance(rh_right, rh_left)
    lhDistance = euclaideanDistance(lh_right, lh_left)
    hDistance = euclaideanDistance(h_top_r, h_top_l)
    bDistance = euclaideanDistance(h_bottom_r, h_bottom_l)

    bottom = bDistance - hDistance
    triangle_bottom = bottom / 2

    try:
        height = math.sqrt((rhDistance ** 2) - (triangle_bottom ** 2))
        return height
    except Exception as e:
        return 0




def collect_distance(cap):
    # 비디오 캡처
    with mp_holistic.Holistic(min_detection_confidence=0.5,
                              min_tracking_confidence=0.5) as holistic:
        start = time.time()
        # 비디오가 열렸다면
        while cap.isOpened():
            ret, image = cap.read()
            # 비디오가 로딩되지 않았다면
            if not ret:
                cap.release()
                cap = cv2.VideoCapture(0)
                print("video x")
                #cv2.destroyAllWindows()
                continue

            image = cv2.resize(image, None, fx=1.0, fy=1.0, interpolation=cv2.INTER_CUBIC)

            image = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)
            # 성능 향상을 위해 선택적으로 이미지 쓰기 불가로 표시
            image.flags.writeable = False
            results = holistic.process(image)

            # 이미지에 랜드마크 표시 (얼굴, 왼손, 오른손, 동작)
            image.flags.writeable = True
            image = cv2.cvtColor(image, cv2.COLOR_RGB2BGR)

            if results.pose_landmarks:
                mesh_coords = landmarksDetection(image, results, False)
                distance = blinkRatio(image, mesh_coords, RIGHT_SIDE, LEFT_SIDE)

            # 랜드마크와 랜드마크를 연결하는 선 그리기
            #mp_drawing.draw_landmarks(image, results.face_landmarks,
            #                          mp_holistic.FACE_CONNECTIONS)
            #mp_drawing.draw_landmarks(image, results.pose_landmarks,
            #                          mp_holistic.POSE_CONNECTIONS)

            #cv2.imshow('Pose Detector', image)

            end = time.time()

            if cv2.waitKey(33) & 0xFF == 49 or end - start >= 5:
                #cap.release()
                #cv2.destroyAllWindows()
                print("종료")
                break

    #cap.release()
    return distance