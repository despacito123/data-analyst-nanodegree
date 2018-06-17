
# Baseball player's performance analysis using Tableau

## Summary

In this project I'm using Tableau to analyze  performance of baseball players. Provided dataset contains 1,157 baseball players and includes their handedness (right or left handed), height (in inches), weight (in pounds), batting average, and home runs.

## Exploration

Exploring this dataset I found following insights:

- Significant amount of players have 0 for home runs and batting average;
- Players with better batting average tend to make more home runs;
- Batting average of right handed players is a little worse than of left or both handed;
- Shorter players tend to have a better batting average. This difference is most signifficant between right handed players;
- Players with higher BMI tend to have more home runs, but batting average doesn't seem to have a relationship with BMI.

I'll try to adress them in a Tableau story.

## First draft

### Design

I chose colorblind color palette. Almost 5% of population is colorblind. An audience too large to ignore.

I created bins from batting average and home runs to represent them in a more consise way. I also calculated BMI from players wieght and height to draw insight on it.

I started with showing unary plots to show distributions of main variables of the dataset. I used histogram and bar plots for it, because they show the disribution well and they'll be gamiliar to most readers. In this page I also took opportunity to draw attention to how many players have 0 batting average and home runs. This made rest of the distributions difficult to see, so in next page I show batting average and home runs with zeros and extreme values filtered out.

For batting average and home runs comparison I used a box plot mainly to see if people not educated in statistical analysis will find it easy to understand. Later I ploted same two variables as a scatter plot color coded with handedness to compare reaction of the reader.

variable. I chose scatter to plot height and weight relationship as well as plots based on those parameters, because it communicates a realationship of two continuous variables quite well. In this dataset height and wieght are discrete, so that allowed me to used suqre shapes with gradient to build a heat map.

I chose bars to represent height and batting average relationship as well as BMI and home runs relationship because I'm comparing magnitudes.

[First draft](https://public.tableau.com/profile/justinas.marozas#!/vizhome/udacity-data-visualizations-with-tableau-project-1/Firstdraft)

### Feedback

- What is the data about?
- Not obvious what does B, L, R stand for exactly;
- Number of Records is ambiguous in the context;
- It's easy to see that most players are right handed;
- Difficult to translate number of records to proportion of all data?
- Bars on continuous axis distorted the proportion of how many players have 0 batting average and home runs;
- Box plot is too confusing. Had to explain the notation;
- Weight vs height plot is not clear. Not clear what is trend line representing. Not obvious what average bands represent. Color gradient poorly communicated value counts;
- It's visible, that shorter players have better batting averages, but colored scattered squares is a confusing representation;
- Same for home runs on height and weight scatter;
- on BMI vs batting average and home runs color palette is redundant.

## Second draft

### Design

Changes for second draft:

- Add a better title to the story to explain what it is about;
- In bar and histogram plots, move magnitude values from axis marks to bar labels;
- Rename Number of Records to Count;
- Use bins and histogram to show distribution of batting average and home runs. Using bars on continuous axis was an amusing idea, but wrong;
- Now that bars on continuous axis are not distorting picture anymore I can drop a page with closer look at batting average and home runs distributions;
- Explain handedness in legends;
- Use a histogram instead of box plot to show a relationship between batting average and home runs;
- Make distribution plots in first page act as filters to enable interactive comparison of different sections of data;
- Build an interactive heatmap instead of overplotted handedness colored mess of a scatterplot showing distribution between batting average and home runs.

[Second draft](https://public.tableau.com/profile/justinas.marozas#!/vizhome/udacity-data-visualizations-with-tableau-project-2/Seconddraft)

### Feedback

- Plots of main 5 parameters could be reordered in a dashboard;
- Main 5 parameters need a thicker margin between plots;
- Size coded scatter plots are confusing;
- Main take away is fat man plays better.

## First sumission

### Desing

Changes for first submission:

- Reorder plots in main 5 parameters dashboard;
- Add borders for plots in main 5 parameters dashboard;
- Add trend line to height by weight scatter plot.

[First submission](https://public.tableau.com/profile/justinas.marozas#!/vizhome/udacity-data-visualizations-with-tableau-project-3/Firstsubmission)

## Resources

- https://community.tableau.com
- https://www.tableau.com
- https://onlinehelp.tableau.com
- https://kb.tableau.com
- http://www.colourblindawareness.org
