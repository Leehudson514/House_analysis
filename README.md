# House_analysis


## Overview
* The purpose of this analysis is to extract data from zillow on housing rental prices within the united states to determine where the most affordable place to rent is as well as to predict future renting prices.
* Goal is to create a tool so investors can determine the best geographical regions to put their equity.
## Results

* Problem Statement:
    * Rapid increase in American housing prices which is decreasing housing affordablity and overall quality of life for the average working american. 
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
* 

## Dashboard
* Created an interactive map using Tableau Public that will allow investors to pinpoint potential markets that will have high return on investments.
* Tableau Investor Tool:https://public.tableau.com/app/profile/lee.hudson/viz/InvestorUSAHousingTool/USAHousingOverview?publish=yes

![goals](https://github.com/Leehudson514/House_analysis/blob/main/Resources/photos/map.png)

## Summary

Data Source: https://www.zillow.com/research/data/

Slides: https://docs.google.com/presentation/d/1yvhs2nej9Mj-ebhnq9GAcBj3cU6fFodopAkSDIezXXM/edit#slide=id.p


