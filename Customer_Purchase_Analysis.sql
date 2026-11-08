-- Real-world SQL Portfolio Project: Customer Purchase Analysis
-- Dataset: 500 synthetic customer records (fictional names and sample values)
-- Run this script in MySQL Workbench.

CREATE DATABASE IF NOT EXISTS customer_analysis;
USE customer_analysis;

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    city VARCHAR(50) NOT NULL,
    monthly_income INT NOT NULL,
    purchase_amount DECIMAL(10,2) NOT NULL,
    order_date DATE NOT NULL,
    payment_method VARCHAR(30) NOT NULL,
    customer_segment VARCHAR(20) NOT NULL
);

INSERT INTO customers
(customer_id, customer_name, age, city, monthly_income, purchase_amount, order_date, payment_method, customer_segment)
VALUES
(1, 'Mohammad Singh', 54, 'Pune', 130000, 6800.00, '2026-08-17', 'Debit Card', 'VIP'),
(2, 'Vivaan Tiwari', 35, 'Indore', 156000, 25700.00, '2026-06-15', 'UPI', 'Regular'),
(3, 'Anika Pandey', 45, 'Bengaluru', 172000, 13300.00, '2024-02-22', 'UPI', 'Premium'),
(4, 'Pari Yadav', 61, 'Agra', 168000, 1500.00, '2025-07-05', 'Net Banking', 'Regular'),
(5, 'Hina Singh', 29, 'Bhopal', 150000, 23100.00, '2025-07-23', 'Credit Card', 'VIP'),
(6, 'Faizan Tiwari', 58, 'Bhopal', 41000, 24500.00, '2025-12-13', 'Cash', 'New'),
(7, 'Simran Gupta', 38, 'Lucknow', 59000, 17300.00, '2026-04-23', 'Cash', 'New'),
(8, 'Meera Sheikh', 60, 'Chennai', 158000, 2300.00, '2026-07-20', 'UPI', 'New'),
(9, 'Aditya Sharma', 34, 'Bengaluru', 47000, 21100.00, '2024-01-03', 'Net Banking', 'VIP'),
(10, 'Krishna Mishra', 44, 'Noida', 66000, 27000.00, '2026-01-10', 'Net Banking', 'VIP'),
(11, 'Pari Patel', 58, 'Ahmedabad', 31000, 10900.00, '2025-06-30', 'Net Banking', 'Premium'),
(12, 'Shreya Sharma', 36, 'Ahmedabad', 142000, 6700.00, '2024-02-29', 'Net Banking', 'Premium'),
(13, 'Anjali Mishra', 63, 'Kanpur', 97000, 28700.00, '2024-01-29', 'Net Banking', 'VIP'),
(14, 'Ayesha Das', 23, 'Jaipur', 47000, 24100.00, '2024-08-28', 'Credit Card', 'VIP'),
(15, 'Zoya Shah', 63, 'Pune', 148000, 14400.00, '2026-04-30', 'Cash', 'VIP'),
(16, 'Manish Pandey', 33, 'Ahmedabad', 159000, 7900.00, '2026-02-24', 'Credit Card', 'Premium'),
(17, 'Nikhil Mehta', 22, 'Mumbai', 124000, 17900.00, '2025-07-01', 'UPI', 'New'),
(18, 'Anika Tripathi', 64, 'Pune', 168000, 25500.00, '2024-10-31', 'Cash', 'VIP'),
(19, 'Aarav Srivastava', 40, 'Bengaluru', 159000, 28300.00, '2026-02-11', 'Cash', 'New'),
(20, 'Ananya Choudhary', 30, 'Jaipur', 164000, 20100.00, '2025-04-23', 'Cash', 'Regular'),
(21, 'Saurabh Siddiqui', 38, 'Bhopal', 115000, 20200.00, '2024-11-07', 'Cash', 'Regular'),
(22, 'Anika Yadav', 26, 'Indore', 169000, 17400.00, '2024-07-24', 'Cash', 'Regular'),
(23, 'Saanvi Srivastava', 51, 'Ahmedabad', 21000, 7800.00, '2026-04-19', 'Credit Card', 'Regular'),
(24, 'Amit Singh', 48, 'Mumbai', 104000, 20800.00, '2024-06-13', 'Debit Card', 'VIP'),
(25, 'Krishna Ansari', 38, 'Bhopal', 156000, 2300.00, '2024-05-20', 'Credit Card', 'New'),
(26, 'Ishaan Khan', 32, 'Gurugram', 129000, 5500.00, '2024-07-24', 'Cash', 'Premium'),
(27, 'Rohit Reddy', 62, 'Pune', 25000, 2800.00, '2025-10-26', 'UPI', 'New'),
(28, 'Myra Tripathi', 40, 'Hyderabad', 128000, 7900.00, '2025-05-15', 'Net Banking', 'VIP'),
(29, 'Aditya Tiwari', 54, 'Kanpur', 61000, 9400.00, '2024-06-10', 'Net Banking', 'VIP'),
(30, 'Varun Shah', 57, 'Jaipur', 145000, 7800.00, '2025-04-20', 'Cash', 'New'),
(31, 'Shaurya Saxena', 47, 'Mumbai', 20000, 24300.00, '2025-08-12', 'Net Banking', 'Premium'),
(32, 'Vikash Gupta', 22, 'Ahmedabad', 106000, 15800.00, '2026-05-18', 'Debit Card', 'VIP'),
(33, 'Anjali Jain', 37, 'Varanasi', 116000, 25200.00, '2024-08-06', 'Credit Card', 'VIP'),
(34, 'Mohammad Reddy', 54, 'Hyderabad', 165000, 15600.00, '2025-08-27', 'UPI', 'VIP'),
(35, 'Karan Mehta', 35, 'Delhi', 162000, 3000.00, '2026-10-14', 'Debit Card', 'Premium'),
(36, 'Aadhya Choudhary', 56, 'Hyderabad', 74000, 10200.00, '2025-05-28', 'Credit Card', 'Regular'),
(37, 'Reyansh Verma', 58, 'Noida', 97000, 23000.00, '2024-03-09', 'Net Banking', 'New'),
(38, 'Sameer Pandey', 64, 'Gorakhpur', 41000, 15600.00, '2025-10-31', 'Cash', 'Premium'),
(39, 'Nazia Jain', 30, 'Gorakhpur', 156000, 19200.00, '2026-10-24', 'Debit Card', 'Premium'),
(40, 'Krishna Kapoor', 34, 'Bhopal', 93000, 17800.00, '2024-08-23', 'Cash', 'Regular'),
(41, 'Pari Kapoor', 27, 'Jaipur', 119000, 29000.00, '2026-01-19', 'UPI', 'VIP'),
(42, 'Ishaan Ansari', 18, 'Mumbai', 155000, 6800.00, '2026-07-20', 'Debit Card', 'New'),
(43, 'Anika Malik', 55, 'Chennai', 113000, 6000.00, '2025-04-23', 'Cash', 'Regular'),
(44, 'Mohammad Joshi', 57, 'Patna', 101000, 11800.00, '2024-05-09', 'Cash', 'New'),
(45, 'Karan Kumar', 59, 'Kolkata', 47000, 7600.00, '2024-04-02', 'UPI', 'New'),
(46, 'Karan Khan', 49, 'Lucknow', 42000, 12500.00, '2024-10-04', 'Cash', 'VIP'),
(47, 'Saanvi Roy', 41, 'Patna', 125000, 8400.00, '2026-04-29', 'UPI', 'VIP'),
(48, 'Anika Choudhary', 57, 'Kolkata', 89000, 2100.00, '2026-01-28', 'Credit Card', 'VIP'),
(49, 'Faizan Das', 46, 'Jaipur', 110000, 5500.00, '2026-01-22', 'Net Banking', 'New'),
(50, 'Reyansh Reddy', 21, 'Chennai', 88000, 10200.00, '2024-09-07', 'Cash', 'Regular'),
(51, 'Mohammad Kumar', 60, 'Varanasi', 170000, 1500.00, '2024-04-13', 'Debit Card', 'Premium'),
(52, 'Simran Tiwari', 26, 'Agra', 70000, 4000.00, '2025-02-28', 'Net Banking', 'Premium'),
(53, 'Ira Kumar', 32, 'Bengaluru', 55000, 600.00, '2025-07-21', 'Credit Card', 'Premium'),
(54, 'Varun Ansari', 52, 'Mumbai', 62000, 6100.00, '2024-02-22', 'Credit Card', 'Regular'),
(55, 'Anika Saxena', 40, 'Jaipur', 168000, 17000.00, '2024-02-02', 'Credit Card', 'New'),
(56, 'Mohammad Choudhary', 21, 'Gorakhpur', 125000, 27400.00, '2024-08-20', 'UPI', 'VIP'),
(57, 'Anjali Pandey', 46, 'Hyderabad', 149000, 6000.00, '2026-07-14', 'Net Banking', 'Premium'),
(58, 'Faizan Siddiqui', 57, 'Noida', 151000, 15900.00, '2026-07-27', 'UPI', 'Regular'),
(59, 'Nazia Srivastava', 48, 'Chennai', 127000, 6000.00, '2026-10-01', 'Cash', 'Regular'),
(60, 'Arjun Pandey', 23, 'Bengaluru', 173000, 8000.00, '2024-05-14', 'Credit Card', 'New'),
(61, 'Aditya Tripathi', 57, 'Agra', 158000, 17100.00, '2026-02-19', 'Net Banking', 'New'),
(62, 'Rahul Ansari', 47, 'Indore', 172000, 22500.00, '2024-07-22', 'UPI', 'Premium'),
(63, 'Anika Gupta', 45, 'Ahmedabad', 76000, 21600.00, '2025-11-25', 'Cash', 'VIP'),
(64, 'Saanvi Saxena', 44, 'Lucknow', 98000, 22300.00, '2025-10-02', 'Debit Card', 'New'),
(65, 'Kavya Bansal', 27, 'Bhopal', 35000, 5100.00, '2024-06-23', 'UPI', 'VIP'),
(66, 'Ayesha Siddiqui', 24, 'Hyderabad', 51000, 28900.00, '2024-05-02', 'Net Banking', 'New'),
(67, 'Saanvi Das', 60, 'Lucknow', 123000, 18600.00, '2026-05-16', 'UPI', 'New'),
(68, 'Neha Ansari', 56, 'Pune', 108000, 5800.00, '2025-03-11', 'Credit Card', 'VIP'),
(69, 'Arman Malik', 32, 'Lucknow', 107000, 28900.00, '2026-01-22', 'UPI', 'New'),
(70, 'Kabir Agarwal', 54, 'Jaipur', 127000, 29200.00, '2024-02-23', 'Net Banking', 'New'),
(71, 'Atharv Pandey', 19, 'Kanpur', 87000, 16300.00, '2025-11-26', 'Debit Card', 'Regular'),
(72, 'Hina Shah', 29, 'Gorakhpur', 162000, 21000.00, '2024-05-22', 'Credit Card', 'Regular'),
(73, 'Simran Agarwal', 23, 'Indore', 73000, 19700.00, '2026-05-09', 'Cash', 'New'),
(74, 'Hina Mehta', 28, 'Hyderabad', 97000, 17100.00, '2024-06-22', 'UPI', 'Premium'),
(75, 'Saurabh Bansal', 28, 'Prayagraj', 30000, 4600.00, '2025-07-11', 'Cash', 'VIP'),
(76, 'Meera Ansari', 49, 'Prayagraj', 131000, 21700.00, '2025-07-13', 'Credit Card', 'Regular'),
(77, 'Karan Pandey', 40, 'Kolkata', 46000, 15000.00, '2026-09-23', 'Net Banking', 'New'),
(78, 'Atharv Patel', 20, 'Jaipur', 119000, 3300.00, '2024-01-16', 'Credit Card', 'New'),
(79, 'Neha Gupta', 31, 'Gorakhpur', 83000, 15300.00, '2025-11-02', 'UPI', 'Regular'),
(80, 'Imran Verma', 49, 'Kolkata', 62000, 7100.00, '2026-02-17', 'Net Banking', 'Premium'),
(81, 'Shaurya Yadav', 50, 'Patna', 108000, 4100.00, '2026-03-24', 'UPI', 'VIP'),
(82, 'Faizan Sheikh', 19, 'Ahmedabad', 37000, 16500.00, '2026-05-29', 'Net Banking', 'VIP'),
(83, 'Shreya Gupta', 63, 'Kolkata', 92000, 6300.00, '2026-04-09', 'UPI', 'New'),
(84, 'Vikash Ansari', 28, 'Prayagraj', 135000, 19000.00, '2024-06-29', 'Cash', 'Regular'),
(85, 'Shreya Malik', 33, 'Kolkata', 168000, 21000.00, '2024-06-10', 'Cash', 'New'),
(86, 'Sneha Agarwal', 65, 'Bengaluru', 74000, 17500.00, '2024-12-10', 'UPI', 'Regular'),
(87, 'Anjali Kapoor', 51, 'Indore', 67000, 18300.00, '2025-12-20', 'Credit Card', 'Premium'),
(88, 'Aarav Roy', 24, 'Gorakhpur', 83000, 10600.00, '2024-12-21', 'Net Banking', 'Premium'),
(89, 'Sana Singh', 59, 'Gurugram', 63000, 25700.00, '2026-08-08', 'Net Banking', 'VIP'),
(90, 'Faizan Bansal', 61, 'Agra', 180000, 17000.00, '2025-10-09', 'Credit Card', 'VIP'),
(91, 'Simran Srivastava', 22, 'Bhopal', 131000, 16000.00, '2025-07-16', 'Net Banking', 'Regular'),
(92, 'Anika Srivastava', 40, 'Indore', 36000, 16300.00, '2026-08-03', 'Cash', 'Regular'),
(93, 'Arman Siddiqui', 21, 'Hyderabad', 91000, 4400.00, '2024-07-03', 'Net Banking', 'VIP'),
(94, 'Shaurya Jain', 47, 'Agra', 159000, 2600.00, '2026-07-10', 'Net Banking', 'Premium'),
(95, 'Saurabh Kumar', 38, 'Prayagraj', 139000, 26100.00, '2024-11-04', 'UPI', 'VIP'),
(96, 'Varun Sharma', 24, 'Bengaluru', 39000, 26300.00, '2024-12-19', 'UPI', 'Premium'),
(97, 'Sana Bansal', 63, 'Ahmedabad', 130000, 27300.00, '2024-11-21', 'Debit Card', 'New'),
(98, 'Sana Agarwal', 36, 'Chennai', 122000, 17800.00, '2024-04-17', 'Debit Card', 'Regular'),
(99, 'Pooja Srivastava', 39, 'Lucknow', 160000, 20200.00, '2025-08-04', 'Debit Card', 'Premium'),
(100, 'Diya Patel', 39, 'Gurugram', 167000, 7700.00, '2025-12-17', 'Debit Card', 'VIP'),
(101, 'Ishaan Kapoor', 26, 'Prayagraj', 39000, 16300.00, '2026-02-10', 'Debit Card', 'Premium'),
(102, 'Mohammad Jain', 60, 'Indore', 41000, 22100.00, '2026-01-11', 'UPI', 'New'),
(103, 'Mohammad Patel', 37, 'Kanpur', 72000, 17900.00, '2026-09-22', 'Credit Card', 'Premium'),
(104, 'Shreya Mishra', 26, 'Gorakhpur', 37000, 15600.00, '2024-07-26', 'Net Banking', 'Regular'),
(105, 'Kabir Khan', 60, 'Bengaluru', 176000, 7200.00, '2026-02-10', 'Credit Card', 'Premium'),
(106, 'Imran Kumar', 29, 'Prayagraj', 60000, 22900.00, '2024-03-30', 'Cash', 'New'),
(107, 'Sneha Saxena', 61, 'Jaipur', 131000, 15000.00, '2026-07-08', 'Credit Card', 'Premium'),
(108, 'Aarav Reddy', 37, 'Bhopal', 67000, 19300.00, '2026-06-21', 'Cash', 'New'),
(109, 'Rahul Qureshi', 42, 'Indore', 153000, 21900.00, '2024-11-27', 'Credit Card', 'Premium'),
(110, 'Vivaan Singh', 34, 'Noida', 141000, 19500.00, '2024-07-29', 'Net Banking', 'Regular'),
(111, 'Karan Bansal', 36, 'Gurugram', 59000, 14400.00, '2026-07-09', 'Net Banking', 'Premium'),
(112, 'Kiara Pandey', 45, 'Gurugram', 74000, 23500.00, '2025-12-16', 'UPI', 'VIP'),
(113, 'Kavya Gupta', 21, 'Chennai', 146000, 19600.00, '2025-04-27', 'Cash', 'Regular'),
(114, 'Krishna Tiwari', 41, 'Jaipur', 25000, 16800.00, '2024-07-21', 'Debit Card', 'Premium'),
(115, 'Neha Joshi', 26, 'Noida', 91000, 24600.00, '2024-10-11', 'Cash', 'VIP'),
(116, 'Reyansh Srivastava', 57, 'Delhi', 38000, 1400.00, '2025-06-08', 'Credit Card', 'Premium'),
(117, 'Atharv Yadav', 53, 'Prayagraj', 153000, 22100.00, '2024-08-15', 'Debit Card', 'Premium'),
(118, 'Sameer Qureshi', 37, 'Lucknow', 30000, 12700.00, '2026-05-09', 'Net Banking', 'VIP'),
(119, 'Anjali Kumar', 22, 'Lucknow', 145000, 27900.00, '2024-02-03', 'Net Banking', 'Premium'),
(120, 'Myra Patel', 63, 'Gorakhpur', 92000, 22400.00, '2024-01-04', 'Net Banking', 'New'),
(121, 'Shreya Sheikh', 33, 'Agra', 124000, 10000.00, '2024-06-24', 'Net Banking', 'New'),
(122, 'Sana Choudhary', 22, 'Indore', 157000, 26400.00, '2024-02-11', 'Cash', 'VIP'),
(123, 'Kiara Ansari', 20, 'Chennai', 113000, 13400.00, '2024-02-03', 'Debit Card', 'Regular'),
(124, 'Sameer Das', 40, 'Jaipur', 178000, 5800.00, '2025-11-11', 'Credit Card', 'Regular'),
(125, 'Karan Malik', 40, 'Patna', 104000, 9400.00, '2026-08-09', 'Cash', 'Premium'),
(126, 'Sneha Malik', 26, 'Gurugram', 135000, 2300.00, '2025-08-23', 'Credit Card', 'Regular'),
(127, 'Shaurya Pandey', 30, 'Noida', 98000, 16300.00, '2026-03-26', 'Net Banking', 'VIP'),
(128, 'Pari Gupta', 34, 'Noida', 66000, 15100.00, '2026-01-01', 'UPI', 'New'),
(129, 'Amit Sharma', 35, 'Lucknow', 112000, 22800.00, '2026-03-30', 'Cash', 'VIP'),
(130, 'Meera Shah', 39, 'Kanpur', 145000, 25900.00, '2026-01-22', 'Net Banking', 'New'),
(131, 'Pari Mehta', 23, 'Kolkata', 38000, 22500.00, '2025-01-04', 'Net Banking', 'New'),
(132, 'Pari Sharma', 38, 'Lucknow', 38000, 17200.00, '2025-08-28', 'Debit Card', 'VIP'),
(133, 'Reyansh Choudhary', 56, 'Kolkata', 60000, 23200.00, '2025-12-20', 'Cash', 'Regular'),
(134, 'Mohammad Verma', 64, 'Hyderabad', 175000, 22700.00, '2025-07-16', 'UPI', 'Regular'),
(135, 'Aditya Kapoor', 60, 'Chennai', 111000, 26700.00, '2024-11-23', 'UPI', 'Premium'),
(136, 'Amit Gupta', 56, 'Ahmedabad', 26000, 6900.00, '2024-05-17', 'Credit Card', 'New'),
(137, 'Pooja Pandey', 41, 'Chennai', 163000, 2100.00, '2024-11-10', 'Cash', 'New'),
(138, 'Anika Roy', 41, 'Ahmedabad', 37000, 29800.00, '2024-10-08', 'Net Banking', 'New'),
(139, 'Neha Mishra', 43, 'Bengaluru', 89000, 13200.00, '2024-08-20', 'UPI', 'Premium'),
(140, 'Simran Yadav', 49, 'Indore', 117000, 29200.00, '2024-08-29', 'Debit Card', 'New'),
(141, 'Sana Saxena', 63, 'Ahmedabad', 72000, 15100.00, '2026-10-02', 'Credit Card', 'Regular'),
(142, 'Kavya Mehta', 26, 'Gurugram', 133000, 9300.00, '2026-06-30', 'UPI', 'New'),
(143, 'Priya Pandey', 60, 'Hyderabad', 34000, 28600.00, '2025-08-17', 'Debit Card', 'Premium'),
(144, 'Priya Tripathi', 63, 'Kanpur', 110000, 26500.00, '2025-04-04', 'UPI', 'Premium'),
(145, 'Manish Mishra', 26, 'Jaipur', 144000, 1800.00, '2026-01-09', 'Net Banking', 'New'),
(146, 'Ishaan Singh', 47, 'Patna', 51000, 4900.00, '2024-05-14', 'Debit Card', 'VIP'),
(147, 'Sameer Sheikh', 63, 'Bhopal', 152000, 21500.00, '2026-04-18', 'Net Banking', 'Regular'),
(148, 'Rohit Sheikh', 26, 'Bengaluru', 36000, 23500.00, '2026-08-12', 'Net Banking', 'New'),
(149, 'Manish Malik', 26, 'Patna', 168000, 9800.00, '2024-09-21', 'Cash', 'Regular'),
(150, 'Sana Verma', 25, 'Indore', 57000, 16000.00, '2024-12-03', 'Credit Card', 'New'),
(151, 'Arman Singh', 63, 'Jaipur', 106000, 27000.00, '2025-08-04', 'UPI', 'New'),
(152, 'Arjun Ansari', 30, 'Patna', 88000, 6900.00, '2025-09-12', 'Net Banking', 'Regular'),
(153, 'Sana Siddiqui', 50, 'Kanpur', 169000, 8300.00, '2024-12-16', 'Net Banking', 'New'),
(154, 'Ishaan Pandey', 54, 'Noida', 25000, 4600.00, '2024-04-03', 'Net Banking', 'New'),
(155, 'Aadhya Mishra', 59, 'Varanasi', 164000, 21800.00, '2024-03-03', 'Cash', 'New'),
(156, 'Simran Malik', 59, 'Pune', 141000, 13000.00, '2026-04-11', 'Debit Card', 'VIP'),
(157, 'Atharv Sheikh', 22, 'Noida', 58000, 23000.00, '2026-05-01', 'Cash', 'VIP'),
(158, 'Diya Agarwal', 31, 'Bengaluru', 173000, 7800.00, '2025-10-02', 'Debit Card', 'New'),
(159, 'Varun Pandey', 43, 'Gorakhpur', 112000, 26800.00, '2024-08-05', 'Debit Card', 'Premium'),
(160, 'Reyansh Malik', 47, 'Lucknow', 86000, 23500.00, '2025-05-22', 'Credit Card', 'Regular'),
(161, 'Anjali Singh', 21, 'Pune', 116000, 21900.00, '2025-05-23', 'Credit Card', 'New'),
(162, 'Arjun Das', 54, 'Bengaluru', 66000, 8600.00, '2026-10-17', 'Net Banking', 'VIP'),
(163, 'Simran Joshi', 49, 'Pune', 145000, 1600.00, '2024-07-03', 'Cash', 'VIP'),
(164, 'Aarav Gupta', 33, 'Varanasi', 167000, 18500.00, '2024-04-09', 'UPI', 'New'),
(165, 'Imran Kapoor', 49, 'Prayagraj', 138000, 15100.00, '2024-01-17', 'UPI', 'VIP'),
(166, 'Manish Qureshi', 26, 'Mumbai', 111000, 21100.00, '2026-01-19', 'UPI', 'VIP'),
(167, 'Priya Mishra', 21, 'Agra', 161000, 10400.00, '2026-01-12', 'Net Banking', 'New'),
(168, 'Deepak Bansal', 22, 'Chennai', 147000, 23500.00, '2025-07-26', 'Net Banking', 'Regular'),
(169, 'Arjun Kumar', 26, 'Lucknow', 118000, 19600.00, '2025-11-25', 'Net Banking', 'New'),
(170, 'Vikash Sharma', 27, 'Varanasi', 172000, 26500.00, '2026-04-02', 'Net Banking', 'Regular'),
(171, 'Vikash Agarwal', 20, 'Noida', 53000, 17500.00, '2026-08-28', 'Net Banking', 'VIP'),
(172, 'Varun Jain', 27, 'Prayagraj', 149000, 7600.00, '2025-11-02', 'Net Banking', 'New'),
(173, 'Saurabh Choudhary', 28, 'Chennai', 175000, 15800.00, '2025-11-19', 'Net Banking', 'VIP'),
(174, 'Sana Tripathi', 63, 'Agra', 94000, 24800.00, '2024-02-04', 'Debit Card', 'New'),
(175, 'Anjali Roy', 61, 'Lucknow', 124000, 16200.00, '2024-02-24', 'Net Banking', 'VIP'),
(176, 'Ayesha Qureshi', 34, 'Agra', 165000, 12100.00, '2024-04-15', 'Net Banking', 'VIP'),
(177, 'Kabir Mishra', 28, 'Indore', 179000, 19900.00, '2024-10-29', 'Credit Card', 'Regular'),
(178, 'Riya Mishra', 54, 'Lucknow', 66000, 1400.00, '2026-06-22', 'Debit Card', 'VIP'),
(179, 'Arjun Mehta', 27, 'Kolkata', 70000, 21500.00, '2026-10-24', 'Net Banking', 'VIP'),
(180, 'Arjun Tiwari', 65, 'Noida', 53000, 27000.00, '2025-02-28', 'Net Banking', 'New'),
(181, 'Rahul Verma', 60, 'Bhopal', 152000, 19700.00, '2025-10-04', 'Credit Card', 'VIP'),
(182, 'Priya Patel', 52, 'Bengaluru', 157000, 18600.00, '2025-06-25', 'Net Banking', 'VIP'),
(183, 'Sneha Kumar', 30, 'Jaipur', 89000, 29000.00, '2025-09-03', 'Credit Card', 'New'),
(184, 'Arjun Patel', 36, 'Varanasi', 143000, 16700.00, '2026-09-09', 'Debit Card', 'New'),
(185, 'Diya Gupta', 36, 'Lucknow', 164000, 28300.00, '2026-02-16', 'Cash', 'New'),
(186, 'Faizan Kapoor', 27, 'Pune', 28000, 15200.00, '2024-06-10', 'Debit Card', 'VIP'),
(187, 'Ira Ansari', 59, 'Mumbai', 140000, 11400.00, '2025-02-17', 'Net Banking', 'New'),
(188, 'Shaurya Bansal', 53, 'Mumbai', 53000, 6000.00, '2025-05-05', 'Credit Card', 'Regular'),
(189, 'Kavya Pandey', 60, 'Indore', 75000, 12400.00, '2024-04-17', 'UPI', 'VIP'),
(190, 'Meera Reddy', 39, 'Bhopal', 43000, 7500.00, '2024-01-11', 'Net Banking', 'Premium'),
(191, 'Aditya Reddy', 44, 'Bhopal', 140000, 10700.00, '2025-08-11', 'Debit Card', 'New'),
(192, 'Krishna Sheikh', 59, 'Noida', 40000, 29800.00, '2025-04-20', 'Net Banking', 'Regular'),
(193, 'Sameer Mehta', 29, 'Kolkata', 63000, 2300.00, '2026-03-24', 'Cash', 'Premium'),
(194, 'Kavya Patel', 65, 'Pune', 27000, 900.00, '2025-09-03', 'Net Banking', 'Regular'),
(195, 'Rahul Saxena', 39, 'Pune', 134000, 28300.00, '2026-10-08', 'Credit Card', 'VIP'),
(196, 'Myra Mishra', 35, 'Varanasi', 46000, 17400.00, '2024-11-28', 'Cash', 'New'),
(197, 'Sameer Choudhary', 63, 'Kanpur', 21000, 17700.00, '2025-08-27', 'Net Banking', 'Premium'),
(198, 'Rahul Pandey', 29, 'Prayagraj', 121000, 22300.00, '2025-11-02', 'UPI', 'VIP'),
(199, 'Myra Ansari', 60, 'Lucknow', 65000, 7600.00, '2026-09-04', 'Debit Card', 'Premium'),
(200, 'Atharv Roy', 18, 'Mumbai', 116000, 12500.00, '2026-07-03', 'Debit Card', 'New'),
(201, 'Arman Jain', 37, 'Agra', 164000, 1000.00, '2025-06-19', 'Debit Card', 'Premium'),
(202, 'Varun Siddiqui', 21, 'Lucknow', 137000, 16200.00, '2024-11-23', 'Cash', 'New'),
(203, 'Imran Saxena', 62, 'Lucknow', 93000, 19300.00, '2025-03-28', 'Credit Card', 'Premium'),
(204, 'Reyansh Sharma', 48, 'Gorakhpur', 134000, 19600.00, '2026-05-01', 'Net Banking', 'VIP'),
(205, 'Varun Reddy', 52, 'Varanasi', 81000, 4600.00, '2026-07-03', 'Net Banking', 'New'),
(206, 'Kavya Singh', 22, 'Agra', 46000, 3600.00, '2025-02-18', 'Net Banking', 'Premium'),
(207, 'Reyansh Shah', 28, 'Bengaluru', 151000, 23100.00, '2024-08-26', 'Credit Card', 'VIP'),
(208, 'Saanvi Patel', 23, 'Indore', 132000, 3300.00, '2026-07-17', 'Credit Card', 'VIP'),
(209, 'Myra Yadav', 47, 'Agra', 32000, 29100.00, '2026-08-04', 'Debit Card', 'Regular'),
(210, 'Rohit Bansal', 43, 'Mumbai', 18000, 11600.00, '2024-05-29', 'UPI', 'VIP'),
(211, 'Reyansh Bansal', 40, 'Gurugram', 156000, 3500.00, '2024-05-21', 'Cash', 'Regular'),
(212, 'Ira Khan', 36, 'Kolkata', 64000, 7400.00, '2026-05-10', 'Debit Card', 'VIP'),
(213, 'Riya Kumar', 46, 'Chennai', 114000, 4600.00, '2024-09-29', 'Debit Card', 'Regular'),
(214, 'Nikhil Joshi', 29, 'Patna', 118000, 27500.00, '2024-09-17', 'Credit Card', 'Regular'),
(215, 'Simran Choudhary', 19, 'Pune', 136000, 28300.00, '2026-05-18', 'Net Banking', 'VIP'),
(216, 'Kiara Reddy', 32, 'Jaipur', 135000, 18200.00, '2024-11-13', 'Debit Card', 'Premium'),
(217, 'Arman Patel', 64, 'Lucknow', 26000, 21900.00, '2024-02-02', 'Credit Card', 'Premium'),
(218, 'Sameer Singh', 22, 'Lucknow', 170000, 2200.00, '2026-07-03', 'Net Banking', 'Regular'),
(219, 'Atharv Agarwal', 33, 'Noida', 120000, 22900.00, '2025-04-24', 'Net Banking', 'Premium'),
(220, 'Ishaan Tiwari', 21, 'Gorakhpur', 146000, 15300.00, '2025-04-24', 'Net Banking', 'New'),
(221, 'Anjali Yadav', 54, 'Prayagraj', 100000, 12600.00, '2025-09-10', 'Credit Card', 'Premium'),
(222, 'Anika Jain', 44, 'Pune', 88000, 3600.00, '2024-12-24', 'Cash', 'VIP'),
(223, 'Mohammad Kapoor', 21, 'Hyderabad', 115000, 27300.00, '2025-10-14', 'Cash', 'VIP'),
(224, 'Neha Agarwal', 27, 'Pune', 114000, 9900.00, '2026-08-27', 'Credit Card', 'Premium'),
(225, 'Arjun Gupta', 37, 'Gorakhpur', 136000, 3400.00, '2026-04-25', 'Cash', 'Premium'),
(226, 'Mohammad Sheikh', 42, 'Jaipur', 83000, 10900.00, '2025-11-07', 'UPI', 'VIP'),
(227, 'Anika Verma', 41, 'Gurugram', 155000, 10200.00, '2024-04-15', 'Debit Card', 'VIP'),
(228, 'Aarav Siddiqui', 61, 'Prayagraj', 172000, 2500.00, '2024-05-29', 'Credit Card', 'Premium'),
(229, 'Nazia Yadav', 48, 'Varanasi', 103000, 16000.00, '2024-02-01', 'Credit Card', 'Premium'),
(230, 'Mohammad Agarwal', 65, 'Lucknow', 140000, 12900.00, '2025-02-22', 'Cash', 'Premium'),
(231, 'Ananya Tiwari', 53, 'Bengaluru', 90000, 19900.00, '2026-08-12', 'Net Banking', 'New'),
(232, 'Nikhil Shah', 37, 'Mumbai', 110000, 26700.00, '2026-10-15', 'Cash', 'Regular'),
(233, 'Ayesha Sheikh', 64, 'Bhopal', 99000, 10900.00, '2026-01-29', 'Debit Card', 'VIP'),
(234, 'Anjali Sharma', 20, 'Agra', 74000, 7900.00, '2024-02-03', 'Debit Card', 'VIP'),
(235, 'Shaurya Gupta', 36, 'Gorakhpur', 68000, 17300.00, '2025-04-16', 'Cash', 'Premium'),
(236, 'Zoya Bansal', 49, 'Patna', 104000, 13600.00, '2026-09-27', 'Cash', 'VIP'),
(237, 'Kabir Shah', 28, 'Hyderabad', 61000, 7600.00, '2026-09-27', 'Credit Card', 'Regular'),
(238, 'Aditya Joshi', 51, 'Noida', 37000, 2900.00, '2024-01-14', 'Cash', 'Premium'),
(239, 'Saurabh Yadav', 58, 'Jaipur', 35000, 8200.00, '2024-01-19', 'Credit Card', 'VIP'),
(240, 'Aditya Jain', 41, 'Noida', 176000, 25200.00, '2026-09-26', 'UPI', 'Regular'),
(241, 'Aditya Bansal', 52, 'Patna', 123000, 1100.00, '2024-02-04', 'Net Banking', 'New'),
(242, 'Rohit Mishra', 52, 'Pune', 22000, 26200.00, '2026-05-31', 'Credit Card', 'Regular'),
(243, 'Faizan Pandey', 24, 'Indore', 56000, 12800.00, '2025-01-28', 'Net Banking', 'New'),
(244, 'Rohit Srivastava', 40, 'Mumbai', 119000, 4500.00, '2026-02-03', 'Cash', 'VIP'),
(245, 'Anjali Bansal', 54, 'Jaipur', 75000, 15800.00, '2024-06-14', 'UPI', 'Regular'),
(246, 'Manish Reddy', 43, 'Chennai', 114000, 28700.00, '2026-09-01', 'UPI', 'Regular'),
(247, 'Hina Yadav', 62, 'Kanpur', 39000, 26000.00, '2026-06-07', 'Debit Card', 'Regular'),
(248, 'Ira Kapoor', 51, 'Noida', 76000, 11300.00, '2026-08-31', 'Debit Card', 'Regular'),
(249, 'Ananya Tripathi', 22, 'Mumbai', 157000, 29300.00, '2024-03-08', 'Credit Card', 'New'),
(250, 'Diya Bansal', 19, 'Varanasi', 168000, 7800.00, '2026-03-26', 'UPI', 'New'),
(251, 'Manish Sharma', 28, 'Agra', 79000, 29500.00, '2026-03-07', 'Net Banking', 'New'),
(252, 'Diya Tiwari', 42, 'Gorakhpur', 38000, 26100.00, '2025-12-09', 'UPI', 'Regular'),
(253, 'Amit Tripathi', 45, 'Jaipur', 37000, 17900.00, '2026-03-23', 'Debit Card', 'Regular'),
(254, 'Manish Tripathi', 58, 'Mumbai', 133000, 25600.00, '2025-04-12', 'Debit Card', 'VIP'),
(255, 'Sameer Kapoor', 45, 'Kanpur', 167000, 19900.00, '2024-06-24', 'Net Banking', 'New'),
(256, 'Hina Tripathi', 33, 'Gurugram', 39000, 14200.00, '2024-11-11', 'Cash', 'Premium'),
(257, 'Ira Agarwal', 65, 'Chennai', 99000, 18900.00, '2024-08-06', 'UPI', 'Regular'),
(258, 'Zoya Singh', 37, 'Ahmedabad', 110000, 14300.00, '2024-07-28', 'Credit Card', 'Regular'),
(259, 'Vikash Kapoor', 29, 'Kolkata', 132000, 29000.00, '2026-04-15', 'UPI', 'Regular'),
(260, 'Aadhya Joshi', 23, 'Hyderabad', 159000, 5200.00, '2025-10-26', 'Cash', 'Regular'),
(261, 'Varun Khan', 36, 'Kolkata', 117000, 4800.00, '2025-05-12', 'Net Banking', 'Premium'),
(262, 'Kiara Joshi', 61, 'Chennai', 61000, 7600.00, '2025-07-04', 'Debit Card', 'New'),
(263, 'Pari Pandey', 49, 'Gorakhpur', 34000, 9000.00, '2026-06-09', 'Debit Card', 'VIP'),
(264, 'Vivaan Roy', 37, 'Bhopal', 37000, 18900.00, '2025-05-30', 'Credit Card', 'VIP'),
(265, 'Aadhya Ansari', 56, 'Prayagraj', 68000, 23900.00, '2024-08-07', 'Credit Card', 'New'),
(266, 'Amit Agarwal', 18, 'Chennai', 103000, 19900.00, '2025-11-05', 'Cash', 'New'),
(267, 'Anika Khan', 45, 'Prayagraj', 52000, 15800.00, '2025-10-18', 'Net Banking', 'Premium'),
(268, 'Deepak Roy', 48, 'Bengaluru', 63000, 20800.00, '2025-10-15', 'Debit Card', 'VIP'),
(269, 'Simran Siddiqui', 54, 'Jaipur', 101000, 19700.00, '2025-07-28', 'Cash', 'New'),
(270, 'Myra Kumar', 25, 'Agra', 69000, 28400.00, '2025-01-03', 'Net Banking', 'Regular'),
(271, 'Meera Agarwal', 64, 'Ahmedabad', 71000, 22900.00, '2025-08-19', 'UPI', 'VIP'),
(272, 'Aditya Singh', 61, 'Bhopal', 53000, 16000.00, '2025-05-10', 'Debit Card', 'Premium'),
(273, 'Rohit Tiwari', 63, 'Kolkata', 114000, 4200.00, '2026-07-08', 'Net Banking', 'VIP'),
(274, 'Rahul Sheikh', 55, 'Chennai', 154000, 26400.00, '2026-05-06', 'Net Banking', 'Regular'),
(275, 'Shreya Patel', 41, 'Patna', 170000, 4800.00, '2024-08-11', 'Credit Card', 'New'),
(276, 'Shaurya Ansari', 28, 'Prayagraj', 29000, 29300.00, '2026-03-29', 'Debit Card', 'VIP'),
(277, 'Kavya Mishra', 24, 'Delhi', 43000, 13700.00, '2025-03-30', 'Net Banking', 'Premium'),
(278, 'Myra Verma', 46, 'Hyderabad', 118000, 24200.00, '2026-10-21', 'Credit Card', 'New'),
(279, 'Aarav Patel', 19, 'Bhopal', 44000, 15600.00, '2026-05-01', 'UPI', 'Regular'),
(280, 'Simran Roy', 64, 'Gorakhpur', 107000, 16400.00, '2025-12-03', 'Cash', 'Premium'),
(281, 'Sana Tiwari', 51, 'Bhopal', 107000, 24800.00, '2024-07-18', 'Cash', 'VIP'),
(282, 'Hina Roy', 38, 'Gurugram', 94000, 2700.00, '2024-08-23', 'UPI', 'New'),
(283, 'Aadhya Khan', 59, 'Lucknow', 60000, 12900.00, '2024-12-23', 'Net Banking', 'Premium'),
(284, 'Saurabh Gupta', 39, 'Patna', 127000, 24100.00, '2025-04-19', 'Cash', 'Premium'),
(285, 'Sameer Saxena', 29, 'Kolkata', 119000, 1900.00, '2025-02-08', 'Cash', 'VIP'),
(286, 'Amit Reddy', 42, 'Delhi', 72000, 11000.00, '2025-07-24', 'UPI', 'Regular'),
(287, 'Rahul Roy', 52, 'Kanpur', 111000, 17100.00, '2025-02-07', 'Cash', 'Regular'),
(288, 'Shaurya Tiwari', 34, 'Bhopal', 153000, 16500.00, '2026-03-06', 'Net Banking', 'VIP'),
(289, 'Kiara Patel', 55, 'Lucknow', 107000, 18500.00, '2026-07-26', 'Net Banking', 'Premium'),
(290, 'Kiara Roy', 61, 'Pune', 175000, 4800.00, '2024-10-01', 'Debit Card', 'Regular'),
(291, 'Manish Siddiqui', 33, 'Pune', 47000, 9800.00, '2026-02-03', 'Credit Card', 'VIP'),
(292, 'Deepak Choudhary', 44, 'Prayagraj', 53000, 29900.00, '2026-02-24', 'Cash', 'Premium'),
(293, 'Riya Shah', 49, 'Patna', 62000, 28900.00, '2024-12-07', 'Cash', 'New'),
(294, 'Atharv Mishra', 26, 'Kanpur', 98000, 23500.00, '2024-04-19', 'Debit Card', 'Regular'),
(295, 'Manish Roy', 49, 'Gorakhpur', 67000, 20100.00, '2026-10-10', 'Cash', 'VIP'),
(296, 'Vikash Roy', 44, 'Ahmedabad', 143000, 9000.00, '2024-06-18', 'Net Banking', 'Regular'),
(297, 'Hina Bansal', 32, 'Pune', 26000, 14500.00, '2025-04-05', 'Net Banking', 'New'),
(298, 'Diya Reddy', 28, 'Ahmedabad', 162000, 25800.00, '2024-08-19', 'Net Banking', 'Regular'),
(299, 'Kavya Jain', 35, 'Patna', 111000, 28200.00, '2024-03-26', 'Cash', 'Premium'),
(300, 'Deepak Shah', 45, 'Lucknow', 81000, 15700.00, '2024-03-07', 'Cash', 'New'),
(301, 'Aarav Jain', 40, 'Gurugram', 130000, 6500.00, '2025-04-30', 'Credit Card', 'New'),
(302, 'Saurabh Tripathi', 63, 'Prayagraj', 179000, 22400.00, '2024-12-05', 'Net Banking', 'Premium'),
(303, 'Varun Malik', 31, 'Varanasi', 33000, 29600.00, '2025-12-19', 'Net Banking', 'New'),
(304, 'Nikhil Roy', 56, 'Patna', 61000, 17000.00, '2025-08-22', 'Debit Card', 'New'),
(305, 'Hina Kumar', 50, 'Lucknow', 52000, 21500.00, '2024-05-01', 'Debit Card', 'Premium'),
(306, 'Sameer Gupta', 62, 'Gorakhpur', 81000, 7900.00, '2025-10-21', 'Credit Card', 'VIP'),
(307, 'Riya Patel', 49, 'Gorakhpur', 165000, 14200.00, '2026-04-28', 'Cash', 'VIP'),
(308, 'Tanvi Siddiqui', 22, 'Gurugram', 121000, 26800.00, '2025-07-23', 'Debit Card', 'VIP'),
(309, 'Krishna Joshi', 49, 'Bengaluru', 166000, 600.00, '2024-07-09', 'Cash', 'New'),
(310, 'Imran Pandey', 22, 'Patna', 119000, 11600.00, '2026-05-29', 'Credit Card', 'VIP'),
(311, 'Faizan Jain', 35, 'Bengaluru', 90000, 17700.00, '2024-09-24', 'Net Banking', 'VIP'),
(312, 'Pari Tripathi', 39, 'Noida', 29000, 5500.00, '2026-07-30', 'UPI', 'Regular'),
(313, 'Aadhya Yadav', 28, 'Ahmedabad', 134000, 500.00, '2026-05-26', 'Credit Card', 'Premium'),
(314, 'Vivaan Verma', 59, 'Pune', 58000, 14500.00, '2024-07-10', 'Debit Card', 'New'),
(315, 'Ira Qureshi', 23, 'Hyderabad', 60000, 3100.00, '2026-03-22', 'Debit Card', 'Premium'),
(316, 'Tanvi Kapoor', 45, 'Gurugram', 42000, 500.00, '2025-03-13', 'Cash', 'Regular'),
(317, 'Nazia Gupta', 26, 'Agra', 75000, 27000.00, '2026-06-30', 'UPI', 'Regular'),
(318, 'Varun Sheikh', 62, 'Bengaluru', 48000, 22100.00, '2024-09-27', 'Cash', 'Regular'),
(319, 'Mohammad Mehta', 32, 'Chennai', 40000, 5700.00, '2024-07-30', 'Debit Card', 'New'),
(320, 'Zoya Ansari', 37, 'Gorakhpur', 115000, 7300.00, '2024-10-19', 'UPI', 'Regular'),
(321, 'Ira Yadav', 57, 'Kanpur', 130000, 18400.00, '2025-03-12', 'Credit Card', 'VIP'),
(322, 'Arman Choudhary', 57, 'Ahmedabad', 73000, 4900.00, '2024-07-24', 'Credit Card', 'Regular'),
(323, 'Aarav Bansal', 55, 'Chennai', 107000, 22400.00, '2025-10-06', 'Credit Card', 'Premium'),
(324, 'Nazia Bansal', 35, 'Gurugram', 81000, 28800.00, '2025-08-06', 'UPI', 'New'),
(325, 'Ishaan Srivastava', 31, 'Indore', 173000, 26500.00, '2025-01-21', 'Cash', 'New'),
(326, 'Saurabh Pandey', 59, 'Noida', 79000, 25800.00, '2026-03-01', 'UPI', 'Premium'),
(327, 'Diya Tripathi', 49, 'Prayagraj', 36000, 27500.00, '2024-01-25', 'Debit Card', 'New'),
(328, 'Zoya Patel', 26, 'Chennai', 163000, 22000.00, '2026-01-18', 'Net Banking', 'Premium'),
(329, 'Varun Verma', 48, 'Gurugram', 22000, 3900.00, '2024-01-29', 'Debit Card', 'Premium'),
(330, 'Shaurya Malik', 20, 'Noida', 119000, 26400.00, '2025-08-09', 'Net Banking', 'VIP'),
(331, 'Atharv Tripathi', 45, 'Chennai', 39000, 27900.00, '2024-11-08', 'Debit Card', 'Regular'),
(332, 'Varun Roy', 37, 'Gurugram', 148000, 10900.00, '2024-11-14', 'Net Banking', 'New'),
(333, 'Sneha Shah', 43, 'Agra', 180000, 3800.00, '2025-09-27', 'Cash', 'Premium'),
(334, 'Shreya Siddiqui', 21, 'Jaipur', 40000, 22700.00, '2024-08-25', 'Cash', 'Regular'),
(335, 'Imran Bansal', 37, 'Kanpur', 48000, 1100.00, '2024-10-08', 'UPI', 'Premium'),
(336, 'Nikhil Reddy', 49, 'Hyderabad', 151000, 26900.00, '2025-06-14', 'Credit Card', 'New'),
(337, 'Pooja Sheikh', 26, 'Mumbai', 48000, 2000.00, '2025-11-17', 'Cash', 'New'),
(338, 'Anjali Malik', 51, 'Gurugram', 85000, 30000.00, '2024-06-06', 'Cash', 'VIP'),
(339, 'Priya Malik', 50, 'Hyderabad', 32000, 26000.00, '2024-12-07', 'Debit Card', 'Premium'),
(340, 'Myra Srivastava', 34, 'Lucknow', 164000, 6400.00, '2025-04-12', 'Net Banking', 'Regular'),
(341, 'Ira Joshi', 20, 'Delhi', 80000, 2800.00, '2026-08-24', 'Debit Card', 'VIP'),
(342, 'Sneha Qureshi', 27, 'Kanpur', 27000, 28800.00, '2026-05-08', 'Credit Card', 'New'),
(343, 'Mohammad Pandey', 33, 'Kolkata', 99000, 14300.00, '2024-06-08', 'Net Banking', 'New'),
(344, 'Riya Pandey', 25, 'Indore', 31000, 9600.00, '2025-04-02', 'Net Banking', 'Regular'),
(345, 'Anika Siddiqui', 43, 'Gurugram', 137000, 14900.00, '2025-09-28', 'Debit Card', 'Regular'),
(346, 'Rahul Bansal', 53, 'Ahmedabad', 20000, 19300.00, '2025-02-14', 'Debit Card', 'New'),
(347, 'Pari Ansari', 65, 'Prayagraj', 80000, 24200.00, '2026-01-24', 'Net Banking', 'VIP'),
(348, 'Zoya Yadav', 30, 'Patna', 80000, 8200.00, '2024-01-14', 'Cash', 'Regular'),
(349, 'Ayesha Mishra', 32, 'Patna', 106000, 900.00, '2025-11-17', 'UPI', 'VIP'),
(350, 'Reyansh Sheikh', 65, 'Pune', 44000, 11000.00, '2025-05-02', 'Cash', 'VIP'),
(351, 'Manish Verma', 21, 'Gorakhpur', 89000, 5200.00, '2024-03-30', 'Credit Card', 'VIP'),
(352, 'Saanvi Joshi', 62, 'Hyderabad', 135000, 4800.00, '2024-07-14', 'Net Banking', 'Premium'),
(353, 'Manish Ansari', 58, 'Chennai', 37000, 29500.00, '2024-05-07', 'Cash', 'Premium'),
(354, 'Nazia Mehta', 33, 'Pune', 84000, 16600.00, '2026-03-15', 'Debit Card', 'New'),
(355, 'Zoya Sharma', 46, 'Mumbai', 77000, 4300.00, '2025-02-19', 'Credit Card', 'Regular'),
(356, 'Imran Mehta', 27, 'Lucknow', 60000, 23500.00, '2026-08-12', 'Debit Card', 'VIP'),
(357, 'Vikash Qureshi', 25, 'Patna', 109000, 11100.00, '2026-07-14', 'Debit Card', 'VIP'),
(358, 'Aarav Khan', 34, 'Lucknow', 41000, 8500.00, '2025-09-15', 'Net Banking', 'Regular'),
(359, 'Kiara Srivastava', 31, 'Bengaluru', 55000, 5100.00, '2025-05-23', 'Debit Card', 'VIP'),
(360, 'Manish Shah', 50, 'Noida', 94000, 13800.00, '2024-12-22', 'UPI', 'VIP'),
(361, 'Hina Tiwari', 46, 'Patna', 158000, 13200.00, '2024-07-12', 'Cash', 'Regular'),
(362, 'Simran Tripathi', 26, 'Lucknow', 21000, 3600.00, '2025-03-31', 'Credit Card', 'Premium'),
(363, 'Shreya Bansal', 43, 'Hyderabad', 179000, 4800.00, '2025-06-14', 'UPI', 'Regular'),
(364, 'Pari Qureshi', 22, 'Varanasi', 131000, 7000.00, '2024-07-07', 'Debit Card', 'Regular'),
(365, 'Pari Agarwal', 20, 'Ahmedabad', 30000, 9100.00, '2026-06-06', 'Cash', 'VIP'),
(366, 'Saurabh Qureshi', 19, 'Chennai', 127000, 9300.00, '2025-12-25', 'Credit Card', 'Premium'),
(367, 'Vivaan Ansari', 35, 'Mumbai', 132000, 8100.00, '2024-03-11', 'Net Banking', 'Premium'),
(368, 'Amit Roy', 59, 'Pune', 145000, 21500.00, '2026-09-08', 'UPI', 'Regular'),
(369, 'Faizan Tripathi', 35, 'Chennai', 53000, 21900.00, '2025-02-12', 'Net Banking', 'Premium'),
(370, 'Deepak Tiwari', 58, 'Patna', 22000, 20000.00, '2026-01-05', 'Cash', 'VIP'),
(371, 'Ananya Joshi', 40, 'Agra', 146000, 16900.00, '2026-03-06', 'Debit Card', 'Premium'),
(372, 'Varun Saxena', 19, 'Bengaluru', 170000, 11700.00, '2024-03-01', 'Debit Card', 'Regular'),
(373, 'Atharv Reddy', 48, 'Indore', 109000, 12400.00, '2024-11-22', 'UPI', 'Premium'),
(374, 'Simran Sharma', 60, 'Jaipur', 86000, 27800.00, '2024-04-24', 'Credit Card', 'VIP'),
(375, 'Deepak Mehta', 40, 'Kanpur', 63000, 12600.00, '2025-10-13', 'Debit Card', 'Regular'),
(376, 'Kavya Roy', 63, 'Hyderabad', 163000, 29300.00, '2024-10-18', 'Net Banking', 'Premium'),
(377, 'Vivaan Gupta', 49, 'Patna', 97000, 9400.00, '2026-10-01', 'UPI', 'Regular'),
(378, 'Arman Sheikh', 21, 'Jaipur', 172000, 11700.00, '2024-02-10', 'Net Banking', 'VIP'),
(379, 'Atharv Kapoor', 18, 'Bengaluru', 175000, 10800.00, '2024-09-24', 'Debit Card', 'Premium'),
(380, 'Varun Kumar', 38, 'Noida', 23000, 8000.00, '2024-10-17', 'UPI', 'New'),
(381, 'Arjun Agarwal', 22, 'Hyderabad', 119000, 5600.00, '2025-11-20', 'Debit Card', 'New'),
(382, 'Vikash Siddiqui', 26, 'Kanpur', 129000, 25400.00, '2025-10-11', 'Credit Card', 'New'),
(383, 'Saanvi Malik', 32, 'Agra', 62000, 19800.00, '2025-09-20', 'Debit Card', 'Premium'),
(384, 'Rahul Siddiqui', 29, 'Delhi', 164000, 20500.00, '2024-03-07', 'Credit Card', 'New'),
(385, 'Imran Joshi', 57, 'Jaipur', 162000, 5800.00, '2026-10-13', 'Credit Card', 'New'),
(386, 'Manish Agarwal', 65, 'Gurugram', 78000, 18200.00, '2025-10-16', 'Credit Card', 'Regular'),
(387, 'Krishna Qureshi', 63, 'Bengaluru', 132000, 1000.00, '2025-06-27', 'Credit Card', 'Premium'),
(388, 'Simran Verma', 62, 'Gurugram', 107000, 13600.00, '2024-08-09', 'UPI', 'Regular'),
(389, 'Rohit Pandey', 42, 'Ahmedabad', 125000, 9000.00, '2026-04-27', 'Cash', 'VIP'),
(390, 'Arman Gupta', 40, 'Patna', 114000, 5600.00, '2026-09-08', 'Net Banking', 'Premium'),
(391, 'Nazia Das', 28, 'Ahmedabad', 36000, 2200.00, '2025-08-26', 'UPI', 'New'),
(392, 'Aditya Srivastava', 34, 'Lucknow', 36000, 18000.00, '2024-12-14', 'Cash', 'Premium'),
(393, 'Vivaan Pandey', 64, 'Gurugram', 158000, 5200.00, '2025-11-23', 'Net Banking', 'VIP'),
(394, 'Vivaan Reddy', 63, 'Delhi', 128000, 8900.00, '2026-06-08', 'Credit Card', 'Regular'),
(395, 'Kabir Pandey', 24, 'Bengaluru', 70000, 10200.00, '2026-04-18', 'Net Banking', 'New'),
(396, 'Atharv Qureshi', 60, 'Pune', 94000, 12600.00, '2024-07-15', 'UPI', 'VIP'),
(397, 'Varun Choudhary', 54, 'Patna', 143000, 8300.00, '2024-04-21', 'Debit Card', 'Regular'),
(398, 'Shreya Reddy', 45, 'Gurugram', 93000, 25000.00, '2025-02-12', 'UPI', 'Regular'),
(399, 'Hina Choudhary', 31, 'Kanpur', 92000, 4600.00, '2026-08-27', 'UPI', 'New'),
(400, 'Shaurya Srivastava', 43, 'Bhopal', 143000, 14000.00, '2024-07-05', 'Net Banking', 'VIP'),
(401, 'Ananya Jain', 29, 'Hyderabad', 115000, 19400.00, '2025-01-17', 'Cash', 'Regular'),
(402, 'Ishaan Mehta', 34, 'Ahmedabad', 137000, 13900.00, '2025-04-08', 'Debit Card', 'Regular'),
(403, 'Vivaan Saxena', 27, 'Lucknow', 39000, 18100.00, '2026-04-27', 'Net Banking', 'Premium'),
(404, 'Kiara Mehta', 53, 'Noida', 117000, 27200.00, '2026-05-07', 'Net Banking', 'VIP'),
(405, 'Faizan Saxena', 54, 'Jaipur', 139000, 15800.00, '2024-06-10', 'Cash', 'Regular'),
(406, 'Reyansh Mehta', 50, 'Agra', 150000, 29700.00, '2024-10-28', 'UPI', 'VIP'),
(407, 'Zoya Joshi', 29, 'Kanpur', 72000, 10300.00, '2024-09-15', 'UPI', 'VIP'),
(408, 'Ishaan Choudhary', 23, 'Kolkata', 69000, 8000.00, '2025-06-12', 'Debit Card', 'Regular'),
(409, 'Faizan Reddy', 23, 'Chennai', 160000, 20800.00, '2025-10-29', 'Debit Card', 'VIP'),
(410, 'Shaurya Tripathi', 18, 'Prayagraj', 168000, 27200.00, '2026-05-09', 'UPI', 'VIP'),
(411, 'Kavya Tripathi', 27, 'Gorakhpur', 163000, 5600.00, '2024-08-04', 'Net Banking', 'Regular'),
(412, 'Aditya Khan', 36, 'Patna', 106000, 21500.00, '2025-06-24', 'Cash', 'VIP'),
(413, 'Simran Sheikh', 54, 'Prayagraj', 139000, 2400.00, '2024-12-18', 'Debit Card', 'VIP'),
(414, 'Sameer Khan', 27, 'Prayagraj', 173000, 21000.00, '2024-03-20', 'Cash', 'New'),
(415, 'Reyansh Patel', 62, 'Jaipur', 30000, 24800.00, '2025-07-04', 'Debit Card', 'Regular'),
(416, 'Aarav Kapoor', 39, 'Pune', 97000, 14800.00, '2026-10-03', 'UPI', 'Premium'),
(417, 'Manish Joshi', 26, 'Pune', 131000, 16900.00, '2025-07-05', 'Cash', 'Regular'),
(418, 'Neha Singh', 30, 'Ahmedabad', 72000, 21300.00, '2026-09-19', 'Net Banking', 'New'),
(419, 'Saurabh Khan', 21, 'Indore', 58000, 3800.00, '2025-09-29', 'Net Banking', 'VIP'),
(420, 'Mohammad Bansal', 26, 'Indore', 163000, 1900.00, '2024-12-21', 'Credit Card', 'Premium'),
(421, 'Kabir Sheikh', 21, 'Jaipur', 26000, 23800.00, '2024-04-13', 'Debit Card', 'Premium'),
(422, 'Sneha Das', 35, 'Hyderabad', 136000, 26300.00, '2026-03-23', 'UPI', 'Regular'),
(423, 'Anika Reddy', 33, 'Hyderabad', 143000, 23300.00, '2024-12-29', 'Cash', 'New'),
(424, 'Saurabh Joshi', 40, 'Kanpur', 84000, 5100.00, '2025-08-06', 'UPI', 'VIP'),
(425, 'Sana Mehta', 21, 'Kanpur', 164000, 11400.00, '2025-03-29', 'Credit Card', 'Premium'),
(426, 'Krishna Agarwal', 35, 'Kolkata', 149000, 1500.00, '2024-01-19', 'Cash', 'Premium'),
(427, 'Nikhil Pandey', 59, 'Kanpur', 171000, 900.00, '2025-04-03', 'Debit Card', 'New'),
(428, 'Imran Malik', 63, 'Mumbai', 126000, 19700.00, '2025-12-15', 'Cash', 'New'),
(429, 'Kavya Reddy', 31, 'Ahmedabad', 95000, 27100.00, '2026-03-24', 'Net Banking', 'Regular'),
(430, 'Sameer Ansari', 18, 'Indore', 113000, 29200.00, '2025-08-01', 'Debit Card', 'Regular'),
(431, 'Neha Kapoor', 48, 'Gurugram', 104000, 14600.00, '2025-10-27', 'Debit Card', 'New'),
(432, 'Rahul Kumar', 59, 'Pune', 66000, 8100.00, '2025-05-07', 'UPI', 'VIP'),
(433, 'Rohit Tripathi', 60, 'Bengaluru', 53000, 1800.00, '2026-10-15', 'Debit Card', 'New'),
(434, 'Myra Siddiqui', 44, 'Chennai', 117000, 2300.00, '2025-01-23', 'Debit Card', 'Premium'),
(435, 'Anika Bansal', 61, 'Patna', 139000, 18800.00, '2025-09-06', 'Credit Card', 'Premium'),
(436, 'Shreya Choudhary', 36, 'Lucknow', 138000, 7000.00, '2025-06-13', 'Net Banking', 'Premium'),
(437, 'Anika Shah', 61, 'Bengaluru', 40000, 11800.00, '2025-12-28', 'Credit Card', 'New'),
(438, 'Aadhya Gupta', 44, 'Bengaluru', 113000, 13800.00, '2025-08-25', 'Cash', 'Regular'),
(439, 'Ira Tiwari', 48, 'Noida', 180000, 4100.00, '2026-08-25', 'Credit Card', 'Regular'),
(440, 'Anjali Srivastava', 61, 'Chennai', 153000, 15700.00, '2026-04-26', 'UPI', 'Premium'),
(441, 'Ira Choudhary', 26, 'Varanasi', 105000, 21400.00, '2026-07-26', 'Credit Card', 'New'),
(442, 'Priya Das', 63, 'Kanpur', 38000, 25400.00, '2025-11-12', 'Credit Card', 'New'),
(443, 'Nikhil Tripathi', 58, 'Noida', 19000, 23600.00, '2025-07-14', 'Credit Card', 'Premium'),
(444, 'Ira Jain', 54, 'Kanpur', 143000, 5000.00, '2024-09-22', 'Net Banking', 'VIP'),
(445, 'Karan Qureshi', 58, 'Kolkata', 121000, 22400.00, '2026-09-04', 'Cash', 'Regular'),
(446, 'Anjali Patel', 20, 'Patna', 69000, 19600.00, '2024-01-29', 'Debit Card', 'Premium'),
(447, 'Amit Khan', 19, 'Delhi', 178000, 13200.00, '2025-04-08', 'Debit Card', 'New'),
(448, 'Zoya Malik', 26, 'Lucknow', 116000, 26200.00, '2025-09-18', 'Credit Card', 'Regular'),
(449, 'Myra Pandey', 20, 'Pune', 92000, 23800.00, '2025-11-22', 'Cash', 'Premium'),
(450, 'Aadhya Siddiqui', 39, 'Bhopal', 109000, 10100.00, '2024-12-03', 'Cash', 'Regular'),
(451, 'Zoya Kumar', 32, 'Jaipur', 51000, 11300.00, '2024-02-14', 'Net Banking', 'Premium'),
(452, 'Hina Qureshi', 25, 'Hyderabad', 27000, 19700.00, '2025-06-07', 'Net Banking', 'Regular'),
(453, 'Anika Tiwari', 56, 'Noida', 45000, 1500.00, '2024-04-08', 'UPI', 'VIP'),
(454, 'Meera Srivastava', 46, 'Chennai', 49000, 28500.00, '2025-06-01', 'Cash', 'Premium'),
(455, 'Sneha Reddy', 31, 'Delhi', 95000, 22000.00, '2024-07-25', 'Net Banking', 'New'),
(456, 'Riya Singh', 57, 'Prayagraj', 53000, 21900.00, '2024-08-02', 'Net Banking', 'Regular'),
(457, 'Aadhya Jain', 36, 'Lucknow', 45000, 25900.00, '2025-02-10', 'Net Banking', 'Premium'),
(458, 'Pari Khan', 34, 'Indore', 69000, 18800.00, '2026-04-19', 'Debit Card', 'Premium'),
(459, 'Diya Jain', 20, 'Patna', 145000, 11100.00, '2026-09-11', 'Debit Card', 'Premium'),
(460, 'Aarav Choudhary', 18, 'Delhi', 40000, 6100.00, '2026-10-08', 'Credit Card', 'Regular'),
(461, 'Arjun Shah', 50, 'Gurugram', 43000, 13600.00, '2025-04-18', 'Cash', 'New'),
(462, 'Riya Choudhary', 34, 'Ahmedabad', 30000, 5600.00, '2024-12-23', 'UPI', 'New'),
(463, 'Atharv Das', 41, 'Bengaluru', 127000, 6400.00, '2024-07-13', 'UPI', 'Regular'),
(464, 'Imran Qureshi', 26, 'Kanpur', 102000, 18800.00, '2026-06-15', 'Net Banking', 'New'),
(465, 'Aarav Mehta', 64, 'Gurugram', 113000, 18000.00, '2025-01-09', 'UPI', 'VIP'),
(466, 'Riya Qureshi', 43, 'Ahmedabad', 87000, 20200.00, '2026-09-06', 'Cash', 'Premium'),
(467, 'Amit Kumar', 25, 'Gorakhpur', 33000, 8600.00, '2024-07-31', 'Cash', 'VIP'),
(468, 'Priya Singh', 54, 'Ahmedabad', 64000, 19900.00, '2026-01-04', 'Net Banking', 'Regular'),
(469, 'Reyansh Ansari', 61, 'Gorakhpur', 141000, 25400.00, '2024-08-19', 'Cash', 'VIP'),
(470, 'Kavya Das', 20, 'Gurugram', 84000, 16500.00, '2024-01-26', 'Net Banking', 'Premium'),
(471, 'Faizan Verma', 60, 'Bengaluru', 150000, 27200.00, '2024-07-14', 'Cash', 'Premium'),
(472, 'Kabir Yadav', 48, 'Hyderabad', 116000, 8100.00, '2024-04-21', 'UPI', 'Premium'),
(473, 'Krishna Pandey', 50, 'Bhopal', 144000, 8900.00, '2024-06-02', 'Cash', 'New'),
(474, 'Shaurya Shah', 33, 'Bengaluru', 89000, 3000.00, '2025-04-01', 'Net Banking', 'VIP'),
(475, 'Imran Sheikh', 43, 'Jaipur', 38000, 24000.00, '2026-06-28', 'Net Banking', 'VIP'),
(476, 'Tanvi Pandey', 23, 'Bhopal', 132000, 16600.00, '2024-08-31', 'Cash', 'Regular'),
(477, 'Nazia Patel', 24, 'Chennai', 123000, 2300.00, '2024-01-01', 'UPI', 'New'),
(478, 'Vikash Malik', 50, 'Patna', 70000, 23800.00, '2025-11-29', 'Debit Card', 'Regular'),
(479, 'Nikhil Jain', 32, 'Ahmedabad', 102000, 29100.00, '2026-08-26', 'Debit Card', 'VIP'),
(480, 'Tanvi Verma', 25, 'Lucknow', 74000, 600.00, '2025-11-30', 'Debit Card', 'New'),
(481, 'Tanvi Tiwari', 53, 'Indore', 113000, 5900.00, '2024-04-03', 'Credit Card', 'VIP'),
(482, 'Saanvi Agarwal', 26, 'Kolkata', 45000, 13500.00, '2025-02-05', 'Credit Card', 'Regular'),
(483, 'Ananya Pandey', 43, 'Varanasi', 135000, 10200.00, '2025-11-23', 'UPI', 'VIP'),
(484, 'Diya Shah', 20, 'Agra', 49000, 23500.00, '2026-07-25', 'Net Banking', 'Premium'),
(485, 'Reyansh Kumar', 49, 'Delhi', 153000, 2900.00, '2026-06-05', 'Net Banking', 'VIP'),
(486, 'Aarav Sheikh', 50, 'Kanpur', 166000, 9300.00, '2024-09-19', 'UPI', 'VIP'),
(487, 'Nikhil Choudhary', 60, 'Prayagraj', 173000, 16900.00, '2026-10-29', 'Cash', 'VIP'),
(488, 'Shreya Qureshi', 56, 'Jaipur', 88000, 20800.00, '2025-12-03', 'Debit Card', 'VIP'),
(489, 'Riya Verma', 26, 'Gorakhpur', 123000, 26700.00, '2025-09-04', 'Net Banking', 'New'),
(490, 'Pari Jain', 63, 'Patna', 179000, 11600.00, '2025-02-15', 'Credit Card', 'New'),
(491, 'Ayesha Jain', 61, 'Hyderabad', 51000, 9600.00, '2026-10-28', 'Net Banking', 'New'),
(492, 'Zoya Kapoor', 63, 'Lucknow', 108000, 29200.00, '2026-09-10', 'Net Banking', 'VIP'),
(493, 'Varun Gupta', 61, 'Patna', 91000, 22100.00, '2024-01-27', 'Net Banking', 'Regular'),
(494, 'Sameer Tripathi', 19, 'Chennai', 55000, 3200.00, '2024-04-25', 'Credit Card', 'New'),
(495, 'Aadhya Sheikh', 28, 'Pune', 82000, 7900.00, '2024-05-07', 'Debit Card', 'Premium'),
(496, 'Pari Das', 52, 'Noida', 109000, 23600.00, '2024-07-28', 'Net Banking', 'Premium'),
(497, 'Kabir Saxena', 65, 'Patna', 117000, 12600.00, '2025-08-12', 'UPI', 'VIP'),
(498, 'Anika Joshi', 42, 'Kolkata', 98000, 28700.00, '2024-04-20', 'UPI', 'New'),
(499, 'Kabir Gupta', 30, 'Prayagraj', 131000, 12000.00, '2026-01-23', 'Net Banking', 'Premium'),
(500, 'Hina Joshi', 64, 'Varanasi', 93000, 23400.00, '2024-12-29', 'UPI', 'Premium');

