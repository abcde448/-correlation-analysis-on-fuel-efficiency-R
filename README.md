#Correlation Analysis on Fuel Efficiency (mtcars Dataset)

##Project Overview
This project explores the **`mtcars` dataset (built-in R)** to analyze **fuel efficiency (measured as MPG - Miles per Gallon)**.  
As a Data Analyst for an auto importer, the goal is to identify which car features influence fuel efficiency the most, using both **visual analysis** and **correlation measures**.  

The findings will guide management in making better **purchasing decisions** based on vehicle characteristics.

---

##Objectives
- Explore the distribution of **MPG** across cars.  
- Identify how different variables relate to fuel efficiency.  
- Use **Pearson’s correlation** to measure the strength of these relationships.  
- Highlight which variables have the **strongest positive** and **negative** correlations with MPG.  
- Provide **visual insights** and **storytelling** for management decisions.

---

##Dataset Information
The dataset `mtcars` has **32 cars** with the following features:  

- `mpg`: Miles/(US) gallon (Fuel efficiency - target variable)  
- `cyl`: Number of cylinders  
- `disp`: Displacement (cu.in.)  
- `hp`: Gross horsepower  
- `drat`: Rear axle ratio  
- `wt`: Weight (1000 lbs)  
- `qsec`: 1/4 mile time  
- `vs`: Engine (0 = V-shaped, 1 = Straight)  
- `am`: Transmission (0 = Automatic, 1 = Manual)  
- `gear`: Number of forward gears  
- `carb`: Number of carburetors  

---

##Tools & Libraries
- **Language**: R  
- **IDE**: RStudio  
- **Libraries**:  
  - `ggplot2` → Data visualization  
  - `dplyr` → Data manipulation  
  - `corrplot` → Correlation matrix visualization  

---

##Visual Insights
1. **Distribution of MPG**  
   - Most cars have MPG in the range **15–22**.  
   - Few cars achieve very high fuel efficiency (>30).  

2. **Weight vs MPG**  
   - Strong **negative correlation (-0.87)**.  
   - Heavier cars are less fuel efficient.   

3. **Horsepower vs MPG**  
   - Strong **negative correlation (-0.77)**.  
   - Cars with higher horsepower consume more fuel.  

4. **Transmission vs MPG**  
   - Manual cars (am=1) generally have **higher MPG** than automatic cars.  
   - Supports purchasing more manual transmission cars for efficiency.   

5. **Correlation Matrix**  
   - **Strongest Negative Correlations with MPG**:  
     - Weight (`wt`): -0.87  
     - Cylinders (`cyl`): -0.85  
     - Displacement (`disp`): -0.84  
   - **Strongest Positive Correlations with MPG**:  
     - Rear axle ratio (`drat`): +0.68  
     - Engine type (`vs`): +0.66  
     - Transmission (`am`): +0.60   

---

##Key Insights for Management
- Lightweight cars with smaller engines are **more fuel efficient**.  
- Manual transmission cars tend to provide **better mileage** than automatic.  
- Cars with large displacement, high cylinders, and high horsepower are **fuel inefficient**.  
- For better purchasing decisions, focus on **lighter cars, manual transmission, and optimized engine size**.  

---

##Deliverables
- `FuelEfficiency_Analysis.R` → Full R script.  
- `FuelEfficiency_Report.docx` → Word report with plots & storytelling.  

---

📬 Contact - Md. Rabbi Hasan | Data Scientist 📧arafatrabbi668@gmail.com | LinkedIn https://www.linkedin.com/in/md-rabbi-hasan-3249652b1 Passionate about turning raw data into real-world insights through clear, compelling storytelling. 

---
