-- Insert data into users
INSERT INTO users (userId, userName, email, regionId) VALUES
(1, 'Alice Johnson', 'alice.johnson@example.com', 1),
(2, 'Bob Smith', 'bob.smith@example.com', 3),
(3, 'Charlie Davis', 'charlie.davis@example.com', 2);

-- Insert data into plans
INSERT INTO plans (planId, planName, planPrice) VALUES
(1, 'Basic Plan', 50.00),
(2, 'Standard Plan', 75.00),
(3, 'Premium Plan', 100.00);

-- Insert data into hardware
INSERT INTO hardware (hardwareId, userId, level, price) VALUES
(1, 1, 'Standard Kit', 499.99),
(2, 2, 'Advanced Kit', 799.99),
(3, 3, 'Premium Kit', 999.99);

-- Insert data into subscriptions
INSERT INTO subscriptions (subscriptionId, userId, planId, hardwareId, subscriptionState) VALUES
(1, 1, 2, 1, 'active'),
(2, 2, 1, 2, 'inactive'),
(3, 3, 3, 3, 'active');

-- Insert data into satelites
INSERT INTO satelites (sateliteId, sateliteName) VALUES
(1, 'Starlink Alpha'),
(2, 'Starlink Beta'),
(3, 'Starlink Gamma');

-- Insert data into regions
INSERT INTO regions (regionId, regionName, sateliteId) VALUES
(1, 'North America', 1),
(2, 'Europe', 2),
(3, 'Asia', 3);





-- Insert additional data into users
INSERT INTO users (userId, userName, email, regionId) VALUES
(4, 'Diana Prince', 'diana.prince@example.com', 4),
(5, 'Ethan Hunt', 'ethan.hunt@example.com', 6),
(6, 'Fiona Gallagher', 'fiona.gallagher@example.com', 7),
(7, 'George Miller', 'george.miller@example.com', 6),
(8, 'Hannah Lee', 'hannah.lee@example.com', 8);


-- Insert additional data into plans
INSERT INTO plans (planId, planName, planPrice) VALUES
(4, 'Enterprise Plan', 200.00),
(5, 'Student Plan', 30.00);

-- Insert additional data into hardware
INSERT INTO hardware (hardwareId, userId, level, price) VALUES
(4, 4, 'Standard Kit', 499.99),
(5, 5, 'Advanced Kit', 799.99),
(6, 6, 'Premium Kit', 999.99),
(7, 7, 'Standard Kit', 499.99),
(8, 8, 'Enterprise Kit', 1500.00);

-- Insert additional data into subscriptions
INSERT INTO subscriptions (subscriptionId, userId, planId, hardwareId, subscriptionState) VALUES
(4, 4, 4, 4, 'active'),
(5, 5, 5, 5, 'inactive'),
(6, 6, 3, 6, 'active'),
(7, 7, 1, 7, 'inactive'),
(8, 8, 4, 8, 'active');

-- Insert additional data into satelites
INSERT INTO satelites (sateliteId, sateliteName) VALUES
(4, 'Starlink Delta'),
(5, 'Starlink Epsilon');

-- Insert additional data into regions
INSERT INTO regions (regionId, regionName, sateliteId) VALUES
(4, 'South America', 4),
(5, 'Australia', 5),
(6, 'Africa', 1),
(7, 'Antarctica', 2),
(8, 'Middle East', 3);
