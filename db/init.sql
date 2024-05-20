CREATE USER replicator WITH REPLICATION ENCRYPTED PASSWORD 'Qq123456';
SELECT pg_create_physical_replication_slot('replication_slot');

SELECT 'CREATE DATABASE db_tel_bot'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'db_tel_bot')\gexec

CREATE TABLE IF NOT EXISTS email(
    emailID SERIAL PRIMARY KEY,
    email VARCHAR (100) NOT NULL
);

CREATE TABLE IF NOT EXISTS phone_number(
    phone_numberID SERIAL PRIMARY KEY,
    phone VARCHAR (100) NOT NULL
);
INSERT INTO email(email) VALUES
('test1@test.ru'),
('test2@google.com');

INSERT INTO phone_number (phone) VALUES
('89998887766'),
('81112223355');
