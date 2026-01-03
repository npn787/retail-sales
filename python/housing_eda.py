import pandas as pd
import matplotlib.pyplot as plt

# Load the dataset (THIS MUST COME FIRST)
df = pd.read_csv("data/housing.csv")

# Display first rows
print("First 5 rows:")
print(df.head())

# Dataset info
print("\nDataset info:")
print(df.info())

# Check for missing values
print("\nMissing values per column:")
print(df.isnull().sum())

# Summary statistics
print("\nSummary statistics:")
print(df.describe())

# Average price by city
avg_price_city = df.groupby("city")["price"].mean()

print("\nAverage price by city:")
print(avg_price_city)

# Bar chart: Average price by city
avg_price_city.plot(kind="bar")
plt.title("Average House Price by City")
plt.xlabel("City")
plt.ylabel("Average Price")
plt.tight_layout()
plt.show()

# Scatter plot: Square footage vs price
plt.scatter(df["sqft"], df["price"])
plt.title("House Size vs Price")
plt.xlabel("Square Footage")
plt.ylabel("Price")
plt.tight_layout()
plt.show()
