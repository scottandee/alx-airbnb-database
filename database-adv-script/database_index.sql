-- User Table
CREATE INDEX idx_user_email ON User(email);

-- Booking Table
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_booking_date ON Booking(booking_date);

-- Property Table
CREATE INDEX idx_property_location ON Property(location);
CREATE INDEX idx_property_price ON Property(price);
```

EXPLAIN ANALYZE SELECT * FROM Booking WHERE user_id = 1;
