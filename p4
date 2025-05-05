https://github.com/sjwhitworth/golearn/blob/master/examples/datasets/tennis.csv

import pandas as pd
import numpy as np
import io
df=pd.read_csv("training_dataset.csv")
print(df)
columnLength=df.shape[1]
print(df)
h=['0']*(columnLength-1)
hp=[]
hn=[]
for trainingExample in df.values:
    if trainingExample[-1]!='no':
        hp.append(list(trainingExample)) 
    else: 
        hn.append(list(trainingExample)) 
 
for i in range (len(hp)):
    for j in range(columnLength-1): 
        if (h[j]=='0'): 
            h[j]=hp[i][j] 
        if (h[j]!=hp[i][j]):  
            h[j]='?'         
        else:         
            h[j]=hp[i][j] 
 
print('\nThe positive Hypotheses are\n') 
print(hp) 
print('\nThe negative Hypotheses are') 
print(hn) 

print('\nThe Maximally Specific Hypothesis h is') 
print(h)
