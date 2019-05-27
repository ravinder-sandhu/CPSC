#!/usr/bin/python

import pandas as pd
import numpy as np
df = ''
df = pd.read_csv('flightdelays.csv')

print('\nExcluding Cancelled flights\n')
print(df[df['Cancelled'] == 0]['Dest'].value_counts().head(3))

print('\nExcluding Cancelled flights\n')
print(df['Dest'].value_counts().head(3))
