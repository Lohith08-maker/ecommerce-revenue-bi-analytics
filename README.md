# E-commerce Revenue & Customer Performance

SQL and Power BI/DAX portfolio project analyzing transaction-level e-commerce performance using the **UCI Online Retail** dataset.

## Project Overview
The source dataset contains **541,909 transaction rows** from a UK-based non-store retailer, covering **1 December 2010 to 9 December 2011**.

For completed-sales analysis, cancellations and rows with non-positive quantity or unit price are excluded. This leaves **530,104 valid completed-sales rows**.

## Tools
- SQL — data preparation, KPI calculations and business analysis
- Power BI / DAX — KPI and dashboard measure design

## Key KPIs
| KPI | Result |
|---|---:|
| Completed-sales revenue | ~£10.67M |
| Orders | 19,960 |
| Identified customers | 4,338 |
| Average Order Value | ~£534.40 |
| Units sold | ~5.59M |
| Repeat customer rate | ~65.6% |
| UK revenue share | ~84.6% |
| Cancellation value | ~£896.8K |

## Key Insights
- The **United Kingdom accounted for approximately 84.6%** of completed-sales revenue.
- **November 2011** was the strongest complete revenue month at approximately **£1.51M**.
- The repeat-customer rate among identified customers was approximately **65.6%**.
- December 2011 is a **partial month** in the dataset and should not be compared directly with full months.

## Data Quality & Business Rules
- Invoice numbers beginning with `C` are treated as cancellations.
- Completed sales require a non-cancellation invoice, `Quantity > 0`, and `UnitPrice > 0`.
- **135,080 source rows have missing CustomerID**. Customer-level metrics use identified customers only; missing IDs are not fabricated.

## Repository Structure
- `sql/ecommerce_analysis.sql` — core SQL analysis
- `powerbi/power_bi_dax_measures.txt` — DAX measure definitions
- `powerbi/dashboard_blueprint.md` — recommended report layout
- `README.md` — project methodology and results

## Portfolio Note
This is a self-initiated analytics portfolio project using the public UCI Online Retail dataset. The repository documents a **Power BI/DAX design**; it does not claim that a PBIX file is included.
