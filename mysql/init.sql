-- Log into MySQL as root
mysql -u root -p

-- Create the database
CREATE DATABASE ssc;

-- Switch to the database
USE ssc;

-- Create the user with password
CREATE USER 'thej'@'localhost' IDENTIFIED BY 'thej123';

-- Grant all privileges on the ssc database to user 'thej'
GRANT ALL PRIVILEGES ON ssc.* TO 'thej'@'localhost';

-- Apply the changes
FLUSH PRIVILEGES;

-- Create the table inside ssc database
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Exit MySQL
EXIT;
