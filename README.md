LIFE SATISFACTION ANALYSIS

Project Overview:
This project analyzes the factors associated with life satisfaction across countries using R.
The analysis explores how factors such as gdp per capita,social support,life expectency,freedom,generosity,perception of corruption relate to reported happiness levels.


Objectives:

- Analyze the distribution of life satisfaction across countries.
- Identify the happiest and least happy countries.
- Explore relationships between happiness and different socioeconomic factors.
- Analyze correlations between the variables.
- Visualize the major factors associated with life satisfaction.

Dataset:
This project uses the World Happiness Report 2025 dataset, which provides country-level life satisfaction scores and their contributing factors.
The dataset contains a Life Evaluation (life satisfaction) score for each country, along with several components that explain the score. These components include:
- GDP per capita
- Social support
- Healthy life expectancy
- Freedom to make life choices
- Generosity
- Perceptions of corruption
- Dystopia + residual

An important characteristic of this dataset is that these factors are not independent raw measurements. Instead, the reported contribution values are components of the overall Life Evaluation score.
In other words, the contributions of the different factors, together with the residual component, approximately add up to the country's overall life satisfaction score.
Therefore, this project does not treat the contributing factors as independent predictors of life satisfaction. Instead, the analysis focuses on understanding the relative contribution of different factors to the overall life satisfaction score and exploring how the composition of these contributions differs across countries.

Dataset: https://github.com/adispacee/data-science-projects-with-R/blob/main/happiness%20index%20data.csv

Source: World Happiness Report powered by data from Gallop World Poll


Tools & Technologies:

- R
- ggplot2
- dplyr
- tidyr
- RStudio

  Analysis:

The analysis was performed in R using the following steps:
1. Data Preparation
The dataset was imported and inspected for its structure, variables, and relevant observations.The original dataset contained data from multiple years, along with two countries that had missing (NULL) values. Since the analysis focuses on the selected year, observations from other years were omitted, and the two countries with missing values were excluded from the analysis.
The dataset also contained Dystopia and Residual columns. These were omitted because they represent components used in the construction of the reported life satisfaction measure rather than independent factors being investigated in this analysis.
2. Exploratory Analysis
Summary statistics and tables were used to understand the distribution of the variables.
3. Relative Comparison
Relative values were calculated to compare the contribution of different factors on a comparable scale.
4. Visualization
Plots were created to identify relationships and patterns that may not be immediately visible from numerical results.
5. Interpretation
The observed patterns were interpreted in the context of the research questions, while avoiding claims of causation.
  

Results:
Country name |life_satisfaction  |    gdp      |  social_support  |life_expectancy |   freedom    |  
 Length   :145  | Min.   :1.446  |   Min.   :0.000 |  Min.   :0.000  | Min.   :0.000 |  Min.   :0.0000|  
 N.unique :145   1st Qu.:4.658     1st Qu.:1.296   1st Qu.:0.989   1st Qu.:0.442   1st Qu.:0.8070  
 N.blank  :  0   Median :5.939     Median :1.582   Median :1.286   Median :0.606   Median :0.9140  
 Min.nchar:  4   Mean   :5.657     Mean   :1.539   Mean   :1.202   Mean   :0.615   Mean   :0.8833  
 Max.nchar: 24   3rd Qu.:6.578     3rd Qu.:1.834   3rd Qu.:1.483   3rd Qu.:0.831   3rd Qu.:1.0150  
                 Max.   :7.764     Max.   :2.167   Max.   :1.720   Max.   :1.238   Max.   :1.1470  
   generosity       corruption    
 Min.   :0.0000   Min.   :0.0000  
 1st Qu.:0.0610   1st Qu.:0.0710  
 Median :0.1070   Median :0.1150  
 Mean   :0.1067   Mean   :0.1473  
 3rd Qu.:0.1440   3rd Qu.:0.1880  
 Max.   :0.2950   Max.   :0.5120  














