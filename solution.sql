-- Starter File: Create a trigger that automatically displays a message
-- after inserting a new employee record into the Employee table.

DELIMITER //

CREATE TRIGGER After_Employee_Insert
AFTER INSERT ON Employee
FOR EACH ROW
BEGIN
    -- TODO: Write the logic to signal or log a message after insertion
    -- Note: MySQL triggers use SIGNAL SQLSTATE '01000' to display user messages/warnings
    
    SIGNAL SQLSTATE '01000' 
    SET MESSAGE_TEXT = 'New employee record inserted successfully!';
END //

DELIMITER ;
