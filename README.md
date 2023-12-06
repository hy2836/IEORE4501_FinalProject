# IEORE4501 Final Project

### Project Group 23

### UNIs: [xz3250, hy2836]

### Description: New York City Apartment Hunt with a Green Twist
#### 1. Project Overview
Our apartment lease ends on December 31st, 2023, and Xinyue and I need to find a new apartment in New York City. We have set a budget and prefer to live in a neighborhood that is quiet with a lot of greenery. As part of the final project for IEOR E4501: Tools For Analytics, my teammate and I are tasked with creating a Jupyter notebook that will help us find a great area to live within our preferences. Leveraging the power of data analysis and visualization, we aim to simplify your apartment-hunting process by providing insightful information about various neighborhoods in NYC.

#### 2. Data Sources and Methodology
To achieve this, we will integrate and analyze data from multiple sources:

[**Zillow’s Historic Rent**](https://drive.google.com/file/d/19h6qhJHjxyyNd4DML7pbf1pJGavQed0s/view?usp=sharing): This dataset provides us with information about the average rent prices across the United States of America. We are interested in the rent prices in New York City. This information is relevant to our understanding of the rent dynamics in finding options within our budget.

**NYC Open Data**: We will utilize two datasets from this source:

[311 Complaints Data](https://data.cityofnewyork.us/Social-Services/311-Service-Requests-from-2010-to-Present/erm2-nwe9): The 311 complaints dataset helps us gauge the level of noise and the types of complaints prevalent in different neighborhoods of New York City. A lower number of noise-related complaints can be indicative of a quieter area.

[2015 Tree Data](https://data.cityofnewyork.us/dataset/2015StreetTreesCensus_TREES/5rq2-4hqu): The density of trees can be indicative of a more serene environment. This dataset helps us identify areas with abundant greenery.

[**NYC Zip Code**](https://drive.google.com/drive/folders/1P89KAFAUAHVZsEcyDYVfD1L7pMeGBvIO?usp=sharing): This dataset provides all the zip codes as part of New York City. This allows us to correctly select the New York City area across the other three datasets above and prevent any confusion as to which counties and areas are part of New York City.

#### 3. Implementation Steps
**Data Acquisition**: We import the four datasets as mentioned above using APIs while ensuring we have the most relevant data, where we apply the method that allow to download the large dataset.

**Database Connection**: The data is stored in an SQL database. This helps efficiently manage the data and perform complex queries to extract meaningful insights.

**Data Cleaning and Preprocessing**: Essential for ensuring the quality and reliability of our analysis. This step involves handling missing values, filtering irrelevant data, and structuring the data for easy access and analysis.

**SQL Queries Construction**: We construct and execute a series of SQL queries to explore and compare rent prices, the density of trees, and the frequency of complaints across different zip codes and time frames.

**Data Visualization**: Utilizing various visualization tools, we create graphical representations of the data. This includes:

+ Rent trend graphs to understand the budget requirements for different neighborhoods.
+ Maps that highlight the density of greenery and the frequency of complaints, thus giving a visual representation of the quieter and greener neighborhoods.
+ Comparative analyses to juxtapose rent trends with greenery and noise levels.

#### 4. Decision-Making Support
The culmination of this project will be a comprehensive code encompassing all the steps from data acquisition to visualization. This will serve as a decision-making tool to identify neighborhoods that are not just within your budget but also align with our desire for a quiet environment rich in greenery. By the end of this project, we will have a clear and data-backed understanding of the best possible areas in NYC to rent our next apartment.