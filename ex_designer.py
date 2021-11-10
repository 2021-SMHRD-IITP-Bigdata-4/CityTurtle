import sys
from PyQt5.QtWidgets import *

from PyQt5 import uic
from PyQt5.QAxContainer import *
from PyQt5.QtGui import *
from PyQt5.QtGui import QImage,QPixmap
from PyQt5.QtWidgets import QDialog, QApplication
from PyQt5 import QtGui
from PyQt5.QtCore import *
from PyQt5 import QtCore

import cv2
import dlib
import mediapipe as mp
import numpy as np
import time
from PIL import ImageFont, ImageDraw, Image
import math

import pose_detection_distance
from eye_blink import eye_blink

import pymysql as pms
import matplotlib as plt
import ex_mysql



form_class = uic.loadUiType('Main11.ui')[0]

mp_drawing = mp.solutions.drawing_utils
mp_holistic = mp.solutions.holistic

detector = dlib.get_frontal_face_detector()

RIGHT_SIDE = [11, 9]
LEFT_SIDE = [10, 12]

prev_time = 0
neck_count = 0

font = ImageFont.truetype("C:/Windows/Fonts/batang.ttc", 25)
sticker_image1 = cv2.imread('turtleface2.png', cv2.IMREAD_UNCHANGED)
sticker_image = sticker_image1.copy()
sticker_image[:, :, :3] = cv2.cvtColor(sticker_image1, cv2.COLOR_BGR2RGB)
preditor = dlib.shape_predictor('shape_predictor_5_face_landmarks.dat')
sticker_img1 = cv2.imread('redeye.png', cv2.IMREAD_UNCHANGED)
sticker_img = sticker_img1.copy()
sticker_img[:, :, :3] = cv2.cvtColor(sticker_img1, cv2.COLOR_BGR2RGB)

#sticker_img = cv2.cvtColor(sticker_img, cv2.COLOR_BGR2RGB)

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
        print(e)
        return 0


