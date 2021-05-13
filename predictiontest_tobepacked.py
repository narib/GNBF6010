#used for load model weight and predict
#!/usr/local/bin/python
#seqlen=9; allele type=A0101_9
import os
import sys
import csv
import numpy as np
import pandas as pd
from class_Model import ModelDemo
import visualkeras

#from numpy.random import seed
from random import choices

seed = 1171
np.random.seed(seed)

#Create model
model_class = ModelDemo()


import argparse
parser = argparse.ArgumentParser(description='manual to this script')
parser.add_argument('--binder_xlsx', type=str, default = None)
parser.add_argument('--alleletxt', type=str, default=None)
parser.add_argument('--savedir', type=str, default=None)
parser.add_argument('--modelweight_dir', type=str, default=None)
parser.add_argument('--CustomCSVInput',type=str,default=None)
args = parser.parse_args()
print(args.binder_xlsx)
print(args.alleletxt)
print(args.CustomCSVInput)
inputfile = args.CustomCSVInput

allelelist = []
x_pred = []
y_label = []
binders = []
org_allelelist = []

with open(inputfile,'r') as file:
    for line in file.readlines():
        ylab, allel, pep   = line.strip().split(',')
        y_label.append(int(ylab))
        x = allel.replace("HLA-", "").replace(":","")
        org_allelelist.append(allel)
        allelelist.append(x)
        binders.append(pep)
        x_pred.append(list(pep))


###load data###
#binder_xlsx = args.binder_xlsx#load DFCI-5283-9.xlsx data to evaluate
#/lustre/wmy/Project/data/data_MSi/data_evaluate/DFCI-5283-9.xlsx
#alleletxt  = args.alleletxt #['A0101_9.1.h5','A0201_9.1.h5','B0702_9.1.h5','B0801_9.1.h5','C0701_9.1.h5','C0702_9.1.h5']
modelweight_dir = args.modelweight_dir #/lustre/wmy/Project/data/from_Prof.Sun/9mer_k=99/models/
#savedir = args.savedir#/lustre/wmy/Project/Project-Pan_Allele/predict_function/

# with open(alleletxt, "r") as f:q
#     allelelist = f.read().split('\n')
#     #print(allelelist)
print('Alleles to be predictied: ',allelelist)

cutoff_Pvalue=0.2

#df_binders=pd.read_excel(binder_xlsx)# for test,nrows = 100
#binders=df_binders['Peptide'].tolist()  ##generate list of peptides
#print('len of binders:',len(binders))


#x_pred=[list(p) for p in binders]# to be predicted peptides
print(x_pred)
#y_label=[1] * len(binders) # to be predicted peptides label
print(y_label)

file_prefix = inputfile.split('/')
outfilename = file_prefix[-1] + 'result.csv'
f = open(outfilename,'a')

for j in range(len(allelelist)):
    try:
        modelweight=str(modelweight_dir)+allelelist[j]+'_9.4.h5' #use the firth weight of the 5fold CV
        print(modelweight)
        print([x_pred[j]])
        #allelelist=['A0101_9.1.h5','A0201_9.1.h5','B0702_9.1.h5','B0801_9.1.h5','C0701_9.1.h5','C0702_9.1.h5']
        y_pred=model_class.predict([x_pred[j]],modelweight)
        print(y_pred)
        print(type(y_pred.flatten()))
        print(y_pred.shape)
        print(np.zeros(1))



        df_ppv=pd.DataFrame({"HLA-Allele":org_allelelist[j],"peptides":binders[j],"y_label" : y_label[j], "y_pred" : y_pred.flatten()})
        df_ppv['pred_label'] = ''
        print("df_PPV:",df_ppv)
        print(y_pred)


        df_ppv['pred_label'] = df_ppv.y_pred.apply(lambda x: 1 if x > cutoff_Pvalue else 0)
        print(df_ppv)
        f.write(df_ppv.to_csv())
    except:
        print(f'Error: Predicting binding of {org_allelelist[j]} and {binders[j]}')
        df_ppv = pd.DataFrame({"HLA-Allele": org_allelelist[j], "peptides": binders[j], "y_label": y_label[j],"y_pred":np.zeros(1)})
        df_ppv['pred_label'] = '0'
        f.write(df_ppv.to_csv())


    #df_ppv.to_csv(str(savedir)+allelelist[j]+'.csv')

f.close()


