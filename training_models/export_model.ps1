Write-output "Change Enviroment"
& 'C:\Users\gagah\Anaconda3\shell\condabin\conda-hook.ps1' ; conda activate 'C:\Users\gagah\Anaconda3'
conda activate tf220
cd "E:\Kuliah\Bangkit\Capstone\Tensorflow\Tensorflow"

python .\exporter_main_v2.py --input_type image_tensor --pipeline_config_path .\models\Custom_SSDmobilenet\pipeline.config --trained_checkpoint_dir .\models\Custom_SSDmobilenet\ --output_directory .\exported-models\Custom_SSDmobilenet

python .\exporter_main_v2.py --input_type image_tensor --pipeline_config_path .\models\Custom_SSDmobilenet_CirebonLP\pipeline.config --trained_checkpoint_dir .\models\Custom_SSDmobilenet_CirebonLP\ --output_directory .\exported-models\Custom_SSDmobilenet_CirebonLP

python .\exporter_main_v2.py --input_type image_tensor --pipeline_config_path .\models\Custom_SSDmobilenet_CirebonLP_with_EnglisLP-Caltech\pipeline.config --trained_checkpoint_dir .\models\Custom_SSDmobilenet_CirebonLP_with_EnglisLP-Caltech\ --output_directory .\exported-models\Custom_SSDmobilenet_CirebonLP_with_EnglisLP-Caltech

python .\exporter_main_v2.py --input_type image_tensor --pipeline_config_path .\models\Custom_SSDmobilenet_Europe\pipeline.config --trained_checkpoint_dir .\models\Custom_SSDmobilenet_Europe\ --output_directory .\exported-models\Custom_SSDmobilenet_Europe

python .\exporter_main_v2.py --input_type image_tensor --pipeline_config_path .\models\Custom_SSDmobilenet_Various\pipeline.config --trained_checkpoint_dir .\models\Custom_SSDmobilenet_Various\ --output_directory .\exported-models\Custom_SSDmobilenet_Various

python .\exporter_main_v2.py --input_type image_tensor --pipeline_config_path .\models\Custom_SSDmobilenet_Various_OIDV6\pipeline.config --trained_checkpoint_dir .\models\Custom_SSDmobilenet_Various_OIDV6\ --output_directory .\exported-models\Custom_SSDmobilenet_Various_OIDV6

python .\exporter_main_v2.py --input_type image_tensor --pipeline_config_path .\models\custom-resnet50-retinanet-640\pipeline.config --trained_checkpoint_dir .\models\custom-resnet50-retinanet-640\ --output_directory .\exported-models\custom-resnet50-retinanet-640

python .\exporter_main_v2.py --input_type image_tensor --pipeline_config_path .\models\custom-resnet50-retinanet-640-v2\pipeline.config --trained_checkpoint_dir .\models\custom-resnet50-retinanet-640-v2\ --output_directory .\exported-models\custom-resnet50-retinanet-640-v2