import pandas as pd
import plotly.express as px

#Read Data from CSV file
data = pd.read_csv('gps_day.csv')

#Display Data
fig = px.scatter(data, x="28.688875833", y="-81.515212833", title="GPS Data")
fig.show()