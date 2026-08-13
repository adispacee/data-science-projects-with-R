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
1. **Summary Statistics**
 The following table presents the main statistical results obtained from the dataset.

| Variable | Min | 1st Quartile | Median | Mean | 3rd Quartile | Max |
|---|---:|---:|---:|---:|---:|---:|
| Life Satisfaction | 1.446 | 4.658 | 5.939 | 5.657 | 6.578 | 7.764 |
| GDP | 0.000 | 1.296 | 1.582 | 1.539 | 1.834 | 2.167 |
| Social Support | 0.000 | 0.989 | 1.286 | 1.202 | 1.483 | 1.720 |
| Life Expectancy | 0.000 | 0.442 | 0.606 | 0.615 | 0.831 | 1.238 |
| Freedom | 0.000 | 0.807 | 0.914 | 0.883 | 1.015 | 1.147 |
| Generosity | 0.000 | 0.061 | 0.107 | 0.1067 | 0.144 | 0.295 |
| Corruption | 0.000 | 0.071 | 0.115 | 0.1473 | 0.188 | 0.512 |

2. **Correlation Analysis**
   The correlation matrix showed several notable relationships with life satisfaction:

   https://github.com/adispacee/data-science-projects-with-R/blob/main/plots/Rplot%20corr.png?raw=true

| Factor | Correlation with Life Satisfaction |
|---|---:|
| Social Support | 0.812 |
| GDP | 0.745 |
| Life Expectancy | 0.679 |
| Freedom | 0.638 |
| Corruption | 0.396 |
| Generosity | 0.038 |



Social support showed the strongest positive correlation with life satisfaction, followed by GDP, life expectancy, and freedom.
Generosity showed almost no linear correlation with life satisfaction.
The corruption-related variable showed a moderate positive correlation with life satisfaction. The direction of this relationship should be interpreted according to the definition of the variable in the original dataset and should not be interpreted as evidence that greater actual corruption increases happiness.
An interesting relationship was observed between GDP and generosity.
The correlation was approximately:
r = -0.091**
This indicates a very weak negative association between GDP and generosity in the dataset.
Because the relationship is very weak, it should not be interpreted as evidence that higher GDP causes lower generosity.

3.**Average Relative Values:**

To compare the factors relative to life satisfaction, a relative contribution measure was calculated for each country.
For each factor, its value for a country was divided by that country's life satisfaction score and multiplied by 100:
Relative Contribution = (Factor Value / Life Satisfaction) × 100
The resulting percentages were then averaged across all countries to obtain the overall average relative value for each factor.
This provides a descriptive measure of how large each factor's value is relative to the life satisfaction score within the same country.

| Factor | Average Relative Value(%) |
|---|---:|
| GDP | 27.525321 |
| Social Support | 20.994073 |
| Life Expectancy | 10.672783 |
| Freedom | 15.829062 |
| Generosity | 1.982009 |
| Corruption | 2.599711 |

https://github.com/adispacee/data-science-projects-with-R/blob/main/plots/Rplot%20avg%20contribution.png

GDP had the highest average relative contribution at approximately 27.53%, followed by social support at 20.99%.
Freedom and life expectancy had average relative contributions of approximately 15.83% and 10.67%, respectively.
Generosity had the smallest average relative contribution at approximately 1.98%.
The corruption-related variable had an average relative contribution of approximately 2.60%.

4.**Top 10 vs Bottom 10 Countries:**

The mean values of the selected factors were compared between the 10 countries with the highest life satisfaction and the 10 countries with the lowest life satisfaction.

| Factor | Top 10 | Bottom 10 |
|---|---:|---:|
| GDP | 1.9616 | 1.1277 |
| Social Support | 1.5814 | 0.7563 |
| Life Expectancy | 0.9459 | 0.3234 |
| Freedom | 1.0508 | 0.6637 |
| Generosity | 0.1343 | 0.0868 |
| Corruption | 0.3513 | 0.1127 |

The largest differences between the two groups were observed for GDP, social support, and life expectancy.
The high-satisfaction group also had higher average freedom and generosity values.


5.**Median-Based Comparison of Life Satisfaction Groups:**

To further investigate differences between countries with different levels of life satisfaction, the median life satisfaction score was used as a threshold.
Countries were divided into two groups:
Happy group: Life satisfaction greater than or equal to the median
Unhappy group: Life satisfaction below the median
The average relative contribution of each factor was then calculated separately for the two groups.



| Factor | Happy Group (%) | Unhappy Group (%) |
|---|---:|---:|
| GDP | 26.994223 | 28.063795 |
| Social Support | 21.858595 | 20.117544 |
| Life Expectancy | 11.607159 | 9.725430 |
| Freedom | 14.901942 | 16.769060 |
| Generosity | 1.597310 | 2.372051 |
| Corruption | 2.753054 | 2.444239 |

The comparison shows that the relative composition of the factors differs between the two groups.
Rather than focusing only on GDP, this comparison highlights the differences in the broader set of factors associated with life satisfaction. In particular, the higher relative values of social support and life expectancy in the happy group suggest that social and human well-being are important dimensions to consider alongside economic conditions.The results do not mean that these factors cause higher or lower life satisfaction. They simply describe how the relative values of the factors differ between the two groups.

6.**GDP and Life Satisfaction:**

https://github.com/adispacee/data-science-projects-with-R/blob/main/plots/Rplot%20scat%20gdpvs%20satisfaction.png


GDP showed a strong positive correlation with life satisfaction (`r = 0.745`). The scatter plot also shows a clear upward trend, indicating that countries with higher GDP generally tend to report higher life satisfaction.However, the relationship is not perfect. There is noticeable variation in life satisfaction among countries with similar GDP levels.An important observation is that **Singapore has the highest GDP in the dataset, while Finland has the highest life satisfaction**. This shows that the country with the strongest economic indicator is not necessarily the country with the highest reported life satisfaction.
Therefore, although GDP appears to be an important factor associated with life satisfaction, it does not fully explain differences in well-being. Other factors, including social support, life expectancy, freedom, generosity, and corruption, may also contribute to differences between countries



Limitations:

-The data are country-level observations rather than individual-level observations.
-Correlation does not imply causation.
-The relative contribution measure is a descriptive ratio and should not be interpreted as a causal or statistical contribution.
-The analysis focuses on a selected year.
-The interpretation of the corruption-related variable depends on its definition in the original dataset.
-Other factors that may influence life satisfaction are not included in the analysis.




