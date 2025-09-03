-- Retrieve all bookings and the respective users
-- who made those bookings.
SELECT * 
FROM bookings
INNER JOIN users
    ON bookings.user_id = users.id;

-- Retrieve all properties and their reviews,
-- including properties that have no reviews.
SELECT * 
FROM properties
LEFT JOIN reviews
    ON reviews.property_id = properties.id;

-- Retrieve all users and all bookings, even if
-- the user has no booking or a booking is not
-- linked to a user.
SELECT * 
FROM bookings
FULL OUTER JOIN users
    ON bookings.user_id = users.id;