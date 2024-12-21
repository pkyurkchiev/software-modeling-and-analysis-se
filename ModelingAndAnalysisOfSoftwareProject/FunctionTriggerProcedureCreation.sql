CREATE FUNCTION total_active_revenue()
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @totalRevenue DECIMAL(10, 2);

    SELECT @totalRevenue = SUM(p.planPrice)
    FROM subscriptions s
    JOIN plans p ON s.planId = p.planId
    WHERE s.subscriptionState = 'active';

    RETURN ISNULL(@totalRevenue, 0);

END;


CREATE PROCEDURE activate_subscription
    @subId INT
AS
BEGIN
    DECLARE @currentState VARCHAR(50);

    SELECT @currentState = subscriptionState
    FROM subscriptions
    WHERE subscriptionId = @subId;

    IF @currentState = 'active'
    BEGIN
        RAISERROR('The subscription is already active.', 16, 1);
        RETURN;
    END;

    UPDATE subscriptions
    SET subscriptionState = 'active'
    WHERE subscriptionId = @subId;
END;





CREATE TRIGGER set_subscription_inactive
ON hardware
AFTER DELETE
AS
BEGIN
    UPDATE subscriptions
    SET subscriptionState = 'inactive'
    WHERE hardwareId = (SELECT hardwareId FROM DELETED)
      AND subscriptionState = 'active';
END;



