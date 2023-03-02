import argparse
import cv2


cap = cv2.VideoCapture('/workspace/datasets/resize/h265/78864945_480x270_crf10.mp4')


print(cap.isOpened())
