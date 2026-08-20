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
