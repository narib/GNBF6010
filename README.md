# GNBF6010
Evaluation data &amp; scripts of Neoantigen Deep Learning Predictor for GBBF 6010 Research Project

The R script is based on based data accessed from All1234-predictionresultsv3.xlsx and ALL-DATASET_5_Resultsv2.xlsx
Make sure the working directory is correct. these excel are containing all evaluation datasets filtered out with error and non supported HLA types, only 9-mer.
All1234-predictionresultsv3.xlsx is the dataset 1, 2, 3 & 4 of all predictors and corresponding prediction results
ALL-DATASET_5_Resultsv2.xlsx is the dataset 5 of all predictors and corresponding prediction results

The python scripts:
1) test.py 
It is a modified version of the corresponding test.py in DeepSeqPan directory,under DeepSeqPan-master\DeepSeqPan-master\scripts\test.py
The modification was done such that the prediction will handle unsupported hla type and other related errors, all unsupported hla will be given score 0 for log_ic50

the input csv format may be as follow:
HLA-A*01:01 ESDPIVAQY
HLA-A*01:01 ATDALMSGF
HLA-A*01:01 GLDFSDLYY
HLA-A*01:01 LLDTASALY

2) predictiontest_tobepacked.py
This is modified Mis_Pro python script to execute prediction, this script may run with two arguments only.
first argument is --modelweight_dir, which is the 9-mer weight, please unzip in weight directory before execution.
second argument is --CustomCSVInput, this will specify the csv input file containing the HLA and peptide pair for prediction
The script will handle all unsupported HLA and give it 0 score for y_pred.
This script also do prediction each peptide and hla pair per line in input csv. Unlike original script where each peptide is predicted for all given hla types, essentialy reducing complexity and time.
the input csv format may be as follow:
1,HLA-A01:01,ESDPIVAQY
1,HLA-A01:01,ATDALMSGF
1,HLA-A01:01,GLDFSDLYY

#For doing prediction with bulk dataset such as dataset 2, it is advised to split the dataset into smaller batch, uses a shell script with for loop to run this python script for each smalller batch in succesion. This will avoid disruption from error in the middle of all execution, allow partial completion if one wants to exit after days of prediction run time. Try to modify the loop in renameScript.sh per your condition


3) example1.ipynb 
This is a modified prediction script for MHCFlurry. It is a notebook script that under MHCFlurry\mhcflurry-master\notebooks\example1.ipynb 
The first four cell input entries of original notebook was meant to demonstrate how to run MHCFlurry in notebook with a few example.
My modification is simple adding a fifth cell entry, it will take in csv (in below format), and predict each pair per line, output the prediction scores in output csv. It will also catch any unsupported hla or prediction error, and output in a seperate error prediction file.

the input csv format may be as follow:
ESDPIVAQY A*01:01
ATDALMSGF A*01:01
GLDFSDLYY A*01:01
LLDTASALY A*01:01

4) DeepHLApan, no script was modified, the input csv format may be as follow:
1,HLA-A01:01,ESDPIVAQY
1,HLA-A01:01,ATDALMSGF
1,HLA-A01:01,GLDFSDLYY
1,HLA-A01:01,LLDTASALY


5) unsupportedHLA.xlsx
All non supported hla type by each predictor were recorded in this excel in workhsheets.
The errornous hla type in original raw dataset also recorded in the excel as the last worksheet.

6) Linux Evaluation Journal
This is a journal of my evalation process. e.g. my testing commands, failures, error encountered, retries results etc.

File ALL1234-DATA-MiSv3.xlsx and ALL1234output_withExceptionHandling are examples of my results, may be ignored them! 
last updated 2021 May 22





