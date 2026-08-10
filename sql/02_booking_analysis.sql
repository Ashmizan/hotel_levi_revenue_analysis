1. Revenue by room type
Which room types generate the most total revenue?
SELECT room_type,
COUNT(*) AS total_revenue
FROM bookings
GROUP BY room_type
ORDER BY total_revenue DESC;

2. Average booking value
What is the average revenue generated per completed booking?
SELECT
AVG(total_revenue_eur) AS average_revenue
FROM bookings
GROUP BY booking_status = 'completed';

3. Length of stay
What is the average number of nights per booking?
SELECT
AVG(nights) AS average_nights
FROM bookings;

4. Seasonal demand
How many bookings occur in summer, winter, and shoulder seasons?
SELECT 
      season,
COUNT(*) AS booking_count
FROM bookings
GROUP BY season
ORDER BY booking_count DESC;

5. Seasonal revenue
Which season generates the highest total revenue?
SELECT 
      season,
COUNT(*) total_revenue
FROM bookings
GROUP BY season
ORDER BY total_revenue DESC;
