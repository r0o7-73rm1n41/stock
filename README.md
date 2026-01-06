# 🏦 Stock Price Tracker

Python script to track live stock prices for multiple stocks and log **every price fluctuation** in real time. Prices are saved into separate `.txt` files for each stock with **UP/DOWN direction flags**.

## 📂 Project Structure

STOCK/
└── bond/
├── bond.py # Main script
├── ETERNAL.NS.txt # Stock price log for ETERNAL.NS
├── VEDL.NS.txt # Stock price log for VEDL.NS
└── stock_tracker.log # Script logging (INFO & errors)

## ⚙️ Features

- Tracks **real-time stock prices** using `yfinance`.
- Logs **every price fluctuation** (UP/DOWN) with timestamps.
- Saves price changes in **separate TXT files** for each stock.
- Handles float rounding safely with `Decimal`.
- Enterprise-grade logging and error handling.
- Runs continuously in the background with configurable refresh interval.

## 🛠️ Requirements

- Python 3.10+
- Packages:
pip install yfinance

## ⚡ Configuration

Inside bond.py:

STOCKS = ["ETERNAL.NS", "VEDL.NS"]
INTERVAL = "1m"
PERIOD = "1d"
REFRESH_INTERVAL = 5

STOCKS: Stock symbols to track.
INTERVAL: Data interval (1m, 5m, 1h, etc.).
PERIOD: Historical period to fetch (today, 1d, 5d, etc.).
REFRESH_INTERVAL: How often script fetches latest prices.

## 📝 Usage

Run the tracker: python bond.py

- Logs initial prices.
- Tracks price changes and logs them in corresponding TXT files (ETERNAL.NS.txt, VEDL.NS.txt).
- Shows live logs in console and writes to stock_tracker.log.
- Stop the script anytime with Ctrl + C.

## 🔧 Logging

Console & File Logging: Live info printed to terminal and saved to stock_tracker.log.

Price Logs: Each stock has a TXT file logging:
HH:MM:SS,Price,UP/DOWN
14:30:15,150.25,UP

First entry is marked START.

## 💡 Notes

Safe handling for NaN or invalid prices.
Can easily scale to more stocks: just add symbols to STOCKS.
Handles exceptions and ensures program doesn't crash unexpectedly.
Ideal for personal tracking, research, or analytics pipelines.

## 🧑‍💻 Contributing

Fork the repo.
Make changes in a branch.
Test thoroughly.
Open a pull request.

## ⚖️ License
MIT License
