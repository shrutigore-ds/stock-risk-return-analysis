# 📊 Stock Risk & Return Analysis

An end-to-end financial data analytics project analyzing the historical risk and return characteristics of five major technology companies using **Python, SQL, Excel, and Power BI**.


## 📌 Project Overview

This project evaluates and compares the historical stock performance of:

- Amazon
- Apple
- Facebook (Meta)
- Google
- Microsoft

The analysis combines data preparation, financial calculations, SQL analysis, Python-based exploratory analysis, and an interactive Power BI dashboard to understand the relationship between **risk, return, and risk-adjusted performance**.


## 🎯 Business Objective

The objective is to compare the historical performance and risk characteristics of the selected companies using key financial metrics.

The analysis focuses on:

- Daily Returns
- Annualized Returns
- Annualized Volatility
- Sharpe Ratio
- Maximum Drawdown
- Trading Volume
- Closing Prices

> **Note:** The results describe historical performance in the supplied dataset and are not investment advice.

##🛠️ Tools & Technologies

| Tool | Purpose |
| Python | Data cleaning, analysis, and financial calculations |
| Pandas | Data manipulation and analysis |
| NumPy | Numerical calculations |
| Matplotlib | Data visualization |
| SQL | Data querying and financial analysis |
| Excel | Data preparation and validation |
| Power BI | Interactive dashboard and visualization |
| Jupyter Notebook / Google Colab | Python analysis environment |


## 📊 Power BI Dashboard

The Power BI dashboard provides an interactive comparison of the historical risk and return characteristics of Amazon, Apple, Facebook, Google, and Microsoft.

### Dashboard Preview

![Stock Risk & Return Dashboard](PowerBI/Dashboard975.png)

### Key Metrics

- Average Annualized Return
- Annualized Volatility
- Sharpe Ratio
- Maximum Drawdown
- Average Daily Return


## 📁 Project Structure

text
stock-risk-return-analysis/
│
├── Data/
│   └── FAANG_Combined_Data_Separated.xlsx
│
├── Python/
│   └── Stock_Risk_Return_Analysis.ipynb
│
├── SQL/
│   └── Stock_Risk_Return_Analysis.sql
│
├──├── PowerBI/
│   ├── Dashboard975.png
│   └── Stock_Risk_Return_Analysis.pbix
│
└── README.md


## 📊 Key Findings

The analysis of the five companies revealed the following historical patterns:

- **Amazon** recorded the highest annualized return among the selected companies, while also exhibiting relatively high volatility.
- **Microsoft** delivered strong returns with comparatively lower volatility than Amazon and Facebook.
- **Facebook** showed the highest annualized volatility and the deepest maximum drawdown, indicating relatively higher historical risk.
- **Amazon** achieved the highest Sharpe Ratio, suggesting the strongest historical risk-adjusted performance among the selected companies.
- **Google** demonstrated relatively lower volatility while maintaining positive annualized returns.
- **Amazon** also recorded the highest average daily return in the dataset.
- The comparison shows that higher returns were generally associated with higher levels of risk, highlighting the return-risk trade-off in technology stocks.

## 📊 Final Company Comparison

| Company | Average Daily Return | Annualized Return | Annualized Volatility | Sharpe Ratio | Maximum Drawdown |

| Amazon | 0.154% | 38.81% | 30.12% | 1.29 | -34.10% |
| Microsoft| 0.135% | 33.95% | 26.97% | 1.26 | -28.04% |
| Apple| 0.129% | 32.60% | 29.04% | 1.12 | -38.52% |
| **Google| 0.112% | 28.17% | 26.50% | 1.06 | -30.79% |
| Facebook| 0.104% | 26.13% | 31.53% | 0.83 | -42.96% |
