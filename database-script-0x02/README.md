# 0x02 - Database Seeding

This README explains the sample data (`INSERT` statements) used to seed the **Airbnb Database**. The goal is to populate the database with realistic records for testing and development.

---

## 1. Users

We include a variety of users with different roles:

- **Guests**: Can book properties, make payments, and leave reviews.
- **Hosts**: Own properties and manage bookings.
- **Admin**: System administrator with higher privileges.

### Example Records
- Alice Johnson (guest)  
- Bob Smith (host)  
- Charlie Brown (guest)  
- Diana Prince (guest)  
- Edward Green (host)  
- Fiona Adams (guest)  
- George White (guest)  
- Helen Stone (host)  

---

## 2. Properties

Each property is linked to a host (`host_id`). Properties include location, description, and price per night.

### Example Records
- Modern Apartment in Lagos (Bob as host)  
- Beach House in Accra (Bob as host)  
- Luxury Loft in Abuja (Edward as host)  
- Rustic Cabin in Nairobi (Helen as host)  

---

## 3. Bookings

Bookings are tied to properties and guests.  
They include:
- Booking period (`start_date`, `end_date`)  
- `total_price` (calculated from price per night × number of nights)  
- Status (`pending`, `confirmed`, `canceled`)  

### Example Records
- Alice books Lagos apartment (confirmed)  
- Diana books Accra beach house (pending)  
- George books Abuja loft (confirmed)  
- Fiona books Nairobi cabin (canceled)  

---

## 4. Payments

Payments are linked to bookings.  
Each includes:
- `amount`  
- `payment_method` (`credit_card`, `paypal`, `bank_transfer`)  

### Example Records
- Alice pays for Lagos apartment by credit card  
- George pays for Abuja loft by PayPal  

---

## 5. Reviews

Reviews allow guests to rate properties and leave feedback.  
Fields include `rating` (1–5) and `comment`.

### Example Records
- Alice leaves a 5-star review for Lagos apartment  
- George leaves a 4-star review for Abuja loft  
- Diana leaves a 3-star review for Accra beach house  

---

## 6. Messages

Messages capture communication between users (guest ↔ host).  
Each record includes `sender_id`, `recipient_id`, and the message body.

### Example Conversations
- Alice asks Bob about WiFi → Bob replies  
- Fiona asks Helen about a fireplace → Helen replies  
- George asks Edward about parking → Edward replies  

---

## 7. Why This Seeding?

- Provides **realistic sample data** for development.  
- Covers **all main entities** in the schema.  
- Demonstrates **different scenarios** (confirmed vs canceled bookings, multiple payment methods, positive & negative reviews).  
- Enables testing of **queries, relationships, and API endpoints**.  

---

## 8. Next Steps

- Run the seeding script in PostgreSQL after creating the schema.  
- Use this data to test queries (e.g., “Find all confirmed bookings for a host” or “List reviews for a property”).  
- Extend seeding as the schema evolves (e.g., add amenities, favorites, discounts).
