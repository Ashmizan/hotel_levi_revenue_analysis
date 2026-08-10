# Hotel Levi — Revenue & Booking Analytics

## Project Overview

This project analyzes synthetic hotel booking data for a fictional Hotel Levi property in Finnish Lapland.

The objective is to use SQL and Power BI to examine booking patterns, room performance, revenue, seasonality, and customer behavior, and to translate the findings into practical business recommendations.

The project was designed as a business-focused analytics case study rather than a demonstration of isolated SQL queries.

---

## Business Objectives

The analysis aims to answer questions such as:

- Which room types generate the highest revenue?
- How does demand differ between summer, winter, and shoulder seasons?
- Which booking channels generate the most bookings and revenue?
- What is the cancellation and no-show rate?
- How does length of stay affect revenue?
- Which room categories have the strongest performance?
- How does customer origin vary across the booking base?
- Which factors appear to influence hotel revenue and occupancy?
- What opportunities could improve revenue performance?

---

## Dataset

The dataset contains **1,500 synthetic booking records** covering a fictional Hotel Levi property with **127 rooms** across seven room categories.

The room inventory includes:

- Standard Room
- Standard View Room
- Superior Room
- Superior Family Room
- Deluxe Room
- Sky Suite
- Deluxe Sky Suite

The dataset includes booking dates, stay duration, room type, room characteristics, customer origin, booking channel, payment method, booking status, nightly rate, and revenue.

> **Note:** All customer and booking data in this project is synthetic and created for educational and portfolio purposes. It does not represent real Hotel Levi customers or transactions.

---

## Data Model

The project currently uses two relational tables:

### `bookings`

Contains individual booking records and customer-related booking information.

Key fields include:

- `customer_id`
- `booking_id`
- `check_in`
- `check_out`
- `nights`
- `room_type`
- `room_number`
- `booking_channel`
- `booking_status`
- `nightly_rate_eur`
- `total_revenue_eur`

### `room_inventory`

Contains the hotel's room inventory and room characteristics.

Key fields include:

- `room_number`
- `room_type`
- `view`
- `room_amenities`

The two tables can be connected through `room_number`.

---

## Tools & Technologies

- **PostgreSQL** — data storage, transformation and analysis
- **SQL** — querying, aggregation, joins, CTEs and analytical calculations
- **Power BI** — data visualization and dashboard development
- **Excel** — supporting data exploration and validation
- **GitHub** — project documentation and version control

---

## Analytical Approach

The analysis is organized around business questions rather than individual SQL features.

### 1. Data Validation
Checking record counts, missing values, duplicates, data types and consistency.

### 2. Booking Analysis
Examining booking volume, booking channels, seasonality, cancellations and length of stay.

### 3. Revenue Analysis
Analyzing total revenue, average booking value, nightly rates and revenue by season and room category.

### 4. Room Performance
Comparing room categories, views, amenities and revenue contribution.

### 5. Customer Analysis
Examining customer origin, booking behavior and stay patterns.

### 6. Business Recommendations
Translating analytical findings into practical recommendations for pricing, room allocation, marketing and revenue management.

---

## SQL Analysis

SQL analysis will be organized around the following business areas:

- Data validation
- Booking performance
- Revenue performance
- Room performance
- Customer behavior

Advanced SQL techniques will be used where they provide analytical value, including:

- Aggregations
- `JOIN`
- `CASE`
- Common Table Expressions (CTEs)
- Window functions
- Date-based analysis

---

## Power BI Dashboard

A Power BI dashboard will be developed to provide an executive-level view of hotel performance.

Planned dashboard areas include:

- Revenue overview
- Booking volume
- Revenue by room type
- Seasonal performance
- Booking channel performance
- Cancellation rate
- Customer origin
- Length-of-stay analysis

Dashboard screenshots will be added to this repository once development is complete.

---

## Key Findings

*To be completed after the SQL analysis and Power BI dashboard are developed.*

The final project will summarize the most important findings and explain their potential business implications.

---

## Business Recommendations

*To be completed after the analysis.*

Recommendations will be based on the evidence found in the dataset and will focus on areas such as:

- Pricing
- Seasonal promotions
- Room allocation
- Booking channels
- Customer segments
- Revenue optimization

---

## Project Structure

```text
hotel_levi_revenue_analysis/
│
├── README.md
│
├── data/
│   ├── hotel_levi_bookings.csv
│   └── hotel_levi_room_inventory.csv
│
├── sql/
│   ├── 01_data_validation.sql
│   ├── 02_booking_analysis.sql
│   ├── 03_revenue_analysis.sql
│   ├── 04_room_performance.sql
│   └── 05_customer_analysis.sql
│
├── powerbi/
│   └── hotel_levi_dashboard.pbix
│
├── screenshots/
│   └── dashboard_preview.png
│
└── documentation/
    └── data_dictionary.md
