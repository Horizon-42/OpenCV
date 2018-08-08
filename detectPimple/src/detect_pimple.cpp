#include <iostream>
#include <string>
#include <vector>
#include <opencv2/opencv.hpp>
#include <opencv2/calib3d/calib3d.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/xfeatures2d.hpp>

using namespace std;
using namespace cv;

cv::Mat getFaceMask(const cv::Mat &image, const std::string &detectXMLFileName);
const std::string detectXML = "./lbp/lbpcascade_frontalface_improved.xml";
int main(int argc, char **argv)
{
    cv::Mat face_bgr = imread("./res/face2.png");
    if (!face_bgr.data)
    {
        cout << "Read Image ERROR!" << endl;
        exit(-1);
    }
    cv::pyrDown(face_bgr, face_bgr);

    cv::Mat face_mask = getFaceMask(face_bgr, detectXML);
    cv::Mat face_gray;
    cv::cvtColor(face_bgr, face_gray, cv::COLOR_BGR2GRAY);

    Ptr<Feature2D> f2d = xfeatures2d::SIFT::create();

    vector<KeyPoint> keyPoints;
    f2d->detect(face_gray, keyPoints, face_mask);

    drawKeypoints(face_bgr, keyPoints, face_bgr, Scalar::all(-1));

    imwrite("KeyPoints.png", face_bgr);
    imshow("KeyPoints.png", face_bgr);
    // Mat descriptors;
    // f2d->compute(face_gray, keyPoints, descriptors);

    cv::waitKey(0);
    return 0;
}

cv::Mat getFaceMask(const cv::Mat &image, const std::string &detectXMLFileName)
{
    cv::Mat image_gray;
    cvtColor(image, image_gray, cv::COLOR_BGR2GRAY);
    cv::equalizeHist(image_gray, image_gray);

    cv::CascadeClassifier face_cascade;

    if (!face_cascade.load(detectXMLFileName))
    {
        std::cout << "Load haarcascade_frontalface_alt2.xml failed!" << std::endl;
        return cv::Mat::zeros(cv::Size(2, 2), CV_8UC1);
    }
    std::vector<cv::Rect> faceRect;

    face_cascade.detectMultiScale(image_gray, faceRect, 1.1, 2, 0 | CV_HAAR_SCALE_IMAGE, cv::Size(40, 40));

    cv::Mat face = image(faceRect[0]);
    cv::namedWindow("Face", cv::WINDOW_GUI_NORMAL);
    cv::imshow("Face", face);
    cv::Mat mask = Mat::zeros(image.size(), CV_8UC1);
    mask(faceRect[0]).setTo(255);
    return mask;
}