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
 Summary Statistics
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