-- Verify the dataset
SELECT COUNT(*) AS total_customers FROM customers;
SELECT * FROM customers LIMIT 10;

SELECT COUNT(*) AS total_customers
FROM customers;
 -- check average age
select avg(age) as average_age
from customers;
 -- check highest ioncome
SELECT MAX(monthly_income) as highest_income
from customers;
 --  check lowest purchase amount
SELECT MIN(purchase_amount) AS lowest_purchase
FROM customers;

 -- check total_sales
SELECT SUM(purchase_amount) AS total_sales
FROM customers;

-- City-wise customers
 
 SELECT city, COUNT(*) AS total_customers
FROM customers
GROUP BY city
ORDER BY total_customers DESC;

-- Age by total customers

SELECT
CASE
    WHEN age BETWEEN 18 AND 25 THEN '18-25'
    WHEN age BETWEEN 26 AND 35 THEN '26-35'
    WHEN age BETWEEN 36 AND 45 THEN '36-45'
    ELSE '46+'
END AS age_group,
COUNT(*) AS total_customers
FROM customers
GROUP BY age_group
ORDER BY total_customers DESC;

-- city vise average income

SELECT
city,
ROUND(AVG(monthly_income), 2) AS avg_income
FROM customers
GROUP BY city
ORDER BY avg_income DESC;

