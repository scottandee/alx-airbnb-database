-- Find all properties where the average rating
-- is greater than 4.0 using a subquery
SELECT *
FROM properties
WHERE 4 < (
    SELECT AVG(rating)
    FROM ratings
    WHERE ratings.property_id = properties.id
);

-- Find users who have made more than 3 bookings
SELECT *
FROM users
WHERE 3 < (
    SELECT COUNT(*)
    FROM bookings
    WHERE bookings.user_id = users.id
);