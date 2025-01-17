#!/bin/sh
# */AIPND-revision/intropyproject-classify-pet-images/run_models_batch.sh
#                                                                             
# PROGRAMMER: Jennifer S.
# DATE CREATED: 02/08/2018                                  
# REVISED DATE: 02/27/2018  - 
# PURPOSE: Runs all three models to test which provides 'best' solution.
#          Please note output from each run has been piped into a text file.
#
# Usage: sh run_models_batch.sh    -- will run program from commandline within Project Workspace
#  
mkdir -p output_files
python check_images.py --dir pet_images/ --arch resnet  --dogfile dognames.txt > output_files/resnet_pet-images.txt
python check_images.py --dir pet_images/ --arch alexnet --dogfile dognames.txt > output_files/alexnet_pet-images.txt
python check_images.py --dir pet_images/ --arch vgg  --dogfile dognames.txt > output_files/vgg_pet-images.txt