-- check total customer segment

SELECT
customer_segment,
COUNT(*) AS total_customers
FROM customers
GROUP BY customer_segment
ORDER BY total_customers DESC;

-- check payemnt method

SELECT
payment_method,
COUNT(*) AS total_orders,
SUM(purchase_amount) AS total_sales
FROM customers
GROUP BY payment_method
ORDER BY total_sales DESC;

--

-- Find the number of customers in each city

SELECT city, COUNT(*) AS total_customers
FROM customers
GROUP BY city
ORDER BY total_customers DESC;

-- Query 2: Customer distribution by age group

SELECT
CASE
    WHEN age BETWEEN 18 AND 25 THEN '18-25'
    WHEN age BETWEEN 26 AND 35 THEN '26-35'
    WHEN age BETWEEN 36 AND 45 THEN '36-45'
    ELSE '46+'
END AS age_group,
COUNT(*) AS total_customers
FROM customers
GROUP BY age_group
ORDER BY total_customers DESC;

-- Query 6: Find total sales generated by each city

SELECT
    city,
    COUNT(*) AS total_orders,
    SUM(purchase_amount) AS total_sales,
    ROUND(AVG(purchase_amount), 2) AS average_purchase
FROM customers
GROUP BY city
ORDER BY total_sales DESC;

