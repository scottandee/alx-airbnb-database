-- Rename old table
ALTER TABLE bookings RENAME TO bookings_old;

-- Create partitioned parent table
CREATE TABLE bookings (
    id UUID PRIMARY KEY,
    property_id UUID NOT NULL,
    user_id UUID NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL(10,2) NOT NULL,
    status VARCHAR(10) NOT NULL CHECK (status IN ('pending', 'confirmed', 'canceled')),
    created_at TIMESTAMP DEFAULT now()
) PARTITION BY RANGE (start_date);

-- Create partitions by year based on dataset
CREATE TABLE bookings_2025 PARTITION OF bookings
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

CREATE TABLE bookings_2026 PARTITION OF bookings
    FOR VALUES FROM ('2026-01-01') TO ('2027-01-01');

-- Optional default partition for any out-of-range dates
CREATE TABLE bookings_default PARTITION OF bookings DEFAULT;

-- Migrate existing data
INSERT INTO bookings
SELECT * FROM bookings_old;

-- Indexes on partitions for faster queries
CREATE INDEX idx_bookings_2025_user_id ON bookings_2025(user_id);
CREATE INDEX idx_bookings_2025_property_id ON bookings_2025(property_id);

CREATE INDEX idx_bookings_2026_user_id ON bookings_2026(user_id);
CREATE INDEX idx_bookings_2026_property_id ON bookings_2026(property_id);
