-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Sep 11, 2023 at 09:32 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizesdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `answerSyntax` varchar(255) NOT NULL,
  `questionId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `answerSyntax`, `questionId`) VALUES
(10, '1000', 4),
(11, '1010', 4),
(12, '112', 4),
(16, '10000', 6),
(17, '1010', 6),
(18, '4', 6),
(19, '1001', 7),
(20, '1000', 7),
(21, '1010', 7),
(65, 'True', 30),
(66, 'False', 30),
(67, 'Romaine lettuce', 31),
(68, 'Spinach ', 31),
(224, 'Correct Answer Updated', 93),
(225, 'Choice1 updated', 93),
(226, 'Choice 2 updated', 93),
(227, 'Choice 3 updated', 93),
(228, 'Added new choice', 93),
(237, 'Hyper Text Markup Language', 97),
(238, 'Hyperlinks and Text Markup Language', 97),
(244, 'new choice 1', 93),
(245, 'new choice 2', 93),
(246, 'new choice 3', 93),
(283, 'b', 4),
(286, 'CorrectAnswer', 117),
(287, 'choice1', 117),
(288, '6', 118),
(289, '3', 118),
(290, '10', 118),
(291, 'Honey', 119),
(292, 'Canned tuna', 119),
(293, 'Peanut butter', 119),
(294, 'Eiffel Tower', 120),
(295, 'Statue of Liberty', 120),
(296, 'Colosseum', 120),
(297, 'Great Wall of China', 120),
(298, 'Lebron James', 121),
(299, 'Kyle Korver', 121),
(300, 'JJ Reddick', 121),
(301, 'All of the above', 122),
(302, 'Sweden', 122),
(303, 'Denmark', 122),
(304, 'Poland', 122),
(305, 'Avatar and Avengers: End Game', 123),
(306, 'Avengers: End Game and Star Wars: Episode VII – The Force Awakens', 123),
(307, 'Avengers: Infinity War and Titanic', 123),
(308, 'Furious 7 and Avatar', 123);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question-Syntax` varchar(255) NOT NULL,
  `correctAnswer` int(11) DEFAULT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question-Syntax`, `correctAnswer`, `userId`) VALUES
(4, 'What is 100+100 in binary', 10, 1),
(6, 'what is 1000+1000 in binary', 16, 1),
(7, '9 in binary is', 19, 1),
(30, '10+10=20', 65, 1),
(31, 'Which green is usually found in a Caesar salad?', 67, 1),
(93, 'Question Syntax updated', 224, 1),
(97, 'Choose the correct HTML element for the largest heading:', 237, 1),
(117, 'question55', 286, 1),
(118, 'How many Infinity Stones are there? ', 288, 3),
(119, 'What is the only food that cannot go bad? ', 291, 3),
(120, 'What is the most visited tourist attraction in the world? ', 294, 3),
(121, 'Who made the third most 3-pointers in the Playoffs in NBA history? ', 298, 3),
(122, 'Which of these EU countries does not use the euro as its currency? ', 301, 3),
(123, 'What are the two highest-grossing films of all time? ', 305, 3);

-- --------------------------------------------------------

--
-- Table structure for table `quizes`
--

CREATE TABLE `quizes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quizes`
--

INSERT INTO `quizes` (`id`, `name`, `userid`) VALUES
(3, 'quiz2', 1),
(27, 'Quiz 1', 1),
(28, 'quiz11', 1),
(30, 'Quiz added', 3),
(31, 'quiz101', 3),
(32, 'quizToTest', 1);

-- --------------------------------------------------------

--
-- Table structure for table `quizes_questions`
--

CREATE TABLE `quizes_questions` (
  `id` int(11) NOT NULL,
  `quizId` int(11) NOT NULL,
  `questionId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quizes_questions`
--

INSERT INTO `quizes_questions` (`id`, `quizId`, `questionId`) VALUES
(6, 3, 7),
(7, 3, 30),
(8, 3, 31),
(9, 3, 93),
(112, 3, 117),
(114, 27, 30),
(115, 27, 97),
(116, 27, 4),
(117, 27, 31),
(118, 27, 7),
(119, 27, 6),
(121, 28, 30),
(122, 28, 93),
(123, 28, 31),
(124, 28, 97),
(130, 30, 30),
(131, 30, 97),
(132, 30, 117),
(133, 30, 6),
(134, 30, 93),
(135, 31, 7),
(136, 31, 97),
(137, 31, 30),
(138, 31, 4),
(139, 31, 6),
(141, 3, 123),
(142, 3, 118),
(143, 32, 7),
(144, 32, 30),
(145, 32, 118),
(146, 32, 6),
(147, 32, 31),
(148, 32, 121),
(149, 32, 122);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(10) NOT NULL DEFAULT 'Student'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`) VALUES
(1, 'ex', 'ex@gmail.com', 'bf4fc65a70ed8f1794b7e83d3aaf51d7', 'Teacher'),
(2, 'user2', 'user2@gmail.com', 'bf4fc65a70ed8f1794b7e83d3aaf51d7', 'Student'),
(3, 'user3', 'user3@gmail.com', 'bf4fc65a70ed8f1794b7e83d3aaf51d7', 'Teacher'),
(4, 'user4', 'user4@gmail.com', 'bf4fc65a70ed8f1794b7e83d3aaf51d7', 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `user_attempts_answers`
--

CREATE TABLE `user_attempts_answers` (
  `id` int(11) NOT NULL,
  `attemptId` int(11) NOT NULL,
  `questionId` int(11) NOT NULL,
  `userAnswer` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_attempts_answers`
--

INSERT INTO `user_attempts_answers` (`id`, `attemptId`, `questionId`, `userAnswer`) VALUES
(1, 1, 7, 19),
(2, 1, 30, 65),
(3, 1, 31, 67),
(4, 1, 93, 227),
(5, 1, 117, 286),
(6, 1, 123, 306),
(7, 2, 7, 19),
(8, 2, 30, 65),
(9, 2, 31, 67),
(10, 2, 93, 228),
(11, 2, 117, 287),
(12, 2, 123, 308),
(13, 3, 7, 19),
(14, 3, 30, 65),
(15, 3, 31, 67),
(16, 3, 93, 224),
(17, 3, 117, 286),
(18, 3, 123, 305),
(19, 4, 7, 21),
(20, 4, 30, 65),
(21, 4, 31, 68),
(22, 4, 93, 224),
(23, 4, 117, 286),
(24, 4, 123, 306),
(25, 5, 7, 19),
(26, 5, 30, 66),
(27, 5, 31, 67),
(28, 5, 93, 244),
(29, 5, 117, 287),
(30, 5, 123, 306),
(31, 6, 7, 19),
(32, 6, 30, 65),
(33, 6, 31, 67),
(34, 6, 93, 245),
(35, 6, 117, 286),
(36, 6, 123, 306),
(37, 7, 7, 20),
(38, 7, 30, 66),
(39, 7, 31, 68),
(40, 7, 93, 226),
(41, 7, 117, 287),
(42, 7, 123, 306),
(43, 8, 7, 19),
(44, 8, 30, 65),
(45, 8, 31, 67),
(46, 8, 93, 245),
(47, 8, 117, 287),
(48, 8, 123, 308),
(49, 9, 30, 65),
(50, 9, 97, 237),
(51, 9, 4, 10),
(52, 9, 31, 67),
(53, 9, 7, 19),
(54, 9, 6, 16),
(55, 10, 7, 19),
(56, 10, 30, 65),
(57, 10, 31, 67),
(58, 10, 93, 226),
(59, 10, 117, 286),
(60, 10, 123, 308),
(61, 10, 118, 288);

-- --------------------------------------------------------

--
-- Table structure for table `user_quizes_log`
--

CREATE TABLE `user_quizes_log` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `quizId` int(11) NOT NULL,
  `score` int(15) DEFAULT NULL,
  `timeTaken` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_quizes_log`
--

INSERT INTO `user_quizes_log` (`id`, `userid`, `quizId`, `score`, `timeTaken`) VALUES
(1, 1, 3, 40, '2023-08-30 11:23:04'),
(2, 1, 3, 30, '2023-08-30 11:36:04'),
(3, 2, 3, 60, '2023-08-31 05:34:16'),
(4, 2, 3, 30, '2023-08-31 05:36:04'),
(5, 2, 3, 20, '2023-08-31 05:37:18'),
(6, 2, 3, 40, '2023-08-31 05:37:40'),
(7, 2, 3, 0, '2023-08-31 05:38:24'),
(8, 2, 3, 30, '2023-08-31 05:39:39'),
(9, 2, 27, 60, '2023-08-31 05:40:14'),
(10, 1, 3, 50, '2023-09-02 07:25:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answerSyntax` (`answerSyntax`),
  ADD KEY `questionId` (`questionId`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `question-Syntax` (`question-Syntax`),
  ADD KEY `questions_ibfk_1` (`correctAnswer`);

--
-- Indexes for table `quizes`
--
ALTER TABLE `quizes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `quizes_questions`
--
ALTER TABLE `quizes_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questionId` (`questionId`),
  ADD KEY `quizId` (`quizId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_attempts_answers`
--
ALTER TABLE `user_attempts_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attemptId` (`attemptId`),
  ADD KEY `questionId` (`questionId`),
  ADD KEY `userAnswer` (`userAnswer`);

--
-- Indexes for table `user_quizes_log`
--
ALTER TABLE `user_quizes_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `quizId` (`quizId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `quizes`
--
ALTER TABLE `quizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `quizes_questions`
--
ALTER TABLE `quizes_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_attempts_answers`
--
ALTER TABLE `user_attempts_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `user_quizes_log`
--
ALTER TABLE `user_quizes_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `question-answers-id` FOREIGN KEY (`questionId`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`correctAnswer`) REFERENCES `answers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quizes`
--
ALTER TABLE `quizes`
  ADD CONSTRAINT `quizes_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quizes_questions`
--
ALTER TABLE `quizes_questions`
  ADD CONSTRAINT `quizes_questions_ibfk_1` FOREIGN KEY (`questionId`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quizes_questions_ibfk_2` FOREIGN KEY (`quizId`) REFERENCES `quizes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_attempts_answers`
--
ALTER TABLE `user_attempts_answers`
  ADD CONSTRAINT `user_attempts_answers_ibfk_1` FOREIGN KEY (`attemptId`) REFERENCES `user_quizes_log` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_attempts_answers_ibfk_2` FOREIGN KEY (`questionId`) REFERENCES `questions` (`id`),
  ADD CONSTRAINT `user_attempts_answers_ibfk_3` FOREIGN KEY (`userAnswer`) REFERENCES `answers` (`id`);

--
-- Constraints for table `user_quizes_log`
--
ALTER TABLE `user_quizes_log`
  ADD CONSTRAINT `user_quizes_log_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_quizes_log_ibfk_3` FOREIGN KEY (`quizId`) REFERENCES `quizes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
