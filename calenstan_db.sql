SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


-- Database: `calenstan_db`
  CREATE DATABASE calenstan_db;
-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `rem_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `descript` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `month` tinyint(4) NOT NULL,
  `day` tinyint(4) NOT NULL,
  `time_start` varchar(15) NOT NULL,
  `time_end` varchar(15) NOT NULL,
  `status` enum('deleted','unfinished','ongoing','finished') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint(255) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `icon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `email`, `password`, `icon`) VALUES
(1, 'John', 'Doe', 'user@gmail.com', 'user', 'icon1');

--
-- Dumping data for table 'reminders'
--

INSERT INTO reminders (event_date, event_name, description, time_start, time_end)
VALUES
  ('2023-10-27', 'Dentist Appointment', 'Have braces installed', '08:30:00', '10:30:00'),
  ('2023-12-09', 'Contemplate Life Decisions', 'Pray to WebDev Gods', '07:30:00', '08:30:00'),
  ('2023-12-09', 'Mourn Project Presentation', 'Offer braincells to bed', '17:30:00', '18:30:00'),
  ('2023-12-10', 'Grind for Majors Again', 'Clutch the bagsak', '06:00:00', '21:00:00'),
  ('2024-06-29', 'Birthday Incoming', 'Bake a cake', '08:00:00', '10:00:00'),
  -- Generating 6 AI-generated events between October 27, 2023, and December 9, 2023
  ('2023-11-01', 'Conference', 'Discuss AI technologies', '10:00:00', '12:00:00'),
  ('2023-11-10', 'Workshop', 'Hands-on coding session', '14:00:00', '16:00:00'),
  ('2023-11-20', 'Networking', 'Connect with professionals', '18:00:00', '20:00:00'),
  ('2023-11-25', 'Webinar', 'Latest trends in AI', '12:00:00', '14:00:00'),
  ('2023-12-01', 'Hackathon', 'Solve AI challenges', '09:00:00', '11:00:00'),
  ('2023-12-05', 'Panel Discussion', 'Future of AI in industry', '16:00:00', '18:00:00'),
  -- Generating 3 AI-generated events after December 9, 2023
  ('2023-12-15', 'Seminar', 'Emerging AI applications', '08:00:00', '10:00:00'),
  ('2023-12-20', 'Meetup', 'AI enthusiasts gathering', '14:00:00', '16:00:00'),
  ('2023-12-25', 'Demo Day', 'Showcasing AI projects', '18:00:00', '20:00:00');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`rem_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `rem_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

