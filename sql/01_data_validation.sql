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