-- Query 7: Payment Method Analysis

SELECT
    payment_method,
    COUNT(*) AS total_orders,
    SUM(purchase_amount) AS total_revenue,
    ROUND(AVG(purchase_amount), 2) AS average_order_value
FROM customers
GROUP BY payment_method
ORDER BY total_revenue DESC;

-- Query 8: Customer Segment Analysis

SELECT
    customer_segment,
    COUNT(*) AS total_customers,
    SUM(purchase_amount) AS total_revenue,
    ROUND(AVG(purchase_amount), 2) AS average_purchase
FROM customers
GROUP BY customer_segment
ORDER BY total_revenue DESC;

-- Query 9: Identify High-Value Customers

SELECT
    customer_id,
    customer_name,
    city,
    purchase_amount,
    customer_segment
FROM customers
WHERE purchase_amount > 20000
ORDER BY purchase_amount DESC;

-- Query 10: Find cities with total sales above 5 lakh

SELECT
    city,
    COUNT(*) AS total_orders,
    SUM(purchase_amount) AS total_sales
FROM customers
GROUP BY city
HAVING SUM(purchase_amount) > 500000
ORDER BY total_sales DESC;

-- Query 11: Find customers purchasing above average

SELECT
    customer_id,
    customer_name,
    city,
    purchase_amount
