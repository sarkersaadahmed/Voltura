import websockets
import os
import requests
print("--------------------------------------")
print("general URL request example")

url = "https://api.github.com"

response = requests.get(url)
data = response.json()

print(data)

print("------------------------------------------------------------")
print("using an ACTUAL API key (in real life perspective)")

import requests
url - "https://api.openweathermap.org/data/2.5/weather"
 
headers = {
    "Authorization": "Bearer YOUR_API_KEY"

}
response = requests.get(url, headers=headers)
data = response.json()
print(data)

print("-----------------------------------------------------------")
print("Using Filteres when retrieving Data from an API")
import requests

url = "https://api.example.com/data"
params = {
    "SYMBOL": "AAPL",
    "limit": 100

}


response = requests.get(url, params=params)
data = response.json()
print(data)

print("------------------------------------------------------------")
print("save the extracted data to a CSV file")
import pandas as pd
df.to_csv("data.csv", index=False)

print("-------------------------------------------------------------")
print("saving a JSON file")
import json
json.dump(data, open("data.json", "w"))
