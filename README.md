# Capstone B21 ML Path
This repository contain our work for the capstone project of Citizen, to create a model to detect an Indonesian License Plate and read the plate using OCR 

We Trained the model using the Tensorflow Object Detection API to do transfer learning from pre trained network provided by the tensorflow

![Test](https://puu.sh/HNsOv/8148e0e2d9.png)


### Using the Model

To use the model you can run the `test-model.ipynb` inside the `training_models` folder

Requirement :
1. Tensorflow 2.2.0
2. Tensroflow Object Detection API (you need to install this manually)

Currently we don't have an endpoint API Implementation yet
## Datasets
we have gathered various dataset and trained the model using various combination, for the dataset without label, we labelled them manualy using labelImg tool, you can find the label in the annotation folder

| Datasets Name                                                                                                                                                             | Annotation |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| [Caltech](http://www.vision.caltech.edu/Image_Datasets/cars_markus/)                                       | ❌         |
| [EnglishLP](http://www.zemris.fer.hr/projects/LicensePlates/english/results.shtml)               | ❌         |
| [AOLP](https://github.com/AvLab-CV/AOLP)                                                                                            | ❌         |
| [Indonesian Plate Number Plate number of Indramayu](https://www.kaggle.com/imamdigmi/indonesian-plate-number) | ✔          |
| [UFPR-ALPR](https://web.inf.ufpr.br/vri/databases/ufpr-alpr/)                                                         | ✔          |
| [Open Image Dataset V6](https://storage.googleapis.com/openimages/web/index.html)                                                                                         | ✔          |
| EuropeLP/[Car License Plate Detection (Kaggle)](https://www.kaggle.com/andrewmvd/car-plate-detection)                                                                     | ✔          |

<sup>1</sup> <sup>The UFPR-ALPR Dataset is not used in the training</sup>

## Preparing Dataset
Aside from labelling the image manually we also need to convert the dataset TFRecord dataset type, as the TFOD API Require that specific dataset type
we are using script provided by this following repository 
- [godpp/detection\_util\_scripts: TF and YOLO utility scripts (github.com)](https://github.com/godpp/detection_util_scripts)

## Training the models

We decided to do Transfer Learning from existing model (`SSD MobileNet V2 FPNLite 320x320`) that provided by tensorflow team
- [models/tf2\_detection\_zoo.md at master · tensorflow/models (github.com)](https://github.com/tensorflow/models/blob/master/research/object_detection/g3doc/tf2_detection_zoo.md)

| Custom Model Name                                   | Caltech | AOLP | IndonesianLP | UFPR-ALPR | OIDV6 | EuropeLP | EnglishLP |
| --------------------------------------------------- | ------- | ---- | ------------ | --------- | ----- | -------- | --------- |
| Custom_SSDmobilenet                                 |         |      |              |           | ✔     |          |           |
| Custom_SSDmobilenet_CirebonLP                       |         |      | ✔            |           |       |          |           |
| Custom_SSDmobilenet_CirebonLP_with_EnglisLP-Caltech | ✔       |      | ✔            |           |       |          | ✔          |
| Custom_SSDmobilenet_Europe                          |         |      |              |           |       |    ✔      |           |
| Custom_SSDmobilenet_Various                         |       ✔  | ✔     |              |           |       |   ✔       |  ✔         |
| Custom_SSDmobilenet_Various_OIDV6                   |        ✔ |  ✔    |              |           | ✔      |   ✔       |  ✔         |
| custom-resnet50-retinanet-640                       |         |      |              |           |   ✔    |          |           |
| custom-resnet50-retinanet-640-v2                    |         |      |              |           |   ✔    |          |           |

We used various combination of dataset to train our model, to achieve best result, and decided to use the `Custom_SSDmobilenet_Various_OIDV6` as this is the best model trained that can predict bounding box properly on our own license plate

## OCR
Not yet implemented

The plan is to take the coordinate that predicted from the model and then crop it and feed the image to EasyOCR
