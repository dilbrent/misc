python3 -m tensorflow.python.tools.optimize_for_inference \
  --input=tf_files/retrained_graph.pb \
  --output=tf_files/optimized_graph.pb \
  --input_names="input" \
  --output_names="final_result"

python3 -m scripts.quantize_graph \
  --input=tf_files/optimized_graph.pb \
  --output=tf_files/rounded_graph.pb \
  --output_node_names=final_result \
  --mode=weights_rounded

cp tf_files/rounded_graph.pb ~/tensorflow/tensorflow/examples/android/assets/tensorflow_inception_graph.pb
cp tf_files/retrained_labels.txt ~/tensorflow/tensorflow/examples/android/assets/imagenet_comp_graph_label_strings.txt 

ls -al ~/tensorflow/tensorflow/examples/android/assets
