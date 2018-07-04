#bazel build -c opt //tensorflow/examples/android:tensorflow_demo
bazel build --cxxopt='--std=c++11' -c opt   //tensorflow/examples/android:tensorflow_demo
adb uninstall org.tensorflow.demo
adb install -r bazel-bin/tensorflow/examples/android/tensorflow_demo.apk