class Thread_while(QThread):
    def __init__(self,parent, cap):
        super().__init__(parent)
        self.parent = parent
        self.cap = cap
    def run(self):
        distance = pose_detection_distance.collect_distance(self.cap)
        print(distance)
        start_time = time.time()
        blink = eye_blink()
        #self.parent.label_7.setText("asd")
        with mp_holistic.Holistic(min_detection_confidence=0.5,
                                  min_tracking_confidence=0.5) as holistic:
            # 비디오가 열렸다면
            while self.cap.isOpened():
                ret, image = self.cap.read()
                if not ret:
                    print(ret)
                    #continue
                current_time = time.time() - prev_time
                blink_count = blink.blink_count(image)
                image = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)
                # h, w, c = image.shape
                # qImg = QtGui.QImage(image.data, w, h, w * c, QtGui.QImage.Format_RGB888)
                # pixmap = QtGui.QPixmap.fromImage(qImg)
                # self.parent.label_7.setPixmap(pixmap)
                image = cv2.resize(image, None, fx=1.0, fy=1.0, interpolation=cv2.INTER_CUBIC)
                dets = detector(image)
                # 비디오가 로딩되지 않았다면
                #if ret:
                    #image = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)
                    #h, w, c = image.shape

                #else:
                    #print("비디오 읽기 실패")
                    #cap.release()
                    #cv2.destroyAllWindows()
                    #continue

                #image = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)
                # 성능 향상을 위해 선택적으로 이미지 쓰기 불가로 표시
                image.flags.writeable = False
                results = holistic.process(image)

                # 이미지에 랜드마크 표시 (얼굴, 왼손, 오른손, 동작)
                image.flags.writeable = True
                #image = cv2.cvtColor(image, cv2.COLOR_RGB2BGR)

                if results.pose_landmarks:
                    mesh_coords = landmarksDetection(image, results, False)
                    ratio = blinkRatio(image, mesh_coords, RIGHT_SIDE, LEFT_SIDE)
                    print(distance)
                    print(ratio)

                    if ratio <= distance * 0.8:
                        for det in dets:
                            try:
                                x1 = det.left() - 40
                                y1 = det.top() - 50
                                x2 = det.right() + 40
                                y2 = det.bottom() + 30

                                overlay_img = sticker_image.copy()

                                overlay_img = cv2.resize(overlay_img, dsize=(x2 - x1, y2 - y1))
                                print(overlay_img.shape)
                                overlay_alpha = overlay_img[:, :, 3:4] / 255.0
                                background_alpha = 1.0 - overlay_alpha

                                image[y1:y2, x1:x2] = overlay_alpha * overlay_img[:, :, :3] + background_alpha * image[
                                                                                                                 y1:y2,
                                                                                                                 x1:x2]
                            except Exception as e:
                                print(e)
                        print("거북목입니다!")
                        img_pil = Image.fromarray(image)
                        #화면에 텍스트 띄우기
                        #fontpath = "fonts/gulim.ttc"
                        ##font = ImageFont.truetype(fontpath, 50)
                        #mg_pil = Image.fromarray(image)
                        #draw = ImageDraw.Draw(img_pil)
                        #draw.text((350, 7), "거북목입니다.", font=font, fill=(255, 255, 255))
                        #image = np.array(img_pil)

                    if time.time() - start_time >= 60:
                        start_time = time.time()
                        blink_count = 0
                    elif blink_count < 20:
                        for det in dets:
                            shape = preditor(image, det)
                            try:
                                x1 = det.left()
                                y1 = det.top()
                                x2 = det.right()
                                y2 = det.bottom()

                                # compute eyes coordinates
                                eyes_x1 = shape.parts()[2].x - 13
                                eyes_x2 = shape.parts()[0].x + 13

                                h, w, c = sticker_img.shape

                                eyes_w = eyes_x2 - eyes_x1
                                eyes_h = int(h / w * eyes_w)

                                center_y = (shape.parts()[0].y + shape.parts()[2].y) / 2

                                eyes_y1 = int(center_y - eyes_h / 2)
                                eyes_y2 = eyes_y1 + eyes_h

                                # overlay eyes
                                overlay_img = sticker_img.copy()
                                overlay_img = cv2.resize(overlay_img, dsize=(eyes_w, eyes_h))

                                overlay_alpha = overlay_img[:, :, 3:4] / 255.0
                                background_alpha = 1.0 - overlay_alpha

                                image[eyes_y1:eyes_y2, eyes_x1:eyes_x2] = overlay_alpha * overlay_img[:, :,
                                                                                          :3] + background_alpha * image[
                                                                                                                   eyes_y1:eyes_y2,
                                                                                                                   eyes_x1:eyes_x2]

                            except:
                                pass
                h, w, c = image.shape
                qImg = QtGui.QImage(image.data, w, h, w * c, QtGui.QImage.Format_RGB888)
                pixmap = QtGui.QPixmap.fromImage(qImg)
                self.parent.label_7.setPixmap(pixmap)



class MainWindow(QMainWindow, form_class):
    def __init__(self):
        super().__init__()
        self.setUI()

        self.pushButton_3.clicked.connect(self.STARTClick)
        self.pushButton_4.clicked.connect(self.STOPClick)


    def setUI(self):
        self.setupUi(self)

    def STARTClick(self):
        self.cap = cv2.VideoCapture(0)
        #print(self.label_7)
        begin = Thread_while(self, self.cap)
        self.begin = begin;
        begin.start()

        #begin.run()
        #self.label_7.setPixmap(begin.run().pixmap)

    def STOPClick(self):
        cap = self.begin.cap
        cap.release()

if __name__ == '__main__':
    print('hello world');
    app = QApplication(sys.argv)
    myApp = MainWindow()
    myApp.show()
    app.exec_()