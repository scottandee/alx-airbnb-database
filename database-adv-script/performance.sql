-- Retrieve all bookings along with the user details, property details, and payment details
SELECT *
FROM bookings
LEFT JOIN users
    ON bookings.user_id = users.id
LEFT JOIN properties
    ON bookings.property_id = properties.id
LEFT JOIN payments
    ON bookings.id = payments.booking_id;