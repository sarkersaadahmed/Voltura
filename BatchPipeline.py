print("this is a batch pipeline")
import pandas as pd

def batch_pipeline():
    df = pd.read_csv("data.csv")
    df["clean_col"] = df["col"].str.lower()
    df.to_csv("clean_data.csv", index=False)

batch_pipeline()
