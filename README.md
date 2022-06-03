# House_analysis


## Overview
* The purpose of this analysis is to extract data from zillow on housing rental prices within the united states to determine where the most affordable places are to rent and buy a home is as well as to attempt to predict future prices.
* Additoanlly, the is to create a tool that investors can use to determine the best geographical regions within the United States to build equity.

## Results

* Problem Statement:
    * There has been a rapid increases in American housing prices which is decreasing housing affordability and overall quality of life for the average working american. 
    
* Desired Solution:
    * Identify the most affordable geographical regions to purchase a primary home and or investment property.
    
* Steps Taken: 
    * Extract data from source (Zillow.com)
        * Average rent by zipcode
        * Average home Value by zipcode
    * Extract data by state:
        * Population
        * Income per person
    * Clean data using python
        * Used jupyter notebook:
           * Drop null values
           * Switch data from wide to long
           * Formated data & columns
    * Created **database** using PGadmin
       * Uploaded data to database
       * Linked data together using zipcode as the primary key
       * Connected static data on income and population by state

![goals](https://github.com/Leehudson514/House_analysis/blob/main/Resources/photos/database.png)

## Machine Learning  
* ✓ Description of preliminary data preprocessing?
Initially, we had to limit the number of columns to make it as compact of a data source as possible. Eliminating some of the less insightful columns that will no longer be needed down the road. After some cleansing, we were able to extract the items that were essential to making our dataset robust. 


✓ Description of preliminary feature engineering and preliminary feature selection, including their decision-making process?
Some of the preliminary feature engineerings we were able to select from the variable are "rent", "homevalue" and "zipcode" because we are basing our feature extraction on a geographic location and its duration over time.


✓ Description of how data was split into training and testing sets?
The data was split using sklearn.traing_test_split. Logistic regressions were used to test the initial test and are later compared with RandomOversamplfier. Determining the best method to move forward with the data that we have so we can provide the highest accuracy. 


✓ Explanation of model choice, including limitations and benefits?

Some of the advantages of logistic regression will be its easy implementation and very efficient to train. Also, it has the capabilities of extending to multinomial regression and a natural probabilistic view of the class predictions.
The limitations and disadvantages of logistic regression are the assumptions of the relationship between the dependent and independent variables.

✓ Explanation of changes in model choice (if changes occurred between the Segment 2 and Segment 3 deliverables)

During the 3rd deliverable, we were able to conclude that our initial approach to the data is no longer the best choice for continuous value and a regression model. While trying various model that best suits our hypothesis, we were able to narrow down between linear regression model. As well as a cluster model and using a boxplot to illustrate the relations between years and changes in rent.

<img width="545" alt="image" src="https://user-images.githubusercontent.com/92479644/171791441-37ce5926-9565-404c-8901-f07f95aab6b3.png">

✓ Description of how they have trained the model thus far, and any additional training that will take place
The model we have trained thus far is shown to have a coefficient that is positive and there is a distinct relation between the years of the house value and the rent. Upwards trends can be spotted.

<img width="430" alt="image" src="https://user-images.githubusercontent.com/92479644/171793948-5f03603b-16b2-475f-bb6f-eafa8a0e16a3.png">


## Dashboard
* Created an interactive map using Tableau Public that will allow investors to pinpoint potential markets that will have high return on investments.
* Tableau Investor Tool: https://public.tableau.com/app/profile/lee.hudson/viz/InvestorUSAHousingTool/USAHousingOverview?publish=yes

![goals](https://github.com/Leehudson514/House_analysis/blob/main/Resources/photos/map.png)

## Summary

Data Source: https://www.zillow.com/research/data/

Slides: https://docs.google.com/presentation/d/1yvhs2nej9Mj-ebhnq9GAcBj3cU6fFodopAkSDIezXXM/edit#slide=id.p


