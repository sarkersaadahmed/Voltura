import time
import pandas as pd

def stream_pipeline():
    while True:
        df = pd.read_csv("incoming_data.csv")
        df["clean_col"] = df["col"].str.lower()

        df.to_csv("stream_output.csv", index=False)
        time.sleep(5)   # 5 seconds

stream_pipeline()
