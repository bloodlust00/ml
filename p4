import pandas as pd

# Load CSV
df = pd.read_csv("training_dataset.csv")
print(df)

# Get number of columns
columnLength = df.shape[1]

# Initialize
h = ['0'] * (columnLength - 1)
hp = []   # Positive examples
hn = []   # Negative examples

# Separate positive and negative examples
for trainingExample in df.values:
    if str(trainingExample[-1]).strip().lower() == 'yes':
        hp.append(list(trainingExample))
    else:
        hn.append(list(trainingExample))

# Build maximally specific hypothesis
for i in range(len(hp)):
    for j in range(columnLength - 1):
        if h[j] == '0':
            h[j] = hp[i][j]
        elif h[j] != hp[i][j]:
            h[j] = '?'

# Display results
print('\nThe positive Hypotheses are\n')
print(hp)

print('\nThe negative Hypotheses are')
print(hn)

print('\nThe Maximally Specific Hypothesis h is')
print(h)