FROM customers
WHERE purchase_amount > (
    SELECT AVG(purchase_amount)
    FROM customers
)
ORDER BY purchase_amount DESC;

-- Query 12: High Value Customers using CTE

WITH HighValueCustomers AS (
    SELECT
        customer_id,
        customer_name,
        city,
        purchase_amount,
        customer_segment
    FROM customers
    WHERE purchase_amount > 20000
)

SELECT *
FROM HighValueCustomers
ORDER BY purchase_amount DESC;

-- Query 13: Rank Customers by Purchase Amount in Each City

SELECT *
FROM (
    SELECT
        customer_id,
        customer_name,
        city,
        purchase_amount,
        RANK() OVER (
            PARTITION BY city
            ORDER BY purchase_amount DESC
        ) AS customer_rank
    FROM customers
) AS ranked_customers
WHERE customer_rank <= 3
ORDER BY city, customer_rank;

-- Query 14: Classify Customers by Purchase Amount

SELECT
    customer_name,
    city,
    purchase_amount,
    CASE
        WHEN purchase_amount < 5000 THEN 'Low Purchase'
        WHEN purchase_amount BETWEEN 5000 AND 15000 THEN 'Medium Purchase'
        ELSE 'High Purchase'
    END AS purchase_category
FROM customers
ORDER BY purchase_amount DESC;

