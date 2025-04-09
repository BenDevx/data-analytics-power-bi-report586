# **Power BI Retail Analytics Dashboard**

## **Table of Contents**
1. [Project Description](#project-description)  
2. [Installation Instructions](#installation-instructions)  
3. [Usage Instructions](#usage-instructions)  
4. [Data Model and Transformations](#data-model-and-transformations)  
5. [KPIs and Measures](#kpis-and-measures)  
6. [Visualizations and Analysis](#visualizations-and-analysis)  
7. [Interactive Features](#interactive-features)  
8. [Drillthroughs & Tooltips](#drillthroughs--tooltips)  
9. [Navigation & User Experience](#navigation--user-experience)  
10. [File Structure](#file-structure)  
11. [License Information](#license-information)

---

## **Project Description**

This project showcases a comprehensive Power BI dashboard for a retail company, analyzing sales performance, customer behavior, and store operations. The dashboard was built using a star schema model with data sourced from Azure Blob Storage.

**Project Objectives:**
- Create a scalable and interactive retail report using Power BI.
- Implement effective data transformations and modeling.
- Generate KPIs and visuals for actionable insights.

**What I Learned:**
- Creating and configuring virtual environments for Power BI on macOS.
- Importing and transforming cloud-based data from Azure Blob Storage.
- Modeling data using star schema and implementing relationships.
- Designing interactive dashboards using Power BI visuals and features.

---

## **Installation Instructions**

1. Set up a Virtual Machine (VM) capable of running Power BI (for Mac users).
2. Connect Power BI to Azure Blob Storage via **Get Data** and select the `data-analytics` container.
3. Load relevant tables including the **Stores** table and extract needed columns.

---

## **Usage Instructions**

1. Load the dataset and set up data model relationships.
2. Apply cleaning steps: remove duplicates, rename columns, and correct values.
3. Create KPIs and measures as needed.
4. Build visuals and set up interactions for each report page.
5. Navigate between pages using the sidebar or drillthrough options.

---

## **Data Model and Transformations**

### **Star Schema Relationships:**
- `Products[product_code]` → `Orders[product_code]`
- `Stores[store_code]` → `Orders[store_code]`
- `Customers[User UUID]` → `Orders[User ID]`
- `Date[date]` → `Orders[Order Date]` *(Active)*
- `Date[date]` → `Orders[Shipping Date]`

All relationships are one-to-many with a single-direction filter from dimension to fact tables.

### **Transformations Applied:**
- Removed duplicate product codes.
- Corrected spelling inconsistencies in the Region column.
- Renamed columns to align with Power BI conventions.
- Ensured primary keys are unique for proper relationships.
- Created a custom Date table and marked it as a Date table.

---

## **KPIs and Measures**

- **Total Revenue**
- **Total Customers** (distinct count)
- **Top Customer Revenue**
- **Top Customer Orders**
- **Quarterly KPIs:**
  - Revenue, Orders, Profit
  - Growth targets set to 5% over the previous quarter
- **Previous Quarter Comparisons** using DAX time intelligence

---

## **Visualizations and Analysis**

### **Summary Charts:**
- **Donut Charts**: Total Customers by Country & Product Category
- **Line Chart**: Total Customers over Time (with forecast and 95% confidence interval)
- **KPI Cards**: Top Customer’s Name, Order Count, and Revenue

### **Revenue Analysis:**
- **Donut Charts**: Revenue by Store & Category
- **Quarterly KPI Cards**: Revenue, Orders, and Profit
- **Conditional Formatting**: Revenue bars in Top 20 Customers table

---

## **Interactive Features**

- **Mapped Store Locations** using city and country fields
- **Cross-Filtering & Custom Interactions**:
  - *Executive Summary*: Bar chart and product table do not filter KPIs
  - *Customer Detail Page*: Country donut filters category chart, not others
  - *Product Detail Page*: Scatter and table visuals are not interactive

---

## **Drillthroughs & Tooltips**

### **Drillthrough Page – Store Overview**
- Top 5 Products table (Description, Profit YTD, Orders, Revenue)
- Column chart of Orders by Category
- Gauge showing Profit YTD vs 20% growth target
- Selected Store Name Card

### **Tooltip Page – Store Map**
- Reused Profit Gauge
- Tooltip on map visual shows YTD profit per store

---

## **Navigation & User Experience**

- **Map Visuals Enabled**: Adjusted settings to support maps
- **Navigation Sidebar**:
  - Consistent formatting across all pages
  - Custom icons (white default, cyan on hover)
  - Buttons linked to page navigation actions
  - Sidebar grouped and copied across all pages


