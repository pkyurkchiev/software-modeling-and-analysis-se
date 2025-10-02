CREATE DATABASE Waze;
GO

USE Waze
GO

CREATE TABLE [User] (
    [user_id] INT PRIMARY KEY,
    username VARCHAR(50),
    [location] GEOGRAPHY,
    speed SMALLINT,
    rating INT
);

CREATE TABLE [route] (
    route_id INT PRIMARY KEY,
    start_point GEOGRAPHY,
    finish_point GEOGRAPHY,
    distance INT,
    arrival_time TIME,
    [user_id] INT FOREIGN KEY REFERENCES [user]([user_id])
);

CREATE TABLE destination (
    destination_id INT PRIMARY KEY,
    [name] VARCHAR(50),
    [location] GEOGRAPHY
);

CREATE TABLE route_report (
    report_id INT PRIMARY KEY,
    [type] VARCHAR(50),
    [description] VARCHAR(50),
    [location] GEOGRAPHY,
    [user_id] INT FOREIGN KEY REFERENCES [user]([user_id])
);

CREATE TABLE alert (
    alert_id INT PRIMARY KEY,
    [type_name] VARCHAR(50),
    [description] VARCHAR(50),
    [location] GEOGRAPHY
);


CREATE TABLE alert_user (
    alert_user_id INT PRIMARY KEY,
    alert_id INT FOREIGN KEY REFERENCES alert(alert_id),
    [user_id] INT FOREIGN KEY REFERENCES [user]([user_id]),
    still_here BIT
);

INSERT INTO [User] ([user_id], username, [location], speed, rating) VALUES
(1, 'Ivan', 'Point(42.1354 24.7453)', 120, 4),
(2, 'Maria', 'Point(10 20)', 80, 3),
(3, 'Petya', 'Point(-21 90)', 95, 5),
(4, 'Diana', 'Point(23 -1)', 70, 4),
(5, 'Magdalena', 'Point(45 54)', 55, 5),
(6, 'Yoana', 'Point(11 22)', 65, 3),
(7, 'Izabel', 'Point(33 44)', 90, 2),
(8, 'Georgi', 'Point(55 44)', 80, 4),
(9, 'Ivan', 'Point(-20 1)', 160, 5),
(10, 'Marin', 'Point(1 -20)', 135, 3),
(11, 'Ivan', 'Point(43.2141 27.9147)', 120, 4),
(12, 'George', 'Point(10 -20)', 80, 3),
(13, 'Ivo', 'Point(21 90)', 95, 5),
(14, 'Petko', 'Point(27 1)', 70, 4),
(15, 'Tom', 'Point(2 54)', 55, 5),
(16, 'Petar', 'Point(-11 -22)', 65, 3),
(17, 'Viktor', 'Point(33 -2)', 90, 2),
(18, 'Simeon', 'Point(-55 44)', 80, 4),
(19, 'Monika', 'Point(20 -1)', 160, 5),
(20, 'David', 'Point(-21 20)', 135, 3);


INSERT INTO [route] (route_id, start_point, finish_point, distance, arrival_time, [user_id]) VALUES
(1, 'POINT(10 20)', 'POINT(30 40)', 100, '01:00:00', 1),
(2, 'POINT(11 21)', 'POINT(31 41)', 110, '01:10:00', 2),
(3, 'POINT(12 22)', 'POINT(32 42)', 120, '01:20:00', 3),
(4, 'POINT(13 23)', 'POINT(33 43)',  130, '01:30:00', 4),
(5, 'POINT(14 24)', 'POINT(34 44)',  140, '01:40:00', 5),
(6, 'POINT(15 25)', 'POINT(35 45)',  150, '01:50:00', 6),
(7, 'POINT(16 26)', 'POINT(36 46)',  160, '02:00:00', 7),
(8, 'POINT(17 27)', 'POINT(37 47)',  170, '02:10:00', 8),
(9, 'POINT(18 28)', 'POINT(38 48)',  180, '02:20:00', 9),
(10, 'POINT(19 29)', 'POINT(39 49)',  190, '02:30:00', 10);

INSERT INTO destination (destination_id, [name], [location]) VALUES
(1, 'Park', 'POINT(30 40)'),
(2, 'Museum', 'POINT(31 41)'),
(3, 'Mall', 'POINT(32 42)'),
(4, 'Library', 'POINT(33 43)'),
(5, 'Hospital', 'POINT(34 44)'),
(6, 'Airport', 'POINT(35 45)'),
(7, 'Restaurant', 'POINT(36 46)'),
(8, 'Stadium', 'POINT(37 47)'),
(9, 'Theater', 'POINT(38 48)'),
(10, 'University', 'POINT(39 49)');