-- Query 15: Customer Count and Revenue by Purchase Category

SELECT
    CASE
        WHEN purchase_amount < 5000 THEN 'Low Purchase'
        WHEN purchase_amount BETWEEN 5000 AND 15000 THEN 'Medium Purchase'
        ELSE 'High Purchase'
    END AS purchase_category,
    COUNT(*) AS total_customers,
    SUM(purchase_amount) AS total_revenue,
    AVG(purchase_amount) AS average_purchase
FROM customers
GROUP BY purchase_category
ORDER BY total_revenue DESC;

-- Query 16: Check Duplicate Customer IDs

SELECT
    customer_id,
    COUNT(*) AS duplicate_count
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- Query 17: Check Missing Values in Customer Table

SELECT
    SUM(customer_id IS NULL) AS missing_customer_id,
    SUM(customer_name IS NULL) AS missing_customer_name,
    SUM(age IS NULL) AS missing_age,
    SUM(city IS NULL) AS missing_city,
    SUM(monthly_income IS NULL) AS missing_income,
    SUM(purchase_amount IS NULL) AS missing_purchase,
    SUM(order_date IS NULL) AS missing_order_date,
    SUM(payment_method IS NULL) AS missing_payment_method,
    SUM(customer_segment IS NULL) AS missing_segment
