1. Booking volume
How many bookings does Hotel Levi have in the dataset?
SELECT COUNT(*)
FROM bookings;

2. Room demand
How many bookings were made for each room type?
SELECT room_type,
COUNT(*) AS booking_count
FROM bookings
GROUP BY room_type
ORDER BY booking_count DESC;

3. Customer origins
Which countries do the hotel's customers come from, and which countries have the most bookings?
SELECT country,
COUNT(*) AS booking_count
FROM bookings
GROUP BY country
ORDER BY booking_count DESC;
  
4. Booking channels
Which booking channels generate the most reservations?
SELECT booking_channel,
COUNT(*) AS booking_count
FROM bookings
GROUP BY booking_channel
ORDER BY booking_count DESC;
  
5. Booking status
How many bookings are completed, cancelled, and no-shows?
SELECT booking_status,
COUNT(*) AS booking_count
FROM bookings
GROUP BY booking_status
ORDER BY booking_count DESC;

6. Revenue by room type
Which room types generate the most total revenue?
SELECT room_type,
COUNT(*) AS total_revenue
FROM bookings
GROUP BY room_type
ORDER BY total_revenue DESC;

7. Average booking value
What is the average revenue generated per completed booking?
SELECT
AVG(total_revenue_eur) AS average_revenue
FROM bookings
GROUP BY booking_status = 'completed';

8. Length of stay
What is the average number of nights per booking?
SELECT
AVG(nights) AS average_nights
FROM bookings;

9. Seasonal demand
How many bookings occur in summer, winter, and shoulder seasons?
SELECT 
      season,
COUNT(*) AS booking_count
FROM bookings
GROUP BY season
ORDER BY booking_count DESC;

10. Seasonal revenue
Which season generates the highest total revenue?
SELECT 
      season,
COUNT(*) total_revenue
FROM bookings
GROUP BY season
ORDER BY total_revenue DESC;

11. Booking channel revenue
Which booking channel generates the highest total revenue?
SELECT booking_channel,
COUNT(*) AS total_revenue
FROM bookings
GROUP BY booking_channel
ORDER BY total_revenue DESC
LIMIT 1;

12. Booking channel value
Which booking channel has the highest average revenue per completed booking?
SELECT booking_channel, 
AVG(total_revenue_eur) AS average_revenue
FROM bookings
WHERE booking_status = 'Completed'
GROUP BY booking_channel
ORDER BY average_revenue DESC
LIMIT 1;

13. Room profitability pattern
Which room type has the highest average revenue per booking?
SELECT room_type, 
AVG(total_revenue_eur) AS average_revenue
FROM bookings
GROUP BY room_type
ORDER BY average_revenue DESC
LIMIT 1;

14. Room demand vs revenue
Is the most frequently booked room type also the room type generating the most revenue?
To answer this question, we need to find out 2 things:
  A. Which room gets booked the most?
  SELECT room_type,
COUNT(*) AS booking_count
FROM bookings
GROUP BY room_type
ORDER BY booking_count DESC
LIMIT 1;
  B. Which room generates the most revenue?
  SELECT room_type,
SUM(total_revenue_eur) AS total_revenue
FROM bookings
GROUP BY room_type
ORDER BY total_revenue DESC
LIMIT 1;
In both cases, the result is the standard room, so the room that is booked most frequently is indeed the room that generates the most revenue.
15. Cancellation behavior
Which room types have the highest cancellation rate?
SELECT room_type,
COUNT(*) FILTER (WHERE 
booking_status = 'Cancelled') * 100.0
/ COUNT(*) AS cancellation_rate
FROM bookings
GROUP BY room_type
ORDER BY cancellation_rate DESC
LIMIT 1;
