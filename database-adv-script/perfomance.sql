-- Retrieve all bookings along with the user details, property details, and payment details
SELECT *
FROM bookings
LEFT JOIN users
    ON bookings.user_id = users.id
LEFT JOIN properties
    ON bookings.property_id = properties.id
LEFT JOIN payments
    ON bookings.id = payments.booking_id;

-- Analysis of query with EXPLAIN
EXPLAIN SELECT *
FROM bookings
LEFT JOIN users
    ON bookings.user_id = users.id
LEFT JOIN properties
    ON bookings.property_id = properties.id
LEFT JOIN payments
    ON bookings.id = payments.booking_id;

-- Refactored Query
SELECT 
      bookings.id AS booking_id,
      users.name AS user_name,
      properties.name AS property_name,
      payments.amount AS payment_amount
FROM bookings
INNER JOIN users
        ON bookings.user_id = users.id
INNER JOIN properties
        ON bookings.property_id = properties.id
INNER JOIN payments
        ON bookings.id = payments.booking_id;