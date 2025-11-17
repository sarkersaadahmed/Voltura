import requests
import pandas as pd
from datetetime import datetime

#we extracted every data from the provided URL
def batch_Extract():
    url - 'https://api.example.com/data'
    
    #parameters are only used if you want to restrict to specifc datasets"
    params = {
        "ids": "bitcoin"
        "vs_currency": "usd"
    }


    response = requests.get(url, params=params)
    
    df = pd.DataFram([{
        'date': datetime.now(),
        'data': response.json()
    }])

    return df

if __name__ == "__main__":
    data = batch_Extract()
    print(data)