INSERT INTO route_report (report_id, [type], [description], [location], [user_id]) VALUES
(1, 'Accident', 'Minor accident', 'POINT(15 25)', 1),
(2, 'Traffic Jam', 'Severe traffic jam', 'POINT(16 26)', 2),
(3, 'Road Closure', 'Road is closed', 'POINT(17 27)', 3),
(4, 'Hazard', 'Object on road', 'POINT(18 28)', 4),
(5, 'Weather', 'Heavy rain', 'POINT(19 29)', 5),
(6, 'Accident', 'Major accident', 'POINT(20 30)', 6),
(7, 'Road Closure', 'Construction work', 'POINT(21 31)', 7),
(8, 'Traffic Jam', 'Moderate traffic jam', 'POINT(22 32)', 8),
(9, 'Weather', 'Snowstorm', 'POINT(23 33)', 9),
(10, 'Hazard', 'Fallen tree', 'POINT(24 34)', 10),
(11, 'Accident', 'Minor accident', 'POINT(-15 25)', 1),
(12, 'Traffic Jam', 'Severe traffic jam', 'POINT(16 -26)', 2),
(13, 'Road Closure', 'Road is closed', 'POINT(17 -27)', 3),
(14, 'Hazard', 'Object on road', 'POINT(-18 38)', 4),
(15, 'Weather', 'Heavy rain', 'POINT(19 -29)', 5),
(16, 'Accident', 'Major accident', 'POINT(-20 -30)', 6),
(17, 'Road Closure', 'Construction work', 'POINT(-21 31)', 7),
(18, 'Traffic Jam', 'Moderate traffic jam', 'POINT(22 -22)', 8),
(19, 'Weather', 'Snowstorm', 'POINT(23 0)', 9),
(20, 'Hazard', 'Fallen tree', 'POINT(24 -34)', 10);


INSERT INTO alert (alert_id, [type_name], [description], [location]) VALUES
(1, 'Accident', 'Minor accident on road', 'POINT(15 25)'),
(2, 'Traffic Jam', 'Severe traffic near mall', 'POINT(16 26)'),
(3, 'Road Closure', 'Road closed due to construction', 'POINT(17 27)'),
(4, 'Hazard', 'Object on the road', 'POINT(18 28)'),
(5, 'Weather', 'Heavy rain in area', 'POINT(19 29)'),
(6, 'Accident', 'Major accident on highway', 'POINT(20 30)'),
(7, 'Road Closure', 'Detour in effect', 'POINT(21 31)'),
(8, 'Traffic Jam', 'Moderate traffic jam', 'POINT(22 32)'),
(9, 'Weather', 'Snowstorm in area', 'POINT(23 33)'),
(10, 'Hazard', 'Fallen tree blocking road', 'POINT(24 34)');



CREATE PROCEDURE AddTrafficReport
    @user_id INT,
    @report_type VARCHAR(50),
    @description VARCHAR(50),
    @location GEOGRAPHY
AS
BEGIN
    DECLARE @report_id INT, @alert_id INT, @nearby_reports INT;

    
    INSERT INTO route_report ([type], [description], [location], [user_id])
    VALUES (@report_type, @description, @location, @user_id);

    
    SELECT @report_id = SCOPE_IDENTITY();

    
    SELECT @nearby_reports = COUNT(*)
    FROM route_report
    WHERE 
        [type] = @report_type
        AND [location].STDistance(@location) <= 200
        AND report_id != @report_id; 

    
    IF @nearby_reports >= 2
    BEGIN
        
        INSERT INTO alert ([type_name], [description], [location])
        VALUES (@report_type, @description, @location);
        
        SELECT @alert_id = SCOPE_IDENTITY();

        INSERT INTO alert_user (alert_id, user_id, still_here)
        SELECT @alert_id, [user_id], 1
        FROM [User]
        WHERE [location].STDistance(@location) < 1000; -- Радиус от 1 км

        PRINT 'Traffic alert successfully added after sufficient reports.';
    END
    ELSE
    BEGIN
        PRINT 'Traffic report added but requires more reports to become an alert.';
    END
END;

CREATE FUNCTION CalculateArrivalTime
(
    @user_id INT,
    @destination_id INT
)
RETURNS TIME
AS
BEGIN
    DECLARE @current_location GEOGRAPHY, @destination_location GEOGRAPHY, @distance INT, @speed SMALLINT, @arrival_time TIME;

    SELECT @current_location = [location], @speed = speed
    FROM [User]
    WHERE user_id = @user_id;

    SELECT @destination_location = [location]
    FROM destination
    WHERE destination_id = @destination_id;

    
    SET @distance = @current_location.STDistance(@destination_location);

    IF @speed > 0
        SET @arrival_time = DATEADD(MINUTE, @distance / @speed, '00:00:00');
    ELSE
        SET @arrival_time = NULL; 

    RETURN @arrival_time;
END;


CREATE TRIGGER trg_alert_user_feedback
ON alert_user
AFTER INSERT, UPDATE
AS
BEGIN
    DECLARE @user_id INT;
    DECLARE @alert_id INT;
    DECLARE @still_here BIT;
    DECLARE @alert_location GEOGRAPHY;
    
    SELECT @user_id = user_id, @alert_id = alert_id, @still_here = still_here
    FROM inserted;
    
    SELECT @alert_location = location
    FROM alert
    WHERE alert_id = @alert_id;
    
    IF @still_here = 0
    BEGIN

        DELETE FROM alert_user
        WHERE alert_user_id = (SELECT alert_user_id FROM inserted);
        
        DELETE FROM alert
        WHERE alert_id = @alert_id;
    END
END;