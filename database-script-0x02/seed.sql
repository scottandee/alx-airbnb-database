-- ==========================
-- SAMPLE DATA INSERTS
-- ==========================

-- Enable pgcrypto for UUID generation (if not enabled already)
CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- --------------------------
-- USERS
-- --------------------------
INSERT INTO users (id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  (gen_random_uuid(), 'Alice', 'Johnson', 'alice@example.com', 'hashed_pw1', '08012345678', 'guest'),
  (gen_random_uuid(), 'Bob', 'Smith', 'bob@example.com', 'hashed_pw2', '08087654321', 'host'),
  (gen_random_uuid(), 'Charlie', 'Brown', 'charlie@example.com', 'hashed_pw3', '08123456789', 'admin'),
  (gen_random_uuid(), 'Diana', 'Miller', 'diana@example.com', 'hashed_pw4', '08198765432', 'guest');

-- --------------------------
-- PROPERTIES
-- Assume Bob is the host
-- --------------------------
INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT
  gen_random_uuid(), id, 'Cozy Apartment in Lagos',
  'A modern 2-bedroom apartment near Victoria Island.',
  'Lagos, Nigeria',
  35000.00
FROM users WHERE email = 'bob@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT
  gen_random_uuid(), id, 'Beach House in Accra',
  'A beautiful beachfront villa with private pool.',
  'Accra, Ghana',
  50000.00
FROM users WHERE email = 'bob@example.com';

-- --------------------------
-- BOOKINGS
-- Assume Alice and Diana make bookings
-- --------------------------
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT
  gen_random_uuid(), p.id, u.id,
  '2025-09-10', '2025-09-15',
  5 * p.price_per_night, 'confirmed'
FROM users u
JOIN properties p ON p.name = 'Cozy Apartment in Lagos'
WHERE u.email = 'alice@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT
  gen_random_uuid(), p.id, u.id,
  '2025-09-20', '2025-09-25',
  5 * p.price_per_night, 'pending'
FROM users u
JOIN properties p ON p.name = 'Beach House in Accra'
WHERE u.email = 'diana@example.com';

-- --------------------------
-- PAYMENTS
-- Link to confirmed booking (Alice’s booking)
-- --------------------------
INSERT INTO payments (id, booking_id, amount, payment_method)
SELECT
  gen_random_uuid(), b.id, b.total_price, 'credit_card'
FROM bookings b
JOIN users u ON b.user_id = u.id
WHERE u.email = 'alice@example.com' AND b.status = 'confirmed';

-- --------------------------
-- REVIEWS
-- Alice leaves a review for Bob’s property
-- --------------------------
INSERT INTO reviews (id, property_id, user_id, rating, comment)
SELECT
  gen_random_uuid(), p.id, u.id,
  5, 'Amazing stay! Very clean and host was super friendly.'
FROM properties p
JOIN users u ON u.email = 'alice@example.com'
WHERE p.name = 'Cozy Apartment in Lagos';

-- --------------------------
-- MESSAGES
-- Alice sends Bob a message before booking
-- --------------------------
INSERT INTO messages (id, sender_id, recipient_id, message_body)
SELECT
  gen_random_uuid(), u1.id, u2.id,
  'Hi Bob, is the apartment available for the second week of September?'
FROM users u1, users u2
WHERE u1.email = 'alice@example.com' AND u2.email = 'bob@example.com';

-- Bob replies to Alice
INSERT INTO messages (id, sender_id, recipient_id, message_body)
SELECT
  gen_random_uuid(), u1.id, u2.id,
  'Hi Alice, yes it’s available from 10th to 15th September. Looking forward to hosting you!'
FROM users u1, users u2
WHERE u1.email = 'bob@example.com' AND u2.email = 'alice@example.com';

-- --------------------------
-- USERS (adding more)
-- --------------------------
INSERT INTO users (id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  (gen_random_uuid(), 'Edward', 'Green', 'edward@example.com', 'hashed_pw5', '07012349876', 'host'),
  (gen_random_uuid(), 'Fiona', 'Adams', 'fiona@example.com', 'hashed_pw6', '07065439876', 'guest'),
  (gen_random_uuid(), 'George', 'White', 'george@example.com', 'hashed_pw7', '07087651234', 'guest'),
  (gen_random_uuid(), 'Helen', 'Stone', 'helen@example.com', 'hashed_pw8', '07099887766', 'host');

-- --------------------------
-- PROPERTIES (Edward & Helen as hosts)
-- --------------------------
INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT
  gen_random_uuid(), id, 'Luxury Loft in Abuja',
  'Spacious loft with city view, great for business trips.',
  'Abuja, Nigeria',
  40000.00
FROM users WHERE email = 'edward@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT
  gen_random_uuid(), id, 'Rustic Cabin in Nairobi',
  'Cozy cabin in the woods, perfect for a peaceful retreat.',
  'Nairobi, Kenya',
  25000.00
FROM users WHERE email = 'helen@example.com';

-- --------------------------
-- BOOKINGS (George & Fiona book properties)
-- --------------------------
-- George books Edward's loft (confirmed)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT
  gen_random_uuid(), p.id, u.id,
  '2025-10-01', '2025-10-05',
  4 * p.price_per_night, 'confirmed'
FROM users u
JOIN properties p ON p.name = 'Luxury Loft in Abuja'
WHERE u.email = 'george@example.com';

-- Fiona books Helen’s cabin (canceled)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT
  gen_random_uuid(), p.id, u.id,
  '2025-10-10', '2025-10-14',
  4 * p.price_per_night, 'canceled'
FROM users u
JOIN properties p ON p.name = 'Rustic Cabin in Nairobi'
WHERE u.email = 'fiona@example.com';

-- --------------------------
-- PAYMENTS (different methods)
-- --------------------------
-- George pays for Abuja loft via PayPal
INSERT INTO payments (id, booking_id, amount, payment_method)
SELECT
  gen_random_uuid(), b.id, b.total_price, 'paypal'
FROM bookings b
JOIN users u ON b.user_id = u.id
WHERE u.email = 'george@example.com' AND b.status = 'confirmed';

-- --------------------------
-- REVIEWS
-- --------------------------
-- George reviews Edward's loft
INSERT INTO reviews (id, property_id, user_id, rating, comment)
SELECT
  gen_random_uuid(), p.id, u.id,
  4, 'Great stay, but WiFi could be faster.'
FROM properties p
JOIN users u ON u.email = 'george@example.com'
WHERE p.name = 'Luxury Loft in Abuja';

-- Diana reviews the Beach House in Accra after her pending booking got canceled
INSERT INTO reviews (id, property_id, user_id, rating, comment)
SELECT
  gen_random_uuid(), p.id, u.id,
  3, 'Booking got canceled, but the host communicated well.'
FROM properties p
JOIN users u ON u.email = 'diana@example.com'
WHERE p.name = 'Beach House in Accra';

-- --------------------------
-- MESSAGES
-- --------------------------
-- Fiona asks Helen about the cabin
INSERT INTO messages (id, sender_id, recipient_id, message_body)
SELECT
  gen_random_uuid(), u1.id, u2.id,
  'Hi Helen, does the cabin have a fireplace?'
FROM users u1, users u2
WHERE u1.email = 'fiona@example.com' AND u2.email = 'helen@example.com';

-- Helen replies
INSERT INTO messages (id, sender_id, recipient_id, message_body)
SELECT
  gen_random_uuid(), u1.id, u2.id,
  'Yes, the cabin has a traditional fireplace and we provide firewood.'
FROM users u1, users u2
WHERE u1.email = 'helen@example.com' AND u2.email = 'fiona@example.com';

-- George asks Edward about parking
INSERT INTO messages (id, sender_id, recipient_id, message_body)
SELECT
  gen_random_uuid(), u1.id, u2.id,
  'Hi Edward, is there free parking at the loft?'
FROM users u1, users u2
WHERE u1.email = 'george@example.com' AND u2.email = 'edward@example.com';

-- Edward replies
INSERT INTO messages (id, sender_id, recipient_id, message_body)
SELECT
  gen_random_uuid(), u1.id, u2.id,
  'Yes, we have secure underground parking available for guests.'
FROM users u1, users u2
WHERE u1.email = 'edward@example.com' AND u2.email = 'george@example.com';
