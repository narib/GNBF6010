#!/bin/bash
echo "Hello World"

for filename in /media/sf_H_DRIVE/6010Project/test-DataForMiS/results/2-DeepHLA-3K.*result.csv;
do 
	echo "Now Predicting on "$filename 
#
	python /media/sf_H_DRIVE/6010Project/MiS/MiS-main/predict_function/predictiontest_tobepacked.py --binder_xlsx=/media/sf_H_DRIVE/6010Project/Mis/Mis-main/predict_function/peptide.xlsx --alleletxt=list_of_alleles3.txt  --modelweight_dir=/media/sf_H_DRIVE/6010Project/MiS/MiS-main/predict_function/weight/models/ --savedir=/media/sf_H_DRIVE/6010Project/MiS/MiS-main/predict_function/ --CustomCSVInput=$filename 
done

