1. Booking channel revenue
Which booking channel generates the highest total revenue?
SELECT booking_channel,
COUNT(*) AS total_revenue
FROM bookings
GROUP BY booking_channel
ORDER BY total_revenue DESC
LIMIT 1;

2. Booking channel value
Which booking channel has the highest average revenue per completed booking?
SELECT booking_channel, 
AVG(total_revenue_eur) AS average_revenue
FROM bookings
WHERE booking_status = 'Completed'
GROUP BY booking_channel
ORDER BY average_revenue DESC
LIMIT 1;

3. Room profitability pattern
Which room type has the highest average revenue per booking?
SELECT room_type, 
AVG(total_revenue_eur) AS average_revenue
FROM bookings
GROUP BY room_type
ORDER BY average_revenue DESC
LIMIT 1;

4. Room demand vs revenue
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
5. Cancellation behavior
Which room types have the highest cancellation rate?
SELECT room_type,
COUNT(*) FILTER (WHERE 
booking_status = 'Cancelled') * 100.0
/ COUNT(*) AS cancellation_rate
FROM bookings
GROUP BY room_type
ORDER BY cancellation_rate DESC
LIMIT 1;