FROM customers;

-- Query 18: Check Invalid Customer Records

SELECT *
FROM customers
WHERE age <= 0
   OR monthly_income < 0
   OR purchase_amount < 0;
   
   -- Query 19: Monthly Sales Trend Analysis

SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS sales_month,
    COUNT(*) AS total_orders,
    SUM(purchase_amount) AS monthly_revenue,
    AVG(purchase_amount) AS average_order_value
FROM customers
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY monthly_revenue DESC;
   
 -- Query 20: Monthly Revenue by Payment Method

SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS sales_month,
    payment_method,
    COUNT(*) AS total_orders,
    SUM(purchase_amount) AS total_revenue
FROM customers
GROUP BY
    DATE_FORMAT(order_date, '%Y-%m'),
    payment_method
ORDER BY sales_month, total_revenue DESC;  

-- Query 21: Overall Payment Method Performance

SELECT
    payment_method,
    COUNT(*) AS total_orders,
    SUM(purchase_amount) AS total_revenue,
    ROUND(AVG(purchase_amount), 2) AS average_purchase
FROM customers
GROUP BY payment_method
ORDER BY total_revenue DESC;

-- Query 22: City-wise Revenue Percentage Contribution

SELECT
    city,
    SUM(purchase_amount) AS city_revenue,
    ROUND(
        SUM(purchase_amount) * 100.0 /
        (SELECT SUM(purchase_amount) FROM customers),
        2
    ) AS revenue_percentage
