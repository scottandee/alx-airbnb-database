-- Find the total number of bookings made by each user
SELECT user_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id

-- Rank properties based on the total number of bookings
-- they have received
SELECT property_name, number_of_bookings
    RANK() OVER(ORDER BY num_of_bookings) AS bookings_rank
FROM bookings;