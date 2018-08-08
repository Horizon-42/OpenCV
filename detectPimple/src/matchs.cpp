#include <iostream>
#include <string>
#include <vector>
#include <opencv2/opencv.hpp>
#include <opencv2/calib3d/calib3d.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/xfeatures2d.hpp>

using namespace std;
using namespace cv;

cv::Mat getFace(const std::string &imageName, const std::string &detectXMLFileName);
const std::string detectXML = "./lbp/lbpcascade_frontalface_improved.xml";
int main(int argc, char **argv)
{
    cv::Mat c_face0 = getFace("./res/face2.png", detectXML);
    cv::Mat c_face1 = getFace("./res/face1.png", detectXML);
    cv::Mat face0, face1;
    cv::cvtColor(c_face0, face0, cv::COLOR_BGR2GRAY);
    cv::cvtColor(c_face1, face1, cv::COLOR_BGR2GRAY);

    Ptr<Feature2D> f2d = xfeatures2d::SIFT::create();

    vector<KeyPoint> keyPoints0, keyPoints1;
    f2d->detect(face0, keyPoints0);
    f2d->detect(face1, keyPoints1);

    Mat descriptors0, descriptors1;
    f2d->compute(face0, keyPoints0, descriptors0);
    f2d->compute(face1, keyPoints1, descriptors1);

    BFMatcher matcher;
    vector<DMatch> matches;
    matcher.match(descriptors0, descriptors1, matches);

    Mat face_matches;
    drawMatches(face0, keyPoints0, face1, keyPoints1, matches, face_matches);
    imwrite("./res/match1.png", face_matches);
    pyrDown(face_matches, face_matches);
    // pyrDown(face_matches, face_matches);
    namedWindow("MATCH", WINDOW_KEEPRATIO);
    imshow("MATCH", face_matches);
    cv::waitKey(0);
    return 0;
}

cv::Mat getFace(const std::string &imageName, const std::string &detectXMLFileName)
{
    cv::Mat image_gray, image;

    image = cv::imread(imageName);
    if (!image.data)
    {
        std::cout << "--(!)Error reading images" << std::endl;
        exit(-1);
    }
    cv::pyrDown(image, image);

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
    cv::namedWindow(imageName, cv::WINDOW_GUI_NORMAL);
    cv::imshow(imageName, face);

    return face;
}