FROM customers
GROUP BY city
ORDER BY revenue_percentage DESC;

-- Query 22: City-wise Revenue Contribution

SELECT
    city,
    SUM(purchase_amount) AS city_revenue,
    ROUND(
        SUM(purchase_amount) * 100.0 /
        (SELECT SUM(purchase_amount) FROM customers),
        2
    ) AS revenue_percentage
FROM customers
GROUP BY city
ORDER BY revenue_percentage DESC;

-- Query 23: Top 10 Highest Spending Customers

SELECT
    customer_id,
    customer_name,
    city,
    customer_segment,
    purchase_amount
FROM customers
ORDER BY purchase_amount DESC
LIMIT 10;

-- Query 24: Day-wise Sales Performance

SELECT
    DAYNAME(order_date) AS order_day,
    COUNT(*) AS total_orders,
    SUM(purchase_amount) AS total_revenue,
    ROUND(AVG(purchase_amount), 2) AS average_purchase
FROM customers
GROUP BY DAYNAME(order_date), DAYOFWEEK(order_date)
ORDER BY DAYOFWEEK(order_date);

-- Query 25: Age Group Purchase Analysis

SELECT
    CASE
        WHEN age BETWEEN 18 AND 25 THEN '18-25'
        WHEN age BETWEEN 26 AND 35 THEN '26-35'
        WHEN age BETWEEN 36 AND 45 THEN '36-45'
        ELSE '46+'
    END AS age_group,
    COUNT(*) AS total_customers,
    ROUND(SUM(purchase_amount), 2) AS total_revenue,
    ROUND(AVG(purchase_amount), 2) AS average_purchase
FROM customers
GROUP BY age_group
ORDER BY total_revenue DESC;

-- Query 26: Rank Customer Segments by Revenue

SELECT
    customer_segment,
    SUM(purchase_amount) AS total_revenue,
    RANK() OVER (
        ORDER BY SUM(purchase_amount) DESC
    ) AS revenue_rank
FROM customers
GROUP BY customer_segment;

-- Query 27: Running Total of Revenue

SELECT
    order_date,
    customer_name,
    purchase_amount,
    SUM(purchase_amount) OVER (
        ORDER BY order_date, customer_id
    ) AS cumulative_revenue
FROM customers
ORDER BY order_date, customer_id;