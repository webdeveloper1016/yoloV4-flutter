
# TensorFlow Lite Flutter Object Detection with YOLOv4 support
This is a fork version of the am15h/object_detection_flutter. If not for his flutter libraries and his repository. This could not be done. This has yolov4 support. To use your custom model, this requires you to use make changes to the image_conversions.dart file in the tflite_flutter_helper library. Simply copy and paste over the file with the code found here (my fork of his library):

https://github.com/TexMexMax/tflite_flutter_helper/blob/master/lib/src/image/image_conversions.dart

If you want to add your own model, remember to add the model and label file to the assets folder, and make the neccessary changes in classifierYolov4.dart (simply change the variables MODEL_FILE_NAME and LABEL_FILE_NAME).

In addition, using this article (https://medium.com/@hugand/capture-photos-from-camera-using-image-stream-with-flutter-e9af94bc2bee), I was able to make the conversion of the camera from YUV420 to RBG much faster incorporating C code.

Object Detection app built using [TFLite Flutter Plugin](https://github.com/am15h/tflite_flutter_plugin)
and [TFLite Flutter Helper Library](https://github.com/am15h/tflite_flutter_helper)

#### **Important**

* execute `install.sh`(linux) or `install.bat`(windows) for downloading tflite binaries.
More info [here](https://github.com/am15h/tflite_flutter_plugin#important-initial-setup).

## Demo 

![DEMO](object_detection_demo.gif)

<i>Shot on Pixel 4</i>

<b>The pre-built APK can be found [here](https://drive.google.com/file/d/1QRdq28doFegBL8x7daaZ5ivwXDjslfkg/view?usp=sharing).</b>

