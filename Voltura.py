import requests
import pandas as pd
from datetime import datetime
import yfinance as yf
import pyodbc
from nytimesarticle import articleAPI
import logging
from apscheduler.schedulers.blocking import BlockingScheduler
from newsapi import NewsApiClient
import feedparser

logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')
logger = logging.getLogger(__name__)

# -------------------------
# DATABASE CONNECTION AND I USED MICROSOFT SQL SERVER 2019 VERSION
# -------------------------
def get_db():
    conn = pyodbc.connect(
        'DRIVER={ODBC Driver 17 for SQL Server};'
        'SERVER=SARKER\\SQLEXPRESS01;'
        'DATABASE=Voltura_basic;'
        'Trusted_Connection=yes;'
    )
    return conn, conn.cursor()

# -------------------------
#  I BEG YOU PLEASE THE ONE UDNERNEATH THIS FUCKING CODE IS CRYPTO ASSETS
# -------------------------
def BoughtCrypto(name, symbol, buy_price, quantity, purchased_at):
    conn, cursor = get_db()

    cursor.execute("""
        INSERT INTO BoughtCryptoBeginner (Name, Symbol, BuyPrice, Quantity, PurchasedAt)
        VALUES (?, ?, ?, ?, ?)
    """, (name, symbol, buy_price, quantity, purchased_at))

    conn.commit()
    conn.close()
    logger.info(f"Inserted Crypto: {name}, {symbol}, {buy_price}, {quantity}, {purchased_at}")

# -------------------------
#  I BEG YOU PLEASE THE ONE UDNERNEATH THIS FUCKING CODE IS ETF ASSETS
# -------------------------
def ETFAssets(ticker, buy_price, quantity, purchased_at):
    conn, cursor = get_db()

    cursor.execute("""
        INSERT INTO ETFAssetsBeginner (Ticker, BuyPrice, Quantity, PurchasedAt)
        VALUES (?, ?, ?, ?)
    """, (ticker, buy_price, quantity, purchased_at))

    conn.commit()
    conn.close()
    logger.info(f"Inserted ETF: {ticker}, {buy_price}, {quantity}, {purchased_at}")

# -------------------------
#  I BEG YOU PLEASE THE ONE UDNERNEATH THIS FUCKING CODE IS FOREX ASSETS
# -------------------------
def ForexAssets(pair, buy_price, quantity, purchased_at):
    conn, cursor = get_db()

    cursor.execute("""
        INSERT INTO ForexAssetsBeginner (Pair, BuyPrice, Quantity, PurchasedAt)
        VALUES (?, ?, ?, ?)
    """, (pair, buy_price, quantity, purchased_at))

    conn.commit()
    conn.close()
    logger.info(f"Inserted Forex: {pair}, {buy_price}, {quantity}, {purchased_at}")

# -------------------------
# I BEG YOU PLEASE THE ONE UDNERNEATH THIS FUCKING CODE IS STOCK ASSETS
# -------------------------
def StockAssets(ticker, buy_price, quantity, purchased_at):
    conn, cursor = get_db()

    cursor.execute("""
        INSERT INTO StocksAssetBeginner (Ticker, BuyPrice, Quantity, PurchasedAt)
        VALUES (?, ?, ?, ?)
    """, (ticker, buy_price, quantity, purchased_at))

    conn.commit()
    conn.close()
    logger.info(f"Inserted Stock: {ticker}, {buy_price}, {quantity}, {purchased_at}")
    
    
    conn.commit()
    conn.close()
    logging.info("Microsoft SQL database initialized.")


#--------------------------------------------------------
# NOW WE WILL EXTRACT SPECIFIC DATAS FROM A CRYPTOCURRENCY API
# NOW WE WILL EXTRACT SPECIFIC DATAS FROM A CRYPTOCURRENCY API
# PLEASE DO NOT CHANGE PLEASE DO NOT CHANGE I AM FUCKIGN BEGGING YOU
# PLEASE DO NOT CHANGE PLEASE DO NOT CHANGE I AM FUCKIGN BEGGING YOU
#---------------------------------------------------------

def extract_crypto_data(coins=None, currencies=None):
    

