16. Length of stay and revenue
Do longer stays generally generate more revenue per booking?
For this questions, we need to compare the average revenue for different number of nights.
So we run the following query and get the following result:
SELECT nights,
AVG(total_revenue_eur) AS average_revenue
FROM bookings
GROUP BY nights
ORDER BY average_revenue DESC;
nights   average_revenue
10	     744.3478260869565217
7	       614.0796460176991150
6	       525.7792207792207792
5	       411.6666666666666667
4	       393.1932203389830508
3	       278.8660714285714286
2	       191.5151515151515152
1	       108.2957746478873239
  Finding: Average revenue per booking generally increases as the length of stay increases, indicating that longer stays tend to generate 
  higher revenue per booking.
  
17. Customer geography and revenue
Which customer countries generate the highest total revenue?
SELECT country,
SUM(total_revenue_eur) AS total_revenue
FROM bookings
GROUP BY country
ORDER BY total_revenue DESC;

18. Views and demand
Do slope-view rooms receive more bookings than forest-view rooms?
SELECT view,
COUNT(*) AS booking_count
FROM bookings
GROUP BY view
ORDER BY booking_count DESC;

"Forest view"	781
"Slope view"	719

No, slope view rooms do not tend to receive more bookings compared to forest-view rooms.
  
19. Premium room performance
How do the Deluxe Room, Sky Suite, and Deluxe Sky Suite compare in terms of booking volume, average booking value, and total revenue?
SELECT room_type,
COUNT(*) AS booking_count,
AVG(total_revenue_eur) AS average_revenue,
SUM(total_revenue_eur) AS total_revenue
FROM bookings
WHERE room_type IN ('Deluxe Room','Sky Suite','Deluxe Sky Suite')
GROUP BY room_type
ORDER BY booking_count,average_revenue,total_revenue DESC;

1. Booking volume:
Deluxe Room — 91 bookings

2. Average booking value:
Deluxe Sky Suite — €1,071.86

3. Total revenue:
Deluxe Sky Suite — €63,240

The Deluxe Room has the highest booking volume, but the Deluxe Sky Suite generates the highest average booking value and total revenue.

20. If you were the hotel's revenue manager, which room category and booking channel would you prioritize, and why?
  From Q19:

Deluxe Room → 91 bookings, €597.80 average, €54,400 total
Sky Suite → 90 bookings, €685.40 average, €61,686 total
Deluxe Sky Suite → 59 bookings, €1,071.86 average, €63,240 total

So I'd prioritize the Deluxe Sky Suite because it generates the highest total revenue and highest revenue per booking, even though it has fewer bookings.

📱 Booking channel → Corporate. Why?

SELECT booking_channel,
       COUNT(*) AS booking_count,
       AVG(total_revenue_eur) AS average_revenue,
       SUM(total_revenue_eur) AS total_revenue
FROM bookings
WHERE booking_status = 'Completed'
GROUP BY booking_channel
ORDER BY total_revenue DESC;
  

From my latest query result:

Corporate → €111,778 total revenue
Phone → €98,224
Travel agency → €97,482
Booking.com → €90,362
Direct website → €83,670
Expedia → €76,920

So I'd prioritize Corporate bookings because they're generating the highest total revenue among completed bookings.

Recommendation: I would prioritize the Deluxe Sky Suite and the Corporate booking channel. 
  The Deluxe Sky Suite generates the highest total revenue (€63,240) and the highest average revenue per booking (€1,071.86), despite having fewer bookings than the other premium room types.
  The Corporate channel generates the highest total revenue (€111,778) among completed bookings. Therefore, the hotel could focus on promoting the Deluxe Sky Suite through the Corporate channel
  the highest total revenue (€111,778) among completed bookings. Therefore, the hotel could focus on promoting the Deluxe Sky Suite through the Corporate channel to maximize revenue.
