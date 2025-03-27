# Power BI Retail Analytics Project - README

## Overview
This project involved building a comprehensive Power BI dashboard for a retail company. The analysis focused on sales performance, customer insights, and store operations using a star schema model. The project included data transformation, relationships setup, KPI calculations, and interactive visualizations.

## 1. Setting Up the Environment
- **Created a Virtual Machine (VM):** Configured a VM to run Power BI for report development on my Mac.
- **Connected to Azure Blob Storage:** Used **Get Data** to import tables from the **data-analytics** container.
- **Loaded the Stores table** and extracted columns

## 2. Data Model and Relationships
A star schema was implemented with the following relationships:
- **Products[product_code] **Orders[product_code]**
- **Stores[store_code]** to **Orders[store_code]**
- **Customers[User UUID]** to **Orders[User ID]**
- **Date[date]** to **Orders[Order Date]** (Active relationship)
- **Date[date]** to **Orders[Shipping Date]**

All relationships were set as one-to-many with a single filter direction flowing from dimension tables to the fact table.

## 3. Data Cleaning & Transformation
- **Removed Duplicates:** Applied the **Remove Duplicates** function to the `product_code` column.
- **Standardized Region Names:** Used **Replace Values** to correct inconsistent spellings in the `Region` column.
- **Renamed Columns:** Ensured consistency with Power BI naming conventions.
- **Duplicate Removal:** Ensured primary keys in dimension tables were unique to establish one-to-many relationships.
- **Date Table Issue:** Created a proper Date table and set it as a marked Date table.

## 4. Measures Created
- **Total Revenue**
- **Total Customers**: Count of distinct customers.
- **Top Customer Revenue**: Identified the highest revenue-generating customer.
- **Top Customer Orders**: Computed the number of orders from the top customer.
- **Quarterly KPIs**:
  - Previous Quarter Profit
  - Previous Quarter Revenue
  - Previous Quarter Orders
  - Target values for each (5% growth compared to previous quarter)

## 5. Data Analysis & Visualizations
### Summary Charts
- **Donut Charts**: Displayed Total Customers by Country and Total Customers by Product Category.
- **Line Chart**:
  - X-axis: Date Hierarchy (Year -> Quarter -> Month)
  - Y-axis: Total Customers
  - Trend Line and Forecast (Next 10 periods, 95% confidence interval)

### KPI Cards
- **Three Card Visuals**:
  - Top Customer's Name
  - Number of Orders by Top Customer
  - Total Revenue from Top Customer
- **Conditional Formatting**:
  - Applied data bars to Revenue in the Top 20 Customers Table.
  
### Date Slicer
- Implemented a **Between Slicer** to filter reports by Year.

### Revenue Analysis
- **Donut Charts for Revenue**:
  - Revenue by Store
  - Revenue by Store
- **KPI Cards for Quarterly Metrics**:
  - Revenue, Orders, and Profit with growth targets.
  - Trend Axis set to **Start of Quarter**.
  - KPI Formatting:
    - High is Good
    - Bad Colour: Red
    - Transparency: 15%
    - Callout Value: 1 decimal place

### Interactive Features
- **Mapped Store Locations:** Used the **Geography** field from the dataset to plot cities with country names.
- **Created Summary Metrics:** Developed visuals for **Total Revenue, Total Profit, and Total Orders**.
- **Implemented Cross-Filtering:** Adjusted interactions for better user control:
  - On **Executive Summary Page**: The Product Category bar chart and Top 10 Products table should not filter KPI cards.
  - On **Customer Detail Page**: The Top 20 Customers table should not filter other visuals; the Country donut chart should cross-filter the Category donut chart.
  - On **Product Detail Page**: The Orders vs. Profitability scatter graph and Top 10 Products table should not filter any visuals.

## 6. Drillthrough & Tooltip Enhancements
- **Created a Drillthrough Page (`Stores Drillthrough`)**:
  - Added a **Top 5 Products Table** (Description, Profit YTD, Total Orders, Revenue).
  - Designed a **Column Chart** for Total Orders by Product Category.
  - Implemented **Profit YTD Gauge** against a 20% yearly growth target.
  - Displayed the **Selected Store Name** using a Card visual.
- **Created a Tooltip Page (`Stores Tooltip`)**:
  - Copied over the **Profit Gauge Visual**.
  - Set the **tooltip** of store locations on the map to display year-to-date profit performance.

## 7. Navigation & User Experience
- **Enabled Map and Filled Maps:** Adjusted Power BI settings to allow map visuals.
- **Navigation Sidebar Setup**:
  - Designed an intuitive **Navigation Pane** for seamless movement between reports.
  - Applied consistent **formatting** across all visualizations using templates from the Customer Detail page.
- **Added Navigation Buttons**:
  - Used **Custom Icons** (white for default, cyan for hover effect).
  - Set **Page Navigation Actions** to allow seamless movement between pages.
  - Grouped and copied buttons across all report pages.



