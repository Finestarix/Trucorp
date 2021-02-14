--
-- Create Database `trucorp`
--
CREATE DATABASE IF NOT EXISTS `trucorp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

--
-- Use Database `trucorp`
--
USE `trucorp`;

-- 
-- Create Table `users`
--
CREATE TABLE `users` (
  `id` varchar(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `office` varchar(10) NOT NULL
);

-- 
-- Add Primary Key
--
ALTER TABLE `users`
ADD PRIMARY KEY (`ID`);

--
-- Insert Dummy Data
--
INSERT INTO `users` (`id`, `name`, `office`) VALUES
('b85b63db-6df9-11eb-9b28-e4e7499a064e', 'Jose Armando', 'Head'),
('b85b8387-6df9-11eb-9b28-e4e7499a064e', 'Ziggy Zeordygaexelcsazabrizkie', 'Branch'),
('b85ba151-6df9-11eb-9b28-e4e7499a064e', 'Renaldy', 'Head'),
('b85bbff0-6df9-11eb-9b28-e4e7499a064e', 'Mario Edgar Pranata', 'Branch'),
('b85bdbbb-6df9-11eb-9b28-e4e7499a064e', 'Karen Prisilia Iing', 'Head'),
('b85bf7f7-6df9-11eb-9b28-e4e7499a064e', 'Nelson Mario Latif', 'Branch'),
('b85c09bb-6df9-11eb-9b28-e4e7499a064e', 'Danny Wiselee', 'Head'),
('b85c2099-6df9-11eb-9b28-e4e7499a064e', 'Jethro Otto', 'Branch'),
('b85c4788-6df9-11eb-9b28-e4e7499a064e', 'Sandyka Bala', 'Head'),
('b85c6075-6df9-11eb-9b28-e4e7499a064e', 'Louis Choules', 'Branch'),
('b85c735f-6df9-11eb-9b28-e4e7499a064e', 'Andree Benaya Abyatar', 'Head'),
('b85c8a2f-6df9-11eb-9b28-e4e7499a064e', 'Hubert Michael Sanyoto', 'Branch'),
('b85c9f38-6df9-11eb-9b28-e4e7499a064e', 'Andrew Reyner Wibowo Tjiptomongsoguno', 'Head'),
('b85cb2f5-6df9-11eb-9b28-e4e7499a064e', 'Chandra Tan', 'Branch'),
('b85cc28e-6df9-11eb-9b28-e4e7499a064e', 'Malvin Wikarsa', 'Head'),
('b85cd527-6df9-11eb-9b28-e4e7499a064e', 'Anglie Yanto', 'Branch'),
('b85ce657-6df9-11eb-9b28-e4e7499a064e', 'Orlando Keni Sentana', 'Head'),
('b85cf487-6df9-11eb-9b28-e4e7499a064e', 'Inge Intania', 'Branch'),
('b85d0215-6df9-11eb-9b28-e4e7499a064e', 'Alvin Wijaya', 'Head'),
('b85d0f34-6df9-11eb-9b28-e4e7499a064e', 'Benaya Nusantara Edgardo', 'Branch');
