-- ==========================
-- PART 1: USERS & PROPERTIES
-- ==========================

-- Enable pgcrypto for UUID generation (if not enabled already)
CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- --------------------------
-- USERS (50 total)
-- --------------------------
INSERT INTO users (id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  (gen_random_uuid(), 'Alice', 'Johnson', 'alice@example.com', 'hashed_pw1', '08012345678', 'guest'),
  (gen_random_uuid(), 'Bob', 'Smith', 'bob@example.com', 'hashed_pw2', '08087654321', 'host'),
  (gen_random_uuid(), 'Charlie', 'Brown', 'charlie@example.com', 'hashed_pw3', '08123456789', 'admin'),
  (gen_random_uuid(), 'Diana', 'Miller', 'diana@example.com', 'hashed_pw4', '08198765432', 'guest'),
  (gen_random_uuid(), 'Edward', 'Green', 'edward@example.com', 'hashed_pw5', '07012349876', 'host'),
  (gen_random_uuid(), 'Fiona', 'Adams', 'fiona@example.com', 'hashed_pw6', '07065439876', 'guest'),
  (gen_random_uuid(), 'George', 'White', 'george@example.com', 'hashed_pw7', '07087651234', 'guest'),
  (gen_random_uuid(), 'Helen', 'Stone', 'helen@example.com', 'hashed_pw8', '07099887766', 'host'),
  (gen_random_uuid(), 'Ian', 'Taylor', 'ian@example.com', 'hashed_pw9', '08033344455', 'host'),
  (gen_random_uuid(), 'Julia', 'Harris', 'julia@example.com', 'hashed_pw10', '08055566677', 'guest'),
  (gen_random_uuid(), 'Kevin', 'Brooks', 'kevin@example.com', 'hashed_pw11', '07011122233', 'guest'),
  (gen_random_uuid(), 'Laura', 'Scott', 'laura@example.com', 'hashed_pw12', '08099988877', 'host'),
  (gen_random_uuid(), 'Michael', 'Evans', 'michael@example.com', 'hashed_pw13', '08077766655', 'guest'),
  (gen_random_uuid(), 'Nina', 'Clark', 'nina@example.com', 'hashed_pw14', '08155544433', 'host'),
  (gen_random_uuid(), 'Oscar', 'Wright', 'oscar@example.com', 'hashed_pw15', '07044433322', 'guest'),
  (gen_random_uuid(), 'Paula', 'Lewis', 'paula@example.com', 'hashed_pw16', '08033322211', 'guest'),
  (gen_random_uuid(), 'Quentin', 'Hall', 'quentin@example.com', 'hashed_pw17', '08088877766', 'host'),
  (gen_random_uuid(), 'Rachel', 'Allen', 'rachel@example.com', 'hashed_pw18', '07022211100', 'guest'),
  (gen_random_uuid(), 'Sam', 'Young', 'sam@example.com', 'hashed_pw19', '08011100099', 'guest'),
  (gen_random_uuid(), 'Tina', 'King', 'tina@example.com', 'hashed_pw20', '08166655544', 'host'),
  (gen_random_uuid(), 'Umar', 'Ahmed', 'umar@example.com', 'hashed_pw21', '07055544433', 'guest'),
  (gen_random_uuid(), 'Vera', 'Nelson', 'vera@example.com', 'hashed_pw22', '08044433322', 'guest'),
  (gen_random_uuid(), 'William', 'Cole', 'william@example.com', 'hashed_pw23', '08133322211', 'host'),
  (gen_random_uuid(), 'Xavier', 'Bennett', 'xavier@example.com', 'hashed_pw24', '07022211199', 'guest'),
  (gen_random_uuid(), 'Yvonne', 'Foster', 'yvonne@example.com', 'hashed_pw25', '08111100088', 'guest'),
  (gen_random_uuid(), 'Zach', 'Morgan', 'zach@example.com', 'hashed_pw26', '07066655544', 'host'),
  (gen_random_uuid(), 'Anita', 'Reed', 'anita@example.com', 'hashed_pw27', '08122233344', 'guest'),
  (gen_random_uuid(), 'Brian', 'Hughes', 'brian@example.com', 'hashed_pw28', '08144455566', 'guest'),
  (gen_random_uuid(), 'Cathy', 'Powell', 'cathy@example.com', 'hashed_pw29', '08055566677', 'host'),
  (gen_random_uuid(), 'David', 'Peterson', 'david@example.com', 'hashed_pw30', '08166677788', 'guest'),
  (gen_random_uuid(), 'Ella', 'Ward', 'ella@example.com', 'hashed_pw31', '07077788899', 'host'),
  (gen_random_uuid(), 'Frank', 'Bell', 'frank@example.com', 'hashed_pw32', '07088899900', 'guest'),
  (gen_random_uuid(), 'Grace', 'Cook', 'grace@example.com', 'hashed_pw33', '08199900011', 'guest'),
  (gen_random_uuid(), 'Harry', 'Ross', 'harry@example.com', 'hashed_pw34', '08000011122', 'host'),
  (gen_random_uuid(), 'Isabel', 'Price', 'isabel@example.com', 'hashed_pw35', '08111122233', 'guest'),
  (gen_random_uuid(), 'Jack', 'Long', 'jack@example.com', 'hashed_pw36', '07022233344', 'guest'),
  (gen_random_uuid(), 'Kara', 'Bailey', 'kara@example.com', 'hashed_pw37', '08133344455', 'host'),
  (gen_random_uuid(), 'Liam', 'Rivera', 'liam@example.com', 'hashed_pw38', '08044455566', 'guest'),
  (gen_random_uuid(), 'Mona', 'Gonzalez', 'mona@example.com', 'hashed_pw39', '07055566677', 'host'),
  (gen_random_uuid(), 'Noah', 'Bryant', 'noah@example.com', 'hashed_pw40', '08166677788', 'guest'),
  (gen_random_uuid(), 'Olivia', 'Russell', 'olivia@example.com', 'hashed_pw41', '08177788899', 'guest'),
  (gen_random_uuid(), 'Peter', 'Griffin', 'peter@example.com', 'hashed_pw42', '08088899900', 'host'),
  (gen_random_uuid(), 'Queen', 'Diaz', 'queen@example.com', 'hashed_pw43', '07099900011', 'guest'),
  (gen_random_uuid(), 'Ray', 'Cruz', 'ray@example.com', 'hashed_pw44', '08100011122', 'guest'),
  (gen_random_uuid(), 'Sara', 'Ortiz', 'sara@example.com', 'hashed_pw45', '08011122233', 'host'),
  (gen_random_uuid(), 'Tom', 'Mitchell', 'tom@example.com', 'hashed_pw46', '08122233344', 'guest'),
  (gen_random_uuid(), 'Uma', 'Perez', 'uma@example.com', 'hashed_pw47', '07033344455', 'guest'),
  (gen_random_uuid(), 'Victor', 'Hayes', 'victor@example.com', 'hashed_pw48', '08144455566', 'host'),
  (gen_random_uuid(), 'Wendy', 'Barnes', 'wendy@example.com', 'hashed_pw49', '08155566677', 'guest'),
  (gen_random_uuid(), 'Xena', 'Chapman', 'xena@example.com', 'hashed_pw50', '08066677788', 'guest');

-- --------------------------
-- PROPERTIES (3+ per host)
-- --------------------------
-- Bob (host)
INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT gen_random_uuid(), id, 'Cozy Apartment in Lagos', 'Modern 2-bedroom near Victoria Island.', 'Lagos, Nigeria', 35000.00
FROM users WHERE email = 'bob@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT gen_random_uuid(), id, 'Beach House in Accra', 'Beachfront villa with private pool.', 'Accra, Ghana', 50000.00
FROM users WHERE email = 'bob@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT gen_random_uuid(), id, 'City Flat in Abuja', 'Compact apartment in city center.', 'Abuja, Nigeria', 28000.00
FROM users WHERE email = 'bob@example.com';

-- Edward (host)
INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT gen_random_uuid(), id, 'Luxury Loft in Abuja', 'Spacious loft with skyline view.', 'Abuja, Nigeria', 40000.00
FROM users WHERE email = 'edward@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT gen_random_uuid(), id, 'Business Suite in Lagos', 'Executive suite near CBD.', 'Lagos, Nigeria', 60000.00
FROM users WHERE email = 'edward@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT gen_random_uuid(), id, 'Villa in Accra', 'Private villa with large garden.', 'Accra, Ghana', 55000.00
FROM users WHERE email = 'edward@example.com';

-- Helen (host)
INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT gen_random_uuid(), id, 'Rustic Cabin in Nairobi', 'Wood cabin with forest view.', 'Nairobi, Kenya', 25000.00
FROM users WHERE email = 'helen@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT gen_random_uuid(), id, 'Safari Lodge in Arusha', 'Lodge close to Serengeti Park.', 'Arusha, Tanzania', 45000.00
FROM users WHERE email = 'helen@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT gen_random_uuid(), id, 'Lake House in Kisumu', 'Beautiful lake view house.', 'Kisumu, Kenya', 30000.00
FROM users WHERE email = 'helen@example.com';

-- Ian (host)
INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT gen_random_uuid(), id, 'Downtown Studio in Nairobi', 'Perfect for solo travelers.', 'Nairobi, Kenya', 20000.00
FROM users WHERE email = 'ian@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT gen_random_uuid(), id, 'Hilltop Bungalow in Kampala', 'Great family space with view.', 'Kampala, Uganda', 27000.00
FROM users WHERE email = 'ian@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT gen_random_uuid(), id, 'Farm Stay in Eldoret', 'Experience countryside living.', 'Eldoret, Kenya', 22000.00
FROM users WHERE email = 'ian@example.com';

-- Laura (host)
INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT gen_random_uuid(), id, 'Penthouse in Lagos', 'Modern penthouse with rooftop pool.', 'Lagos, Nigeria', 75000.00
FROM users WHERE email = 'laura@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT gen_random_uuid(), id, 'Coastal Retreat in Mombasa', 'Seaside retreat with ocean view.', 'Mombasa, Kenya', 38000.00
FROM users WHERE email = 'laura@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT gen_random_uuid(), id, 'Apartment in Kumasi', 'Close to city attractions.', 'Kumasi, Ghana', 32000.00
FROM users WHERE email = 'laura@example.com';

-- Nina (host)
INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT gen_random_uuid(), id, 'Villa in Dakar', 'Luxurious 4-bedroom villa.', 'Dakar, Senegal', 58000.00
FROM users WHERE email = 'nina@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT gen_random_uuid(), id, 'Apartment in Abidjan', 'Chic apartment in Plateau.', 'Abidjan, Ivory Coast', 40000.00
FROM users WHERE email = 'nina@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT gen_random_uuid(), id, 'Townhouse in Banjul', 'Spacious townhouse with garden.', 'Banjul, Gambia', 31000.00
FROM users WHERE email = 'nina@example.com';

-- Quentin (host)
INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT gen_random_uuid(), id, 'Studio in Cape Town', 'Trendy studio downtown.', 'Cape Town, South Africa', 29000.00
FROM users WHERE email = 'quentin@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT gen_random_uuid(), id, 'Cottage in Stellenbosch', 'Vineyard-side cottage.', 'Stellenbosch, South Africa', 34000.00
FROM users WHERE email = 'quentin@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT gen_random_uuid(), id, 'Beach Apartment in Durban', 'Modern apartment with beach access.', 'Durban, South Africa', 36000.00
FROM users WHERE email = 'quentin@example.com';

-- ==========================
-- PART 2: BOOKINGS & PAYMENTS
-- ==========================

-- --------------------------
-- BOOKINGS
-- --------------------------

-- Alice (guest) books Bob's Lagos Apartment (confirmed)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2025-09-10', '2025-09-15', 5 * p.price_per_night, 'confirmed'
FROM users u
JOIN properties p ON p.name = 'Cozy Apartment in Lagos'
WHERE u.email = 'alice@example.com';

-- Alice books Edward's Villa in Accra (pending)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2025-11-01', '2025-11-05', 4 * p.price_per_night, 'pending'
FROM users u
JOIN properties p ON p.name = 'Villa in Accra'
WHERE u.email = 'alice@example.com';

-- Diana (guest) books Helen’s Rustic Cabin (canceled)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2025-09-20', '2025-09-25', 5 * p.price_per_night, 'canceled'
FROM users u
JOIN properties p ON p.name = 'Rustic Cabin in Nairobi'
WHERE u.email = 'diana@example.com';

-- George (guest) books Edward’s Luxury Loft (confirmed)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2025-10-01', '2025-10-05', 4 * p.price_per_night, 'confirmed'
FROM users u
JOIN properties p ON p.name = 'Luxury Loft in Abuja'
WHERE u.email = 'george@example.com';

-- Fiona (guest) books Laura’s Penthouse in Lagos (pending)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2025-12-01', '2025-12-04', 3 * p.price_per_night, 'pending'
FROM users u
JOIN properties p ON p.name = 'Penthouse in Lagos'
WHERE u.email = 'fiona@example.com';

-- Kevin (guest) books Quentin’s Cottage in Stellenbosch (confirmed)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2025-11-10', '2025-11-14', 4 * p.price_per_night, 'confirmed'
FROM users u
JOIN properties p ON p.name = 'Cottage in Stellenbosch'
WHERE u.email = 'kevin@example.com';

-- Michael (guest) books Nina’s Villa in Dakar (confirmed)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2025-11-15', '2025-11-19', 4 * p.price_per_night, 'confirmed'
FROM users u
JOIN properties p ON p.name = 'Villa in Dakar'
WHERE u.email = 'michael@example.com';

-- Oscar (guest) books Helen’s Lake House in Kisumu (canceled)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2025-12-20', '2025-12-25', 5 * p.price_per_night, 'canceled'
FROM users u
JOIN properties p ON p.name = 'Lake House in Kisumu'
WHERE u.email = 'oscar@example.com';

-- Rachel (guest) books Ian’s Downtown Studio in Nairobi (confirmed)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2025-12-01', '2025-12-03', 2 * p.price_per_night, 'confirmed'
FROM users u
JOIN properties p ON p.name = 'Downtown Studio in Nairobi'
WHERE u.email = 'rachel@example.com';

-- Sam (guest) books Laura’s Coastal Retreat in Mombasa (pending)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2025-12-10', '2025-12-14', 4 * p.price_per_night, 'pending'
FROM users u
JOIN properties p ON p.name = 'Coastal Retreat in Mombasa'
WHERE u.email = 'sam@example.com';

-- Umar (guest) books Edward’s Business Suite in Lagos (confirmed)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2025-12-15', '2025-12-17', 2 * p.price_per_night, 'confirmed'
FROM users u
JOIN properties p ON p.name = 'Business Suite in Lagos'
WHERE u.email = 'umar@example.com';

-- Vera (guest) books Quentin’s Beach Apartment in Durban (confirmed)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2025-12-18', '2025-12-22', 4 * p.price_per_night, 'confirmed'
FROM users u
JOIN properties p ON p.name = 'Beach Apartment in Durban'
WHERE u.email = 'vera@example.com';

-- William (host as guest) books Harry’s property (confirmed)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2025-09-25', '2025-09-28', 3 * p.price_per_night, 'confirmed'
FROM users u
JOIN properties p ON p.name = 'Seaside Villa in Cape Town'
WHERE u.email = 'william@example.com';

-- Yvonne (guest) books Laura’s Apartment in Kumasi (canceled)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2025-09-15', '2025-09-20', 5 * p.price_per_night, 'canceled'
FROM users u
JOIN properties p ON p.name = 'Apartment in Kumasi'
WHERE u.email = 'yvonne@example.com';

-- Zach (host as guest) books Sara’s property (pending)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2025-09-18', '2025-09-21', 3 * p.price_per_night, 'pending'
FROM users u
JOIN properties p ON p.name = 'Luxury Apartment in Abuja'
WHERE u.email = 'zach@example.com';

-- --------------------------
-- PAYMENTS (only confirmed bookings)
-- --------------------------

-- Alice payment (credit card)
INSERT INTO payments (id, booking_id, amount, payment_method)
SELECT gen_random_uuid(), b.id, b.total_price, 'credit_card'
FROM bookings b
JOIN users u ON b.user_id = u.id
WHERE u.email = 'alice@example.com' AND b.status = 'confirmed';

-- George payment (paypal)
INSERT INTO payments (id, booking_id, amount, payment_method)
SELECT gen_random_uuid(), b.id, b.total_price, 'paypal'
FROM bookings b
JOIN users u ON b.user_id = u.id
WHERE u.email = 'george@example.com' AND b.status = 'confirmed';

-- Kevin payment (stripe)
INSERT INTO payments (id, booking_id, amount, payment_method)
SELECT gen_random_uuid(), b.id, b.total_price, 'stripe'
FROM bookings b
JOIN users u ON b.user_id = u.id
WHERE u.email = 'kevin@example.com' AND b.status = 'confirmed';

-- Michael payment (credit card)
INSERT INTO payments (id, booking_id, amount, payment_method)
SELECT gen_random_uuid(), b.id, b.total_price, 'credit_card'
FROM bookings b
JOIN users u ON b.user_id = u.id
WHERE u.email = 'michael@example.com' AND b.status = 'confirmed';

-- Rachel payment (paypal)
INSERT INTO payments (id, booking_id, amount, payment_method)
SELECT gen_random_uuid(), b.id, b.total_price, 'paypal'
FROM bookings b
JOIN users u ON b.user_id = u.id
WHERE u.email = 'rachel@example.com' AND b.status = 'confirmed';

-- Umar payment (stripe)
INSERT INTO payments (id, booking_id, amount, payment_method)
SELECT gen_random_uuid(), b.id, b.total_price, 'stripe'
FROM bookings b
JOIN users u ON b.user_id = u.id
WHERE u.email = 'umar@example.com' AND b.status = 'confirmed';

-- Vera payment (credit card)
INSERT INTO payments (id, booking_id, amount, payment_method)
SELECT gen_random_uuid(), b.id, b.total_price, 'credit_card'
FROM bookings b
JOIN users u ON b.user_id = u.id
WHERE u.email = 'vera@example.com' AND b.status = 'confirmed';

-- William payment (paypal)
INSERT INTO payments (id, booking_id, amount, payment_method)
SELECT gen_random_uuid(), b.id, b.total_price, 'paypal'
FROM bookings b
JOIN users u ON b.user_id = u.id
WHERE u.email = 'william@example.com' AND b.status = 'confirmed';

-- ==========================
-- EXPANDED BOOKINGS & PAYMENTS (ALL USERS)
-- ==========================

-- Thomas (guest) books Helen's Rustic Cabin (confirmed)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2025-09-05', '2025-09-08', 3 * p.price_per_night, 'confirmed'
FROM users u
JOIN properties p ON p.name = 'Rustic Cabin in Nairobi'
WHERE u.email = 'thomas@example.com';

-- Thomas payment (credit_card)
INSERT INTO payments (id, booking_id, amount, payment_method)
SELECT gen_random_uuid(), b.id, b.total_price, 'credit_card'
FROM bookings b
JOIN users u ON b.user_id = u.id
WHERE u.email = 'thomas@example.com' AND b.status = 'confirmed';

-- Sophia (guest) books Edward’s Business Suite (pending)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2025-10-02', '2025-10-04', 2 * p.price_per_night, 'pending'
FROM users u
JOIN properties p ON p.name = 'Business Suite in Lagos'
WHERE u.email = 'sophia@example.com';

-- Xavier (guest) books Laura’s Penthouse in Lagos (confirmed)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2025-10-12', '2025-10-16', 4 * p.price_per_night, 'confirmed'
FROM users u
JOIN properties p ON p.name = 'Penthouse in Lagos'
WHERE u.email = 'xavier@example.com';

-- Xavier payment (paypal)
INSERT INTO payments (id, booking_id, amount, payment_method)
SELECT gen_random_uuid(), b.id, b.total_price, 'paypal'
FROM bookings b
JOIN users u ON b.user_id = u.id
WHERE u.email = 'xavier@example.com' AND b.status = 'confirmed';

-- Jessica (guest) books Nina’s Villa in Dakar (canceled)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2025-10-20', '2025-10-25', 5 * p.price_per_night, 'canceled'
FROM users u
JOIN properties p ON p.name = 'Villa in Dakar'
WHERE u.email = 'jessica@example.com';

-- Paul (guest) books Quentin’s Beach Apartment (confirmed)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2025-10-18', '2025-10-21', 3 * p.price_per_night, 'confirmed'
FROM users u
JOIN properties p ON p.name = 'Beach Apartment in Durban'
WHERE u.email = 'paul@example.com';

-- Paul payment (stripe)
INSERT INTO payments (id, booking_id, amount, payment_method)
SELECT gen_random_uuid(), b.id, b.total_price, 'stripe'
FROM bookings b
JOIN users u ON b.user_id = u.id
WHERE u.email = 'paul@example.com' AND b.status = 'confirmed';

-- Carol (guest) books Harry’s Seaside Villa in Cape Town (pending)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2025-11-01', '2025-11-05', 4 * p.price_per_night, 'pending'
FROM users u
JOIN properties p ON p.name = 'Seaside Villa in Cape Town'
WHERE u.email = 'carol@example.com';

-- Dennis (guest) books Sara’s Luxury Apartment in Abuja (confirmed)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2025-11-05', '2025-11-08', 3 * p.price_per_night, 'confirmed'
FROM users u
JOIN properties p ON p.name = 'Luxury Apartment in Abuja'
WHERE u.email = 'dennis@example.com';

-- Dennis payment (credit_card)
INSERT INTO payments (id, booking_id, amount, payment_method)
SELECT gen_random_uuid(), b.id, b.total_price, 'credit_card'
FROM bookings b
JOIN users u ON b.user_id = u.id
WHERE u.email = 'dennis@example.com' AND b.status = 'confirmed';

-- Irene (guest) books Ian’s Downtown Studio (confirmed)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2025-11-10', '2025-11-12', 2 * p.price_per_night, 'confirmed'
FROM users u
JOIN properties p ON p.name = 'Downtown Studio in Nairobi'
WHERE u.email = 'irene@example.com';

-- Irene payment (paypal)
INSERT INTO payments (id, booking_id, amount, payment_method)
SELECT gen_random_uuid(), b.id, b.total_price, 'paypal'
FROM bookings b
JOIN users u ON b.user_id = u.id
WHERE u.email = 'irene@example.com' AND b.status = 'confirmed';

-- Nathan (guest) books Laura’s Coastal Retreat (canceled)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2025-11-15', '2025-11-20', 5 * p.price_per_night, 'canceled'
FROM users u
JOIN properties p ON p.name = 'Coastal Retreat in Mombasa'
WHERE u.email = 'nathan@example.com';

-- Oliver (guest) books Helen’s Lake House in Kisumu (confirmed)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2025-11-22', '2025-11-26', 4 * p.price_per_night, 'confirmed'
FROM users u
JOIN properties p ON p.name = 'Lake House in Kisumu'
WHERE u.email = 'oliver@example.com';

-- Oliver payment (stripe)
INSERT INTO payments (id, booking_id, amount, payment_method)
SELECT gen_random_uuid(), b.id, b.total_price, 'stripe'
FROM bookings b
JOIN users u ON b.user_id = u.id
WHERE u.email = 'oliver@example.com' AND b.status = 'confirmed';

-- Patricia (guest) books Edward’s Villa in Accra (pending)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2025-12-02', '2025-12-06', 4 * p.price_per_night, 'pending'
FROM users u
JOIN properties p ON p.name = 'Villa in Accra'
WHERE u.email = 'patricia@example.com';

-- Quentin (host as guest) books Bob’s Cozy Apartment in Lagos (confirmed)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2025-12-10', '2025-12-12', 2 * p.price_per_night, 'confirmed'
FROM users u
JOIN properties p ON p.name = 'Cozy Apartment in Lagos'
WHERE u.email = 'quentin@example.com';

-- Quentin payment (paypal)
INSERT INTO payments (id, booking_id, amount, payment_method)
SELECT gen_random_uuid(), b.id, b.total_price, 'paypal'
FROM bookings b
JOIN users u ON b.user_id = u.id
WHERE u.email = 'quentin@example.com' AND b.status = 'confirmed';

-- ==========================
-- EXPANDED BOOKINGS & PAYMENTS (Batch 3)
-- ==========================

-- Steven (guest) books Quentin’s Cottage in Stellenbosch (confirmed)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2025-12-05', '2025-12-09', 4 * p.price_per_night, 'confirmed'
FROM users u
JOIN properties p ON p.name = 'Cottage in Stellenbosch'
WHERE u.email = 'steven@example.com';

-- Steven payment (credit_card)
INSERT INTO payments (id, booking_id, amount, payment_method)
SELECT gen_random_uuid(), b.id, b.total_price, 'credit_card'
FROM bookings b
JOIN users u ON b.user_id = u.id
WHERE u.email = 'steven@example.com' AND b.status = 'confirmed';

-- Teresa (guest) books Laura’s Apartment in Kumasi (pending)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2025-12-12', '2025-12-15', 3 * p.price_per_night, 'pending'
FROM users u
JOIN properties p ON p.name = 'Apartment in Kumasi'
WHERE u.email = 'teresa@example.com';

-- Uma (guest) books Sara’s Luxury Apartment in Abuja (confirmed)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2025-12-18', '2025-12-20', 2 * p.price_per_night, 'confirmed'
FROM users u
JOIN properties p ON p.name = 'Luxury Apartment in Abuja'
WHERE u.email = 'uma@example.com';

-- Uma payment (paypal)
INSERT INTO payments (id, booking_id, amount, payment_method)
SELECT gen_random_uuid(), b.id, b.total_price, 'paypal'
FROM bookings b
JOIN users u ON b.user_id = u.id
WHERE u.email = 'uma@example.com' AND b.status = 'confirmed';

-- Victor (guest) books Harry’s Seaside Villa in Cape Town (canceled)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2025-12-20', '2025-12-25', 5 * p.price_per_night, 'canceled'
FROM users u
JOIN properties p ON p.name = 'Seaside Villa in Cape Town'
WHERE u.email = 'victor@example.com';

-- Wendy (guest) books Edward’s Luxury Loft in Abuja (confirmed)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2025-12-22', '2025-12-26', 4 * p.price_per_night, 'confirmed'
FROM users u
JOIN properties p ON p.name = 'Luxury Loft in Abuja'
WHERE u.email = 'wendy@example.com';

-- Wendy payment (stripe)
INSERT INTO payments (id, booking_id, amount, payment_method)
SELECT gen_random_uuid(), b.id, b.total_price, 'stripe'
FROM bookings b
JOIN users u ON b.user_id = u.id
WHERE u.email = 'wendy@example.com' AND b.status = 'confirmed';

-- Xander (guest) books Helen’s Rustic Cabin (pending)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2026-01-02', '2026-01-06', 4 * p.price_per_night, 'pending'
FROM users u
JOIN properties p ON p.name = 'Rustic Cabin in Nairobi'
WHERE u.email = 'xander@example.com';

-- Yolanda (guest) books Nina’s Villa in Dakar (confirmed)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2026-01-10', '2026-01-14', 4 * p.price_per_night, 'confirmed'
FROM users u
JOIN properties p ON p.name = 'Villa in Dakar'
WHERE u.email = 'yolanda@example.com';

-- Yolanda payment (credit_card)
INSERT INTO payments (id, booking_id, amount, payment_method)
SELECT gen_random_uuid(), b.id, b.total_price, 'credit_card'
FROM bookings b
JOIN users u ON b.user_id = u.id
WHERE u.email = 'yolanda@example.com' AND b.status = 'confirmed';

-- Zachary (guest) books Laura’s Penthouse in Lagos (confirmed)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2026-01-15', '2026-01-18', 3 * p.price_per_night, 'confirmed'
FROM users u
JOIN properties p ON p.name = 'Penthouse in Lagos'
WHERE u.email = 'zachary@example.com';

-- Zachary payment (paypal)
INSERT INTO payments (id, booking_id, amount, payment_method)
SELECT gen_random_uuid(), b.id, b.total_price, 'paypal'
FROM bookings b
JOIN users u ON b.user_id = u.id
WHERE u.email = 'zachary@example.com' AND b.status = 'confirmed';

-- ==========================
-- EXPANDED BOOKINGS & PAYMENTS (Batch 4 - Final)
-- ==========================

-- Adrian (guest) books Bob’s Beach House in Accra (confirmed)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2026-02-01', '2026-02-06', 5 * p.price_per_night, 'confirmed'
FROM users u
JOIN properties p ON p.name = 'Beach House in Accra'
WHERE u.email = 'adrian@example.com';

INSERT INTO payments (id, booking_id, amount, payment_method)
SELECT gen_random_uuid(), b.id, b.total_price, 'paypal'
FROM bookings b
JOIN users u ON b.user_id = u.id
WHERE u.email = 'adrian@example.com' AND b.status = 'confirmed';

-- Bella (guest) books Quentin’s Cottage in Stellenbosch (pending)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2026-02-10', '2026-02-14', 4 * p.price_per_night, 'pending'
FROM users u
JOIN properties p ON p.name = 'Cottage in Stellenbosch'
WHERE u.email = 'bella@example.com';

-- Carlos (guest) books Edward’s Luxury Loft in Abuja (confirmed)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2026-02-15', '2026-02-20', 5 * p.price_per_night, 'confirmed'
FROM users u
JOIN properties p ON p.name = 'Luxury Loft in Abuja'
WHERE u.email = 'carlos@example.com';

INSERT INTO payments (id, booking_id, amount, payment_method)
SELECT gen_random_uuid(), b.id, b.total_price, 'credit_card'
FROM bookings b
JOIN users u ON b.user_id = u.id
WHERE u.email = 'carlos@example.com' AND b.status = 'confirmed';

-- Daisy (guest) books Harry’s Seaside Villa in Cape Town (canceled)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2026-02-25', '2026-03-02', 6 * p.price_per_night, 'canceled'
FROM users u
JOIN properties p ON p.name = 'Seaside Villa in Cape Town'
WHERE u.email = 'daisy@example.com';

-- Ethan (guest) books Sara’s Luxury Apartment in Abuja (confirmed)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2026-03-05', '2026-03-09', 4 * p.price_per_night, 'confirmed'
FROM users u
JOIN properties p ON p.name = 'Luxury Apartment in Abuja'
WHERE u.email = 'ethan@example.com';

INSERT INTO payments (id, booking_id, amount, payment_method)
SELECT gen_random_uuid(), b.id, b.total_price, 'stripe'
FROM bookings b
JOIN users u ON b.user_id = u.id
WHERE u.email = 'ethan@example.com' AND b.status = 'confirmed';

-- Fatima (guest) books Laura’s Penthouse in Lagos (pending)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2026-03-10', '2026-03-12', 2 * p.price_per_night, 'pending'
FROM users u
JOIN properties p ON p.name = 'Penthouse in Lagos'
WHERE u.email = 'fatima@example.com';

-- Gabriel (guest) books Helen’s Rustic Cabin in Nairobi (confirmed)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2026-03-15', '2026-03-18', 3 * p.price_per_night, 'confirmed'
FROM users u
JOIN properties p ON p.name = 'Rustic Cabin in Nairobi'
WHERE u.email = 'gabriel@example.com';

INSERT INTO payments (id, booking_id, amount, payment_method)
SELECT gen_random_uuid(), b.id, b.total_price, 'paypal'
FROM bookings b
JOIN users u ON b.user_id = u.id
WHERE u.email = 'gabriel@example.com' AND b.status = 'confirmed';

-- Hannah (guest) books Nina’s Villa in Dakar (canceled)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2026-03-20', '2026-03-25', 5 * p.price_per_night, 'canceled'
FROM users u
JOIN properties p ON p.name = 'Villa in Dakar'
WHERE u.email = 'hannah@example.com';

-- Ian (guest) books Laura’s Apartment in Kumasi (confirmed)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2026-03-28', '2026-04-02', 5 * p.price_per_night, 'confirmed'
FROM users u
JOIN properties p ON p.name = 'Apartment in Kumasi'
WHERE u.email = 'ian@example.com';

INSERT INTO payments (id, booking_id, amount, payment_method)
SELECT gen_random_uuid(), b.id, b.total_price, 'credit_card'
FROM bookings b
JOIN users u ON b.user_id = u.id
WHERE u.email = 'ian@example.com' AND b.status = 'confirmed';

-- Julia (guest) books Quentin’s Cottage in Stellenbosch (confirmed)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2026-04-05', '2026-04-08', 3 * p.price_per_night, 'confirmed'
FROM users u
JOIN properties p ON p.name = 'Cottage in Stellenbosch'
WHERE u.email = 'julia@example.com';

INSERT INTO payments (id, booking_id, amount, payment_method)
SELECT gen_random_uuid(), b.id, b.total_price, 'stripe'
FROM bookings b
JOIN users u ON b.user_id = u.id
WHERE u.email = 'julia@example.com' AND b.status = 'confirmed';

-- Kevin (guest) books Harry’s Seaside Villa in Cape Town (pending)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2026-04-10', '2026-04-14', 4 * p.price_per_night, 'pending'
FROM users u
JOIN properties p ON p.name = 'Seaside Villa in Cape Town'
WHERE u.email = 'kevin@example.com';

-- Linda (guest) books Edward’s Luxury Loft in Abuja (confirmed)
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id, '2026-04-15', '2026-04-18', 3 * p.price_per_night, 'confirmed'
FROM users u
JOIN properties p ON p.name = 'Luxury Loft in Abuja'
WHERE u.email = 'linda@example.com';

INSERT INTO payments (id, booking_id, amount, payment_method)
SELECT gen_random_uuid(), b.id, b.total_price, 'paypal'
FROM bookings b
JOIN users u ON b.user_id = u.id
WHERE u.email = 'linda@example.com' AND b.status = 'confirmed';

-- ==========================
-- REVIEWS (Part 3)
-- ==========================

-- Alice reviews Bob’s Cozy Apartment in Lagos
INSERT INTO reviews (id, property_id, user_id, rating, comment)
SELECT gen_random_uuid(), p.id, u.id, 5, 'Amazing stay! Very clean and host was super friendly.'
FROM properties p
JOIN users u ON u.email = 'alice@example.com'
WHERE p.name = 'Cozy Apartment in Lagos';

-- Diana reviews Beach House in Accra
INSERT INTO reviews (id, property_id, user_id, rating, comment)
SELECT gen_random_uuid(), p.id, u.id, 4, 'Beautiful house but check-in was a bit delayed.'
FROM properties p
JOIN users u ON u.email = 'diana@example.com'
WHERE p.name = 'Beach House in Accra';

-- George reviews Edward’s Loft
INSERT INTO reviews (id, property_id, user_id, rating, comment)
SELECT gen_random_uuid(), p.id, u.id, 4, 'Great stay, but WiFi could be faster.'
FROM properties p
JOIN users u ON u.email = 'george@example.com'
WHERE p.name = 'Luxury Loft in Abuja';

-- Fiona reviews Helen’s Cabin
INSERT INTO reviews (id, property_id, user_id, rating, comment)
SELECT gen_random_uuid(), p.id, u.id, 3, 'Cozy spot but booking got canceled last minute.'
FROM properties p
JOIN users u ON u.email = 'fiona@example.com'
WHERE p.name = 'Rustic Cabin in Nairobi';

-- Yolanda reviews Nina’s Villa in Dakar
INSERT INTO reviews (id, property_id, user_id, rating, comment)
SELECT gen_random_uuid(), p.id, u.id, 5, 'Absolutely stunning villa with perfect ocean views.'
FROM properties p
JOIN users u ON u.email = 'yolanda@example.com'
WHERE p.name = 'Villa in Dakar';

-- Zachary reviews Laura’s Penthouse in Lagos
INSERT INTO reviews (id, property_id, user_id, rating, comment)
SELECT gen_random_uuid(), p.id, u.id, 4, 'Penthouse was stylish and spacious. Highly recommended.'
FROM properties p
JOIN users u ON u.email = 'zachary@example.com'
WHERE p.name = 'Penthouse in Lagos';

-- Julia reviews Quentin’s Cottage
INSERT INTO reviews (id, property_id, user_id, rating, comment)
SELECT gen_random_uuid(), p.id, u.id, 5, 'Charming cottage surrounded by vineyards. Perfect getaway.'
FROM properties p
JOIN users u ON u.email = 'julia@example.com'
WHERE p.name = 'Cottage in Stellenbosch';

-- Ian reviews Laura’s Apartment in Kumasi
INSERT INTO reviews (id, property_id, user_id, rating, comment)
SELECT gen_random_uuid(), p.id, u.id, 4, 'Nice apartment, good location in Kumasi.'
FROM properties p
JOIN users u ON u.email = 'ian@example.com'
WHERE p.name = 'Apartment in Kumasi';

-- Steven reviews Quentin’s Cottage
INSERT INTO reviews (id, property_id, user_id, rating, comment)
SELECT gen_random_uuid(), p.id, u.id, 5, 'Loved the peaceful environment and great host!'
FROM properties p
JOIN users u ON u.email = 'steven@example.com'
WHERE p.name = 'Cottage in Stellenbosch';

-- Adrian reviews Bob’s Beach House
INSERT INTO reviews (id, property_id, user_id, rating, comment)
SELECT gen_random_uuid(), p.id, u.id, 4, 'Great location near the beach, would stay again.'
FROM properties p
JOIN users u ON u.email = 'adrian@example.com'
WHERE p.name = 'Beach House in Accra';


-- ==========================
-- MESSAGES (Part 3)
-- ==========================

-- Alice asks Bob about availability
INSERT INTO messages (id, sender_id, recipient_id, message_body)
SELECT gen_random_uuid(), u1.id, u2.id,
'Hi Bob, is the apartment available for September 10th–15th?'
FROM users u1, users u2
WHERE u1.email = 'alice@example.com' AND u2.email = 'bob@example.com';

-- Bob replies
INSERT INTO messages (id, sender_id, recipient_id, message_body)
SELECT gen_random_uuid(), u1.id, u2.id,
'Yes Alice, it is available for those dates. Looking forward to hosting you.'
FROM users u1, users u2
WHERE u1.email = 'bob@example.com' AND u2.email = 'alice@example.com';

-- Fiona asks Helen about fireplace in Rustic Cabin
INSERT INTO messages (id, sender_id, recipient_id, message_body)
SELECT gen_random_uuid(), u1.id, u2.id,
'Hi Helen, does the cabin have a fireplace?'
FROM users u1, users u2
WHERE u1.email = 'fiona@example.com' AND u2.email = 'helen@example.com';

-- Helen replies
INSERT INTO messages (id, sender_id, recipient_id, message_body)
SELECT gen_random_uuid(), u1.id, u2.id,
'Yes, the cabin has a fireplace and we provide firewood.'
FROM users u1, users u2
WHERE u1.email = 'helen@example.com' AND u2.email = 'fiona@example.com';

-- George asks Edward about parking
INSERT INTO messages (id, sender_id, recipient_id, message_body)
SELECT gen_random_uuid(), u1.id, u2.id,
'Hi Edward, is parking included with the loft?'
FROM users u1, users u2
WHERE u1.email = 'george@example.com' AND u2.email = 'edward@example.com';

-- Edward replies
INSERT INTO messages (id, sender_id, recipient_id, message_body)
SELECT gen_random_uuid(), u1.id, u2.id,
'Yes, there is secure underground parking available for guests.'
FROM users u1, users u2
WHERE u1.email = 'edward@example.com' AND u2.email = 'george@example.com';

-- Yolanda asks Nina about pool access
INSERT INTO messages (id, sender_id, recipient_id, message_body)
SELECT gen_random_uuid(), u1.id, u2.id,
'Hi Nina, does the villa have a private pool?'
FROM users u1, users u2
WHERE u1.email = 'yolanda@example.com' AND u2.email = 'nina@example.com';

-- Nina replies
INSERT INTO messages (id, sender_id, recipient_id, message_body)
SELECT gen_random_uuid(), u1.id, u2.id,
'Yes Yolanda, it has a private pool with ocean view.'
FROM users u1, users u2
WHERE u1.email = 'nina@example.com' AND u2.email = 'yolanda@example.com';

-- ==========================
-- SEED DATA: USERS (50 total)
-- ==========================

-- Enable pgcrypto for UUID generation
CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- --------------------------
-- USERS (guests, hosts, admins)
-- --------------------------
INSERT INTO users (id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  -- Admins
  (gen_random_uuid(), 'Charlie', 'Brown', 'charlie.brown@example.com', 'hashed_pw1', '08010000001', 'admin'),
  (gen_random_uuid(), 'Grace', 'Hopper', 'grace.hopper@example.com', 'hashed_pw2', '08010000002', 'admin'),

  -- Hosts
  (gen_random_uuid(), 'Bob', 'Smith', 'bob.smith@example.com', 'hashed_pw3', '08020000001', 'host'),
  (gen_random_uuid(), 'Edward', 'Green', 'edward.green@example.com', 'hashed_pw4', '08020000002', 'host'),
  (gen_random_uuid(), 'Helen', 'Stone', 'helen.stone@example.com', 'hashed_pw5', '08020000003', 'host'),
  (gen_random_uuid(), 'Isaac', 'Newton', 'isaac.newton@example.com', 'hashed_pw6', '08020000004', 'host'),
  (gen_random_uuid(), 'Julia', 'Roberts', 'julia.roberts@example.com', 'hashed_pw7', '08020000005', 'host'),
  (gen_random_uuid(), 'Kevin', 'Hart', 'kevin.hart@example.com', 'hashed_pw8', '08020000006', 'host'),
  (gen_random_uuid(), 'Linda', 'Carter', 'linda.carter@example.com', 'hashed_pw9', '08020000007', 'host'),
  (gen_random_uuid(), 'Michael', 'Jordan', 'michael.jordan@example.com', 'hashed_pw10', '08020000008', 'host'),
  (gen_random_uuid(), 'Nina', 'Simone', 'nina.simone@example.com', 'hashed_pw11', '08020000009', 'host'),
  (gen_random_uuid(), 'Oscar', 'Wilde', 'oscar.wilde@example.com', 'hashed_pw12', '08020000010', 'host'),
  (gen_random_uuid(), 'Paula', 'Abdul', 'paula.abdul@example.com', 'hashed_pw13', '08020000011', 'host'),
  (gen_random_uuid(), 'Quincy', 'Jones', 'quincy.jones@example.com', 'hashed_pw14', '08020000012', 'host'),
  (gen_random_uuid(), 'Rachel', 'Adams', 'rachel.adams@example.com', 'hashed_pw15', '08020000013', 'host'),
  (gen_random_uuid(), 'Steven', 'King', 'steven.king@example.com', 'hashed_pw16', '08020000014', 'host'),

  -- Guests
  (gen_random_uuid(), 'Alice', 'Johnson', 'alice.johnson@example.com', 'hashed_pw17', '08030000001', 'guest'),
  (gen_random_uuid(), 'Diana', 'Miller', 'diana.miller@example.com', 'hashed_pw18', '08030000002', 'guest'),
  (gen_random_uuid(), 'Fiona', 'Adams', 'fiona.adams@example.com', 'hashed_pw19', '08030000003', 'guest'),
  (gen_random_uuid(), 'George', 'White', 'george.white@example.com', 'hashed_pw20', '08030000004', 'guest'),
  (gen_random_uuid(), 'Henry', 'Ford', 'henry.ford@example.com', 'hashed_pw21', '08030000005', 'guest'),
  (gen_random_uuid(), 'Isabel', 'Cruz', 'isabel.cruz@example.com', 'hashed_pw22', '08030000006', 'guest'),
  (gen_random_uuid(), 'Jack', 'Black', 'jack.black@example.com', 'hashed_pw23', '08030000007', 'guest'),
  (gen_random_uuid(), 'Karen', 'Gillan', 'karen.gillan@example.com', 'hashed_pw24', '08030000008', 'guest'),
  (gen_random_uuid(), 'Liam', 'Neeson', 'liam.neeson@example.com', 'hashed_pw25', '08030000009', 'guest'),
  (gen_random_uuid(), 'Maria', 'Lopez', 'maria.lopez@example.com', 'hashed_pw26', '08030000010', 'guest'),
  (gen_random_uuid(), 'Noah', 'Williams', 'noah.williams@example.com', 'hashed_pw27', '08030000011', 'guest'),
  (gen_random_uuid(), 'Olivia', 'Taylor', 'olivia.taylor@example.com', 'hashed_pw28', '08030000012', 'guest'),
  (gen_random_uuid(), 'Peter', 'Parker', 'peter.parker@example.com', 'hashed_pw29', '08030000013', 'guest'),
  (gen_random_uuid(), 'Queen', 'Latifah', 'queen.latifah@example.com', 'hashed_pw30', '08030000014', 'guest'),
  (gen_random_uuid(), 'Robert', 'Downey', 'robert.downey@example.com', 'hashed_pw31', '08030000015', 'guest'),
  (gen_random_uuid(), 'Sophia', 'Turner', 'sophia.turner@example.com', 'hashed_pw32', '08030000016', 'guest'),
  (gen_random_uuid(), 'Thomas', 'Shelby', 'thomas.shelby@example.com', 'hashed_pw33', '08030000017', 'guest'),
  (gen_random_uuid(), 'Uma', 'Thurman', 'uma.thurman@example.com', 'hashed_pw34', '08030000018', 'guest'),
  (gen_random_uuid(), 'Victor', 'Hugo', 'victor.hugo@example.com', 'hashed_pw35', '08030000019', 'guest'),
  (gen_random_uuid(), 'Wendy', 'Williams', 'wendy.williams@example.com', 'hashed_pw36', '08030000020', 'guest'),
  (gen_random_uuid(), 'Xander', 'Cage', 'xander.cage@example.com', 'hashed_pw37', '08030000021', 'guest'),
  (gen_random_uuid(), 'Yara', 'Shahidi', 'yara.shahidi@example.com', 'hashed_pw38', '08030000022', 'guest'),
  (gen_random_uuid(), 'Zack', 'Efron', 'zack.efron@example.com', 'hashed_pw39', '08030000023', 'guest'),
  (gen_random_uuid(), 'Abigail', 'Clark', 'abigail.clark@example.com', 'hashed_pw40', '08030000024', 'guest'),
  (gen_random_uuid(), 'Brandon', 'Lee', 'brandon.lee@example.com', 'hashed_pw41', '08030000025', 'guest'),
  (gen_random_uuid(), 'Cynthia', 'Morgan', 'cynthia.morgan@example.com', 'hashed_pw42', '08030000026', 'guest'),
  (gen_random_uuid(), 'David', 'Beckham', 'david.beckham@example.com', 'hashed_pw43', '08030000027', 'guest'),
  (gen_random_uuid(), 'Evelyn', 'Wright', 'evelyn.wright@example.com', 'hashed_pw44', '08030000028', 'guest'),
  (gen_random_uuid(), 'Frank', 'Sinatra', 'frank.sinatra@example.com', 'hashed_pw45', '08030000029', 'guest'),
  (gen_random_uuid(), 'Gina', 'Rodriguez', 'gina.rodriguez@example.com', 'hashed_pw46', '08030000030', 'guest'),
  (gen_random_uuid(), 'Harvey', 'Specter', 'harvey.specter@example.com', 'hashed_pw47', '08030000031', 'guest'),
  (gen_random_uuid(), 'Ivy', 'Watson', 'ivy.watson@example.com', 'hashed_pw48', '08030000032', 'guest'),
  (gen_random_uuid(), 'Jason', 'Momoa', 'jason.momoa@example.com', 'hashed_pw49', '08030000033', 'guest'),
  (gen_random_uuid(), 'Kylie', 'Jenner', 'kylie.jenner@example.com', 'hashed_pw50', '08030000034', 'guest');

-- ==========================
-- HOST: Bob Smith
-- ==========================

-- Properties
INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT gen_random_uuid(), id, 'Cozy Apartment in Lagos',
       'Modern 2-bedroom near Victoria Island.', 'Lagos, Nigeria', 35000.00
FROM users WHERE email='bob.smith@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT gen_random_uuid(), id, 'Beach House in Accra',
       'Beautiful beachfront villa with private pool.', 'Accra, Ghana', 50000.00
FROM users WHERE email='bob.smith@example.com';

-- Bookings
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id,
       '2025-09-12','2025-09-16',4*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Cozy Apartment in Lagos' AND u.email='alice.johnson@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id,
       '2025-10-01','2025-10-04',3*p.price_per_night,'pending'
FROM properties p, users u
WHERE p.name='Beach House in Accra' AND u.email='diana.prince@example.com';

-- ==========================
-- HOST: Bob Smith
-- ==========================

-- Properties
INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT gen_random_uuid(), id, 'Cozy Apartment in Lagos',
       'Modern 2-bedroom near Victoria Island.', 'Lagos, Nigeria', 35000.00
FROM users WHERE email='bob.smith@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT gen_random_uuid(), id, 'Beach House in Accra',
       'Beautiful beachfront villa with private pool.', 'Accra, Ghana', 50000.00
FROM users WHERE email='bob.smith@example.com';

-- Bookings
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id,
       '2025-09-12','2025-09-16',4*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Cozy Apartment in Lagos' AND u.email='alice.johnson@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id,
       '2025-10-01','2025-10-04',3*p.price_per_night,'pending'
FROM properties p, users u
WHERE p.name='Beach House in Accra' AND u.email='diana.prince@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id,
       '2026-01-05','2026-01-10',5*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Cozy Apartment in Lagos' AND u.email='fiona.gray@example.com';


-- ==========================
-- HOST: Edward Green
-- ==========================

-- Properties
INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT gen_random_uuid(), id, 'Modern Loft in Abuja',
       'Stylish loft in central Abuja with fast WiFi.', 'Abuja, Nigeria', 40000.00
FROM users WHERE email='edward.green@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT gen_random_uuid(), id, 'Countryside Villa in Nairobi',
       'Spacious villa with scenic views and large garden.', 'Nairobi, Kenya', 45000.00
FROM users WHERE email='edward.green@example.com';

-- Bookings
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id,
       '2025-11-10','2025-11-14',4*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Modern Loft in Abuja' AND u.email='george.white@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id,
       '2025-12-01','2025-12-03',2*p.price_per_night,'canceled'
FROM properties p, users u
WHERE p.name='Countryside Villa in Nairobi' AND u.email='harriet.jones@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id,
       '2026-02-15','2026-02-20',5*p.price_per_night,'pending'
FROM properties p, users u
WHERE p.name='Modern Loft in Abuja' AND u.email='ian.scott@example.com';


-- ==========================
-- HOST: Hannah Brown
-- ==========================

-- Properties
INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT gen_random_uuid(), id, 'Lakeview Cabin in Kigali',
       'Peaceful cabin near the lake, perfect for retreats.', 'Kigali, Rwanda', 30000.00
FROM users WHERE email='hannah.brown@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT gen_random_uuid(), id, 'City Apartment in Cape Town',
       'Central apartment with mountain views.', 'Cape Town, South Africa', 38000.00
FROM users WHERE email='hannah.brown@example.com';

-- Bookings
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id,
       '2025-08-18','2025-08-21',3*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Lakeview Cabin in Kigali' AND u.email='jessica.adams@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id,
       '2025-09-25','2025-09-30',5*p.price_per_night,'pending'
FROM properties p, users u
WHERE p.name='City Apartment in Cape Town' AND u.email='kevin.hughes@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.id, u.id,
       '2026-03-10','2026-03-14',4*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Lakeview Cabin in Kigali' AND u.email='linda.martin@example.com';

-- ==========================
-- HOST: Bob Smith
-- ==========================

-- Properties
INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT '11111111-1111-1111-1111-111111111111', id, 'Cozy Apartment in Lagos',
       'Modern 2-bedroom near Victoria Island.', 'Lagos, Nigeria', 35000.00
FROM users WHERE email='bob.smith@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT '22222222-2222-2222-2222-222222222222', id, 'Beach House in Accra',
       'Beautiful beachfront villa with private pool.', 'Accra, Ghana', 50000.00
FROM users WHERE email='bob.smith@example.com';

-- Bookings
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '33333333-3333-3333-3333-333333333333', p.id, u.id,
       '2025-09-12','2025-09-16',4*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Cozy Apartment in Lagos' AND u.email='alice.johnson@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '44444444-4444-4444-4444-444444444444', p.id, u.id,
       '2025-10-01','2025-10-04',3*p.price_per_night,'pending'
FROM properties p, users u
WHERE p.name='Beach House in Accra' AND u.email='diana.prince@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '55555555-5555-5555-5555-555555555555', p.id, u.id,
       '2026-01-05','2026-01-10',5*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Cozy Apartment in Lagos' AND u.email='fiona.gray@example.com';

-- ==========================
-- HOST: Edward Green
-- ==========================

-- Properties
INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT '66666666-6666-6666-6666-666666666666', id, 'Modern Loft in Abuja',
       'Stylish loft in central Abuja with fast WiFi.', 'Abuja, Nigeria', 40000.00
FROM users WHERE email='edward.green@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT '77777777-7777-7777-7777-777777777777', id, 'Countryside Villa in Nairobi',
       'Spacious villa with scenic views and large garden.', 'Nairobi, Kenya', 45000.00
FROM users WHERE email='edward.green@example.com';

-- Bookings
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '88888888-8888-8888-8888-888888888888', p.id, u.id,
       '2025-11-10','2025-11-14',4*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Modern Loft in Abuja' AND u.email='george.white@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '99999999-9999-9999-9999-999999999999', p.id, u.id,
       '2025-12-01','2025-12-03',2*p.price_per_night,'canceled'
FROM properties p, users u
WHERE p.name='Countryside Villa in Nairobi' AND u.email='harriet.jones@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', p.id, u.id,
       '2026-02-15','2026-02-20',5*p.price_per_night,'pending'
FROM properties p, users u
WHERE p.name='Modern Loft in Abuja' AND u.email='ian.scott@example.com';


-- ==========================
-- HOST: Hannah Brown
-- ==========================

-- Properties
INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', id, 'Lakeview Cabin in Kigali',
       'Peaceful cabin near the lake, perfect for retreats.', 'Kigali, Rwanda', 30000.00
FROM users WHERE email='hannah.brown@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT 'cccccccc-cccc-cccc-cccc-cccccccccccc', id, 'City Apartment in Cape Town',
       'Central apartment with mountain views.', 'Cape Town, South Africa', 38000.00
FROM users WHERE email='hannah.brown@example.com';

-- Bookings
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT 'dddddddd-dddd-dddd-dddd-dddddddddddd', p.id, u.id,
       '2025-08-18','2025-08-21',3*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Lakeview Cabin in Kigali' AND u.email='jessica.adams@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT 'eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee', p.id, u.id,
       '2025-09-25','2025-09-30',5*p.price_per_night,'pending'
FROM properties p, users u
WHERE p.name='City Apartment in Cape Town' AND u.email='kevin.hughes@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT 'ffffffff-ffff-ffff-ffff-ffffffffffff', p.id, u.id,
       '2026-03-10','2026-03-14',4*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Lakeview Cabin in Kigali' AND u.email='linda.martin@example.com';

-- ==========================
-- HOST: James Bond
-- ==========================

-- Properties
INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT '11111111-2222-3333-4444-555555555555', id, 'Penthouse in London',
       'Luxury penthouse with panoramic city views.', 'London, UK', 120000.00
FROM users WHERE email='james.bond@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT '22222222-3333-4444-5555-666666666666', id, 'Seaside Cottage in Brighton',
       'Charming cottage near the beach.', 'Brighton, UK', 60000.00
FROM users WHERE email='james.bond@example.com';

-- Bookings
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '33333333-4444-5555-6666-777777777777', p.id, u.id,
       '2025-07-12','2025-07-15',3*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Penthouse in London' AND u.email='natalie.harris@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '44444444-5555-6666-7777-888888888888', p.id, u.id,
       '2025-08-01','2025-08-05',4*p.price_per_night,'pending'
FROM properties p, users u
WHERE p.name='Seaside Cottage in Brighton' AND u.email='oscar.turner@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '55555555-6666-7777-8888-999999999999', p.id, u.id,
       '2026-01-20','2026-01-25',5*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Penthouse in London' AND u.email='paula.young@example.com';


-- ==========================
-- HOST: Karen Lee
-- ==========================

-- Properties
INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT '66666666-7777-8888-9999-aaaaaaaaaaaa', id, 'Skyline Apartment in Singapore',
       'High-rise apartment with Marina Bay view.', 'Singapore', 90000.00
FROM users WHERE email='karen.lee@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT '77777777-8888-9999-aaaa-bbbbbbbbbbbb', id, 'Zen Retreat in Kyoto',
       'Traditional Japanese house with garden.', 'Kyoto, Japan', 70000.00
FROM users WHERE email='karen.lee@example.com';

-- Bookings
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '88888888-9999-aaaa-bbbb-cccccccccccc', p.id, u.id,
       '2025-10-11','2025-10-15',4*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Skyline Apartment in Singapore' AND u.email='quentin.hall@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '99999999-aaaa-bbbb-cccc-dddddddddddd', p.id, u.id,
       '2025-11-05','2025-11-08',3*p.price_per_night,'pending'
FROM properties p, users u
WHERE p.name='Zen Retreat in Kyoto' AND u.email='rachel.king@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT 'aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee', p.id, u.id,
       '2026-02-18','2026-02-22',4*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Skyline Apartment in Singapore' AND u.email='steven.moore@example.com';


-- ==========================
-- HOST: Michael Stone
-- ==========================

-- Properties
INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT 'bbbbbbbb-cccc-dddd-eeee-ffffffffffff', id, 'Mountain Chalet in Aspen',
       'Luxury ski-in ski-out chalet.', 'Aspen, USA', 150000.00
FROM users WHERE email='michael.stone@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT 'cccccccc-dddd-eeee-ffff-000000000000', id, 'Desert Villa in Dubai',
       'Private villa with pool and desert views.', 'Dubai, UAE', 130000.00
FROM users WHERE email='michael.stone@example.com';

-- Bookings
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT 'dddddddd-eeee-ffff-0000-111111111111', p.id, u.id,
       '2025-12-20','2025-12-27',7*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Mountain Chalet in Aspen' AND u.email='tina.evans@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT 'eeeeeeee-ffff-0000-1111-222222222222', p.id, u.id,
       '2026-01-05','2026-01-10',5*p.price_per_night,'pending'
FROM properties p, users u
WHERE p.name='Desert Villa in Dubai' AND u.email='ursula.baker@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT 'ffffffff-0000-1111-2222-333333333333', p.id, u.id,
       '2026-03-02','2026-03-07',5*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Mountain Chalet in Aspen' AND u.email='victor.diaz@example.com';

-- ==========================
-- HOST: Olivia Grant
-- ==========================

-- Properties
INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT '11111111-aaaa-bbbb-cccc-444444444444', id, 'Riverside Flat in Paris',
       'Charming flat near the Seine, perfect for couples.', 'Paris, France', 95000.00
FROM users WHERE email='olivia.grant@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT '22222222-bbbb-cccc-dddd-555555555555', id, 'Alpine Lodge in Zurich',
       'Cozy lodge with mountain views and ski access.', 'Zurich, Switzerland', 110000.00
FROM users WHERE email='olivia.grant@example.com';

-- Bookings
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '33333333-cccc-dddd-eeee-666666666666', p.id, u.id,
       '2025-09-15','2025-09-20',5*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Riverside Flat in Paris' AND u.email='william.clark@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '44444444-dddd-eeee-ffff-777777777777', p.id, u.id,
       '2025-10-10','2025-10-14',4*p.price_per_night,'pending'
FROM properties p, users u
WHERE p.name='Alpine Lodge in Zurich' AND u.email='xavier.jones@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '55555555-eeee-ffff-0000-888888888888', p.id, u.id,
       '2026-01-25','2026-01-30',5*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Riverside Flat in Paris' AND u.email='yasmin.kelly@example.com';


-- ==========================
-- HOST: Peter Wright
-- ==========================

-- Properties
INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT '66666666-ffff-0000-1111-999999999999', id, 'Safari Lodge in Nairobi',
       'Wildlife lodge with safari tours included.', 'Nairobi, Kenya', 85000.00
FROM users WHERE email='peter.wright@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT '77777777-0000-1111-2222-aaaaaaaaaaaa', id, 'Harbor View Condo in Sydney',
       'Condo overlooking Sydney Opera House.', 'Sydney, Australia', 125000.00
FROM users WHERE email='peter.wright@example.com';

-- Bookings
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '88888888-1111-2222-3333-bbbbbbbbbbbb', p.id, u.id,
       '2025-07-05','2025-07-09',4*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Safari Lodge in Nairobi' AND u.email='zoe.martinez@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '99999999-2222-3333-4444-cccccccccccc', p.id, u.id,
       '2025-08-22','2025-08-27',5*p.price_per_night,'pending'
FROM properties p, users u
WHERE p.name='Harbor View Condo in Sydney' AND u.email='adam.nelson@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT 'aaaaaaaa-3333-4444-5555-dddddddddddd', p.id, u.id,
       '2026-02-12','2026-02-17',5*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Safari Lodge in Nairobi' AND u.email='bella.owens@example.com';


-- ==========================
-- HOST: Sophia Clark
-- ==========================

-- Properties
INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT 'bbbbbbbb-4444-5555-6666-eeeeeeeeeeee', id, 'Island Villa in Bali',
       'Private villa with infinity pool and ocean view.', 'Bali, Indonesia', 100000.00
FROM users WHERE email='sophia.clark@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT 'cccccccc-5555-6666-7777-ffffffffffff', id, 'Downtown Loft in New York',
       'Trendy loft in Manhattan with skyline view.', 'New York, USA', 140000.00
FROM users WHERE email='sophia.clark@example.com';

-- Bookings
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT 'dddddddd-6666-7777-8888-000000000000', p.id, u.id,
       '2025-09-01','2025-09-05',4*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Island Villa in Bali' AND u.email='chris.patterson@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT 'eeeeeeee-7777-8888-9999-111111111111', p.id, u.id,
       '2025-11-15','2025-11-20',5*p.price_per_night,'pending'
FROM properties p, users u
WHERE p.name='Downtown Loft in New York' AND u.email='david.quinn@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT 'ffffffff-8888-9999-aaaa-222222222222', p.id, u.id,
       '2026-03-05','2026-03-10',5*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Island Villa in Bali' AND u.email='ella.ross@example.com';

-- ==========================
-- HOST: Thomas Baker
-- ==========================

-- Properties
INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT '11111111-6666-7777-8888-333333333333', id, 'Countryside Cottage in Dublin',
       'Peaceful cottage surrounded by greenery.', 'Dublin, Ireland', 75000.00
FROM users WHERE email='thomas.baker@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT '22222222-7777-8888-9999-444444444444', id, 'Historic Townhouse in Edinburgh',
       'Classic townhouse with cobblestone charm.', 'Edinburgh, UK', 85000.00
FROM users WHERE email='thomas.baker@example.com';

-- Bookings
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '33333333-8888-9999-aaaa-555555555555', p.id, u.id,
       '2025-06-10','2025-06-15',5*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Countryside Cottage in Dublin' AND u.email='frank.simmons@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '44444444-9999-aaaa-bbbb-666666666666', p.id, u.id,
       '2025-07-20','2025-07-23',3*p.price_per_night,'pending'
FROM properties p, users u
WHERE p.name='Historic Townhouse in Edinburgh' AND u.email='george.thomas@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '55555555-aaaa-bbbb-cccc-777777777777', p.id, u.id,
       '2026-01-10','2026-01-14',4*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Countryside Cottage in Dublin' AND u.email='hannah.underwood@example.com';


-- ==========================
-- HOST: Uma Lopez
-- ==========================

-- Properties
INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT '66666666-bbbb-cccc-dddd-888888888888', id, 'Beachfront Bungalow in Rio',
       'Relaxing bungalow steps from the ocean.', 'Rio de Janeiro, Brazil', 95000.00
FROM users WHERE email='uma.lopez@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT '77777777-cccc-dddd-eeee-999999999999', id, 'City Center Loft in Madrid',
       'Modern loft in the heart of Madrid.', 'Madrid, Spain', 87000.00
FROM users WHERE email='uma.lopez@example.com';

-- Bookings
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '88888888-dddd-eeee-ffff-aaaaaaaaaaaa', p.id, u.id,
       '2025-09-02','2025-09-06',4*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Beachfront Bungalow in Rio' AND u.email='ian.vargas@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '99999999-eeee-ffff-0000-bbbbbbbbbbbb', p.id, u.id,
       '2025-11-08','2025-11-12',4*p.price_per_night,'pending'
FROM properties p, users u
WHERE p.name='City Center Loft in Madrid' AND u.email='julia.wilson@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT 'aaaaaaaa-ffff-0000-1111-cccccccccccc', p.id, u.id,
       '2026-03-01','2026-03-05',4*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Beachfront Bungalow in Rio' AND u.email='kevin.xavier@example.com';


-- ==========================
-- HOST: Victor Scott
-- ==========================

-- Properties
INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT 'bbbbbbbb-0000-1111-2222-dddddddddddd', id, 'Wine Country Villa in Tuscany',
       'Elegant villa surrounded by vineyards.', 'Tuscany, Italy', 120000.00
FROM users WHERE email='victor.scott@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT 'cccccccc-1111-2222-3333-eeeeeeeeeeee', id, 'City Penthouse in Berlin',
       'Modern penthouse with rooftop terrace.', 'Berlin, Germany', 110000.00
FROM users WHERE email='victor.scott@example.com';

-- Bookings
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT 'dddddddd-2222-3333-4444-ffffffffffff', p.id, u.id,
       '2025-08-10','2025-08-15',5*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Wine Country Villa in Tuscany' AND u.email='lisa.young@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT 'eeeeeeee-3333-4444-5555-000000000000', p.id, u.id,
       '2025-12-05','2025-12-09',4*p.price_per_night,'pending'
FROM properties p, users u
WHERE p.name='City Penthouse in Berlin' AND u.email='mark.zimmer@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT 'ffffffff-4444-5555-6666-111111111111', p.id, u.id,
       '2026-02-20','2026-02-25',5*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Wine Country Villa in Tuscany' AND u.email='nina.adams@example.com';

-- ==========================
-- HOST: Wendy Adams
-- ==========================

-- Properties
INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT '12121212-aaaa-bbbb-cccc-222222222222', id, 'Mountain Chalet in Aspen',
       'Cozy chalet with ski-in/ski-out access.', 'Aspen, USA', 135000.00
FROM users WHERE email='wendy.adams@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT '13131313-bbbb-cccc-dddd-333333333333', id, 'Lake House in Ontario',
       'Spacious lakefront house with private dock.', 'Ontario, Canada', 98000.00
FROM users WHERE email='wendy.adams@example.com';

-- Bookings
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '14141414-cccc-dddd-eeee-444444444444', p.id, u.id,
       '2025-07-05','2025-07-10',5*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Mountain Chalet in Aspen' AND u.email='oliver.brown@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '15151515-dddd-eeee-ffff-555555555555', p.id, u.id,
       '2025-08-12','2025-08-16',4*p.price_per_night,'pending'
FROM properties p, users u
WHERE p.name='Lake House in Ontario' AND u.email='paula.clark@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '16161616-eeee-ffff-0000-666666666666', p.id, u.id,
       '2026-01-15','2026-01-20',5*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Mountain Chalet in Aspen' AND u.email='quentin.davis@example.com';


-- ==========================
-- HOST: Xavier Green
-- ==========================

-- Properties
INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT '17171717-ffff-0000-1111-777777777777', id, 'Safari Lodge in Nairobi',
       'Luxury safari lodge near national park.', 'Nairobi, Kenya', 150000.00
FROM users WHERE email='xavier.green@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT '18181818-0000-1111-2222-888888888888', id, 'Modern Condo in Cape Town',
       'Chic condo with ocean views and pool.', 'Cape Town, South Africa', 105000.00
FROM users WHERE email='xavier.green@example.com';

-- Bookings
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '19191919-1111-2222-3333-999999999999', p.id, u.id,
       '2025-09-18','2025-09-22',4*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Safari Lodge in Nairobi' AND u.email='rachel.evans@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '20202020-2222-3333-4444-aaaaaaaaaaaa', p.id, u.id,
       '2025-10-25','2025-10-29',4*p.price_per_night,'pending'
FROM properties p, users u
WHERE p.name='Modern Condo in Cape Town' AND u.email='samuel.foster@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '21212121-3333-4444-5555-bbbbbbbbbbbb', p.id, u.id,
       '2026-02-08','2026-02-12',4*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Safari Lodge in Nairobi' AND u.email='tina.garcia@example.com';


-- ==========================
-- HOST: Yara Martinez
-- ==========================

-- Properties
INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT '22222222-4444-5555-6666-cccccccccccc', id, 'Desert Villa in Dubai',
       'Luxurious villa with private pool in the desert.', 'Dubai, UAE', 200000.00
FROM users WHERE email='yara.martinez@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT '23232323-5555-6666-7777-dddddddddddd', id, 'City Loft in Barcelona',
       'Trendy loft with modern design in city center.', 'Barcelona, Spain', 115000.00
FROM users WHERE email='yara.martinez@example.com';

-- Bookings
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '24242424-6666-7777-8888-eeeeeeeeeeee', p.id, u.id,
       '2025-06-22','2025-06-26',4*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Desert Villa in Dubai' AND u.email='ursula.harris@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '25252525-7777-8888-9999-ffffffffffff', p.id, u.id,
       '2025-07-28','2025-08-01',4*p.price_per_night,'pending'
FROM properties p, users u
WHERE p.name='City Loft in Barcelona' AND u.email='victor.jones@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '26262626-8888-9999-aaaa-000000000000', p.id, u.id,
       '2026-03-12','2026-03-16',4*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Desert Villa in Dubai' AND u.email='wendy.kim@example.com';

-- ==========================
-- HOST: Zachary Lee
-- ==========================

-- Properties
INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT '11111111-9999-aaaa-bbbb-111111111111', id, 'Tropical Villa in Phuket',
       'Private villa with beach access and pool.', 'Phuket, Thailand', 130000.00
FROM users WHERE email='zachary.lee@example.com';

INSERT INTO properties (id, host_id, name, description, location, price_per_night)
SELECT '22222222-aaaa-bbbb-cccc-222222222222', id, 'Penthouse in Toronto',
       'Modern penthouse in downtown Toronto.', 'Toronto, Canada', 140000.00
FROM users WHERE email='zachary.lee@example.com';

-- Bookings for Tropical Villa in Phuket
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '33333333-bbbb-cccc-dddd-333333333333', p.id, u.id,
       '2025-07-05','2025-07-10',5*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Tropical Villa in Phuket' AND u.email='alice.jones@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '44444444-cccc-dddd-eeee-444444444444', p.id, u.id,
       '2025-08-01','2025-08-05',5*p.price_per_night,'pending'
FROM properties p, users u
WHERE p.name='Tropical Villa in Phuket' AND u.email='bob.kelly@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '55555555-dddd-eeee-ffff-555555555555', p.id, u.id,
       '2025-09-12','2025-09-17',5*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Tropical Villa in Phuket' AND u.email='charlie.morgan@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '66666666-eeee-ffff-0000-666666666666', p.id, u.id,
       '2025-10-20','2025-10-25',5*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Tropical Villa in Phuket' AND u.email='diana.nelson@example.com';

-- Bookings for Penthouse in Toronto
INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '77777777-ffff-0000-1111-777777777777', p.id, u.id,
       '2025-06-15','2025-06-20',5*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Penthouse in Toronto' AND u.email='edward.owens@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '88888888-0000-1111-2222-888888888888', p.id, u.id,
       '2025-07-10','2025-07-15',5*p.price_per_night,'pending'
FROM properties p, users u
WHERE p.name='Penthouse in Toronto' AND u.email='fiona.parker@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT '99999999-1111-2222-3333-999999999999', p.id, u.id,
       '2025-08-05','2025-08-10',5*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Penthouse in Toronto' AND u.email='george.quinn@example.com';

INSERT INTO bookings (id, property_id, user_id, start_date, end_date, total_price, status)
SELECT 'aaaaaaaa-2222-3333-4444-aaaaaaaaaaaa', p.id, u.id,
       '2025-09-01','2025-09-05',5*p.price_per_night,'confirmed'
FROM properties p, users u
WHERE p.name='Penthouse in Toronto' AND u.email='helen.rice@example.com';

-- ==========================
-- PAYMENTS (confirmed bookings only)
-- ==========================

-- Payment methods: 'credit_card', 'paypal', 'stripe'

-- Tropical Villa in Phuket
INSERT INTO payments (id, booking_id, amount, payment_method)
SELECT gen_random_uuid(), b.id, b.total_price,
       (ARRAY['credit_card','paypal','stripe'])[floor(random()*3+1)::int]
FROM bookings b
WHERE b.property_id='11111111-9999-aaaa-bbbb-111111111111' AND b.status='confirmed';

-- Penthouse in Toronto
INSERT INTO payments (id, booking_id, amount, payment_method)
SELECT gen_random_uuid(), b.id, b.total_price,
       (ARRAY['credit_card','paypal','stripe'])[floor(random()*3+1)::int]
FROM bookings b
WHERE b.property_id='22222222-aaaa-bbbb-cccc-222222222222' AND b.status='confirmed';

-- Repeat the same for all other properties (using their IDs) ...
-- Example for Olivia Grant’s Riverside Flat in Paris
INSERT INTO payments (id, booking_id, amount, payment_method)
SELECT gen_random_uuid(), b.id, b.total_price,
       (ARRAY['credit_card','paypal','stripe'])[floor(random()*3+1)::int]
FROM bookings b
WHERE b.property_id='11111111-aaaa-bbbb-cccc-444444444444' AND b.status='confirmed';

-- ==========================
-- REVIEWS
-- ==========================

-- Only for bookings that were confirmed
-- Each guest leaves a rating between 3 and 5, with sample comments
INSERT INTO reviews (id, property_id, user_id, rating, comment)
SELECT gen_random_uuid(), b.property_id, b.user_id,
       (3 + floor(random()*3)::int),
       CASE
           WHEN random() < 0.33 THEN 'Excellent stay, highly recommend!'
           WHEN random() < 0.66 THEN 'Great experience, host was friendly.'
           ELSE 'Nice place, comfortable and clean.'
       END
FROM bookings b
WHERE b.status='confirmed';

-- ==========================
-- MESSAGES
-- ==========================

-- Each guest sends a message to host before booking, host replies
INSERT INTO messages (id, sender_id, recipient_id, message_body)
SELECT gen_random_uuid(), b.user_id, p.host_id,
       'Hi, is the property available for my selected dates?'
FROM bookings b
JOIN properties p ON b.property_id=p.id;

INSERT INTO messages (id, sender_id, recipient_id, message_body)
SELECT gen_random_uuid(), p.host_id, b.user_id,
       'Yes, the property is available. Looking forward to hosting you!'
FROM bookings b
JOIN properties p ON b.property_id=p.id;