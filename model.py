import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_squared_error

dataset_path = "archive/tmdb_5000_movies.csv"  
df = pd.read_csv(dataset_path)

X = df[['budget', 'popularity', 'vote_average']] 
y = df['revenue']  

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

model = LinearRegression()

model.fit(X_train, y_train)