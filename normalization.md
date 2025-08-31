# Database Normalization (Up to 3NF)

This markdown file explains how the **Airbnb-like database schema** was normalized step by step from the raw requirements into **Third Normal Form (3NF)**.  

---

## **First Normal Form (1NF)**
**Rule:**  
- Each table must have a primary key.  
- All attributes must be atomic (indivisible).  

**Fix Applied:**  
- Broke down the `location` attribute in `Property` into atomic fields:  
  - `street_address`  
  - `city`  
  - `state`  
  - `country`

✅ Result: Schema now satisfies **1NF**.  

---

## **Second Normal Form (2NF)**
**Rule:**  
- Must already be in 1NF.  
- No partial dependency (non-key attributes must depend on the whole primary key, not part of it).  

**Check:**   
- Every non-key attribute depends entirely on its table’s primary key.  

✅ Result: Schema is in **2NF**.  

---

## **Third Normal Form (3NF)**
**Rule:**  
- Must already be in 2NF.  
- No transitive dependency (non-key attributes must not depend on other non-key attributes).  

**Check by table:**  
- **Users:** All attributes (`name, email, password_hash, role, created_at`) depend only on `user_id`.  
- **Properties:** Attributes (`name, description, street_address, city, state, country, price_per_night, created_at, updated_at`) depend only on `property_id`.  
- **Bookings:** Attributes (`start_date, end_date, total_price, status`) depend only on `booking_id`.  
- **Payments:** Attributes (`amount, payment_date, payment_method`) depend only on `payment_id`.  
- **Reviews:** Attributes (`rating, comment, created_at`) depend only on `review_id`.  
- **Messages:** Attributes (`sender_id, recipient_id, message_body, sent_at`) depend only on `message_id`.  

No attributes are dependent on non-key attributes.  

✅ Result: Schema is in **3NF**.  
