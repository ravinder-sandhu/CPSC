#!/usr/bin/python

import pandas as pd
import numpy as np
df = ''
df = pd.read_csv('flightdelays.csv')

df1 = df[df['Origin'] == 'SFO']
df2 = df1[['Origin','ArrDelay']][:3]
df2.to_csv("first3sfo1.csv",index=False)
