# E-commerce Revenue & Customer Performance

SQL and Power BI/DAX portfolio project analyzing transaction-level e-commerce performance using the UCI Online Retail dataset.

## Project Overview
The source dataset contains 541,909 transaction rows from a UK-based non-store retailer, covering 1 December 2010 to 9 December 2011. Completed-sales analysis excludes cancellations and rows with non-positive quantity or unit price, leaving 530,104 valid rows.

## Tools
- SQL — data preparation, KPI calculations and business analysis
- Power BI — interactive dashboard development and visualization
- DAX — KPI measure calculations and reporting logic

## Power BI Dashboard
Built an interactive Power BI dashboard to track revenue, orders, identified customers, average order value, units sold, monthly revenue trends, top countries, and top products.

Dashboard features:
- KPI cards for Total Revenue, Total Orders, Total Customers, Average Order Value, and Total Units Sold
- Monthly Revenue Trend
- Top 10 Countries by Revenue
- Top 10 Products by Revenue
- Country and YearMonth slicers for interactive filtering

**Power BI file:** [Ecommerce_Revenue_Customer_Performance_Dashboard.pbix](./Ecommerce_Revenue_Customer_Performance_Dashboard.pbix)

## Key KPIs
- Completed-sales revenue: ~£10.67M
- Orders: 19,960
- Identified customers: 4,338
- Average Order Value: ~£534.40
- Units sold: ~5.59M
- Repeat customer rate: ~65.6%
- UK revenue share: ~84.6%
- Cancellation value: ~£896.8K

## Key Insights
- The United Kingdom accounted for approximately 84.6% of completed-sales revenue.
- November 2011 was the strongest complete revenue month at approximately £1.51M.
- Repeat-customer rate among identified customers was approximately 65.6%.
- December 2011 is a partial month and should not be compared directly with full months.

## Data Quality & Business Rules
- Invoice numbers beginning with C are treated as cancellations.
- Completed sales require a non-cancellation invoice, Quantity > 0, and UnitPrice > 0.
- 135,080 source rows have missing CustomerID. Customer-level metrics use identified customers only; missing IDs are not fabricated.

## Repository Structure
- `Ecommerce_Revenue_Customer_Performance_Dashboard.pbix` — interactive Power BI dashboard
- `sql/ecommerce_analysis.sql` — core SQL analysis
- `powerbi/power_bi_dax_measures.txt` — DAX measure definitions
- `powerbi/dashboard_blueprint.md` — dashboard planning documentation

## Portfolio Note
This is a self-initiated analytics portfolio project using the public UCI Online Retail dataset. The repository includes the completed Power BI Desktop dashboard (.pbix), SQL analysis, DAX measures, and dashboard documentation. The dashboard was built and tested locally in Power BI Desktop; it is not claimed as published to Power BI Service.
