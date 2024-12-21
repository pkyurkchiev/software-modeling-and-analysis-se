-- Insert more data into users
INSERT INTO users (userId, userName, email, regionId) VALUES
(9, 'Ivan Petrov', 'ivan.petrov@example.com', 10),
(10, 'Jessica Davis', 'jessica.davis@example.com', 12),
(11, 'Kevin Zhou', 'kevin.zhou@example.com', 14),
(12, 'Laura Kim', 'laura.kim@example.com', 15),
(13, 'Mike Ross', 'mike.ross@example.com', 13),
(14, 'Nina Brown', 'nina.brown@example.com', 9),
(15, 'Oscar Martinez', 'oscar.martinez@example.com', 8),
(16, 'Paul White', 'paul.white@example.com', 17),
(17, 'Quincy Adams', 'quincy.adams@example.com', 7),
(18, 'Rachel Green', 'rachel.green@example.com', 20),
(19, 'Steve Johnson', 'steve.johnson@example.com', 19),
(20, 'Tina Turner', 'tina.turner@example.com', 18);

-- Insert more data into plans
INSERT INTO plans (planId, planName, planPrice) VALUES
(6, 'Family Plan', 120.00),
(7, 'Unlimited Plan', 250.00),
(8, 'Seasonal Plan', 40.00);

-- Insert more data into hardware
INSERT INTO hardware (hardwareId, userId, level, price) VALUES
(9, 9, 'Standard Kit', 499.99),
(10, 10, 'Advanced Kit', 799.99),
(11, 11, 'Premium Kit', 999.99),
(12, 12, 'Enterprise Kit', 1500.00),
(13, 13, 'Student Kit', 299.99),
(14, 14, 'Standard Kit', 499.99),
(15, 15, 'Advanced Kit', 799.99),
(16, 16, 'Premium Kit', 999.99),
(17, 17, 'Enterprise Kit', 1500.00),
(18, 18, 'Student Kit', 299.99),
(19, 19, 'Standard Kit', 499.99),
(20, 20, 'Advanced Kit', 799.99);

-- Insert more data into subscriptions
INSERT INTO subscriptions (subscriptionId, userId, planId, hardwareId, subscriptionState) VALUES
(9, 9, 6, 9, 'active'),
(10, 10, 7, 10, 'inactive'),
(11, 11, 3, 11, 'active'),
(12, 12, 4, 12, 'active'),
(13, 13, 5, 13, 'inactive'),
(14, 14, 1, 14, 'active'),
(15, 15, 2, 15, 'inactive'),
(16, 16, 3, 16, 'active'),
(17, 17, 4, 17, 'active'),
(18, 18, 5, 18, 'inactive'),
(19, 19, 6, 19, 'inactive'),
(20, 20, 7, 20, 'active');

-- Insert more data into satelites
INSERT INTO satelites (sateliteId, sateliteName) VALUES
(6, 'Starlink Zeta'),
(7, 'Starlink Eta'),
(8, 'Starlink Theta'),
(9, 'Starlink Iota'),
(10, 'Starlink Kappa');

-- Insert more data into regions
INSERT INTO regions (regionId, regionName, sateliteId) VALUES
(9, 'Central America', 6),
(10, 'Caribbean', 7),
(11, 'Eastern Europe', 8),
(12, 'Western Europe', 9),
(13, 'Central Asia', 10),
(14, 'Southeast Asia', 6),
(15, 'Oceania', 7),
(16, 'Middle Africa', 8),
(17, 'Southern Africa', 9),
(18, 'Northern Africa', 10),
(19, 'Arctic', 6),
(20, 'Greenland', 7);
