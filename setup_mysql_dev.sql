-- A script that prepares a MySQL server for the project.
-- Creates hbnb_dev_db database and user called hbnb_dev.
-- Grants hbnb_dev all permissions on hbnb_dev_db database.
-- Also grants SELECT permission on performance_schema to hbnb_dev.

CREATE DATABASE IF NOT EXISTS hbnb_dev_db;
CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';
GRANT ALL ON hbnb_dev_db.* TO 'hbnb_dev'@'localhost';
GRANT SELECT ON performance_schema.* TO 'hbnb_dev'@'localhost';
