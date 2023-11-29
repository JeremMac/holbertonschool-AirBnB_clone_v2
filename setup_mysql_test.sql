-- A script that prepares a MySQL server for the project.
-- Creates hbnb_test_db database and user called hbnb_test.
-- Grants hbnb_test all permissions on hbnb_test_db database.
-- Also grants SELECT permission on performance_schema to hbnb_test.

CREATE DATABASE IF NOT EXISTS hbnb_test_db;
CREATE USER IF NOT EXISTS 'hbnb_test'@'localhost' IDENTIFIED BY 'hbnb_test_pwd';
GRANT ALL ON hbnb_test_db.* TO 'hbnb_test'@'localhost';
GRANT SELECT ON performance_schema.* TO 'hbnb_test'@'localhost';
FLUSH PRIVILEGES;