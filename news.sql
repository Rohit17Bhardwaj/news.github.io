-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2023 at 03:30 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `post` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `post`) VALUES
(1, 'sport', 2),
(2, 'politics', 3),
(3, 'current', 4);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `author` int(11) NOT NULL,
  `post_img` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `category`, `post_date`, `author`, `post_img`) VALUES
(47, 'my views', 'how many visit', '3', '14 Jul, 2023', 33, '1.jpg'),
(48, 'SDM metting for cyber secuirty project', 'web designing ,app develoment, cyber secuirty \r\nerp prjoect', '2', '18 Oct, 2023', 33, 'slidm3.jpg'),
(40, 'WORLD CUP 2023', 'India will host Pakistan in the upcoming 2023 ICC World Cup on 15 October in the city of Ahmedabad.\r\n\r\nA total of 48 matches will be played across 12 venues and the final will be held at the Narendra Modi Stadium in Ahmedabad on 19 November.\r\n\r\nThe confirmation comes after months of speculation on whether Pakistan would travel to India for the tournament.\r\n\r\nThe countries have long shared a hostile relationship which has often affected sporting relations as well.\r\n\r\nPakistan had earlier threatened to boycott the World Cup after India said they would not visit the country for the Asia Cup and demanded the tournament to be moved to a neutral location.\r\n\r\nPakistan are due to host their first Asia Cup since 2008 - just weeks before India hosts the 50-over World Cup in October and November. Pakistan are also set to host the ICC Champions Trophy in 2025.\r\n\r\nThe Asia Cup will now be held in a hybrid model with Pakistan hosting some matches and the remaining, including India\'s games, to be played in Sri Lanka.\r\nAccording to the official schedule of the BCCI (Board of Control for Cricket in India), Pakistan is set to play their World Cup league matches across five Indian cities.\r\n\r\nIndia, meanwhile, will begin their World Cup campaign against Australia in the southern city of Chennai on 8 October.\r\n\r\nIt\'s going to be a special one for the team as they seek to script a repeat of 2011, when India defeated Sri Lanka in the final held in Mumbai.\r\n\r\nA total of 10 teams will participate in the tournament. Of these, eight teams have already been decided, while the remaining two will be decided after the qualifier matches.\r\n\r\nThe teams will be divided into two groups of five and all teams would have to play each other in this phase.\r\n\r\nThe winners of both groups will qualify for the semi-finals, where the first-placed team of the group stage will compete against the fourth-placed team, while the second and third-ranked teams will play each other. The winners would then move to the finals.', '1', '12 Jul, 2023', 33, 'wc.png'),
(41, 'RAJASTHAN 2023', 'The 2023 Rajasthan Legislative Assembly election is expected to be held in or before December this year. The Congress party holds the majority in the Rajasthan Assembly, which comprises 200 seats, with Chief Minister Ashok Gehlot leading the state government. However, the state is currently grappling with internal conflicts due to infighting between different factions within the party. Ashok Gehlot and former deputy chief minister Sachin Pilot are at the forefront of these factions, leading to a persistent issue of discord within the state. The political contenders in Rajasthan are the Bharatiya Janata Party (BJP), Indian National Congress (INC), Bahujan Samaj Party (BSP), and Rashtriya Loktantrik Party (RLP). In the 2023 Assembly elections, Rajasthan is expected to witness a closely contested battle between the ruling Congress party and the opposition BJP. In 2018, the Congress party was successful in wresting power from the BJP government led by former Rajasthan CM Vasundhara Raje. The Congress became the single largest party with 100 seats, short of a majority by 1 seat while the BJP managed to secure only 73 seats. The Congress party formed the government with the Bahujan Samaj Party (BSP). Both Pilot and Gehlot have been engaged in a contentious struggle for power since 2018.', '2', '12 Jul, 2023', 33, 'LPG.jpeg'),
(45, 'CYBER SECUIRTY', 'Vision\r\nMake UT Dallas Cyber Security a national resource for government, industry and academia by conducting cutting-edge research in cyber security threats and solutions, providing a comprehensive education program in all aspects of cyber security and training students with the capability to carry out cyber operations.\r\n\r\nMission\r\nWhile continuing to enhance our current research and education efforts,\r\n\r\nexplore new opportunities in interdisciplinary research,\r\n(ii) engage women and minority communities in cyber security programs, and\r\n(iii) build a strong cyber security workforce for government, industry and academia.\r\n\r\nOverview\r\nUT Dallas is a NSA/DHS National Center of Academic Excellence in Cyber Defense Education and Research as well as Cyber Operations. \r\n\r\nFor more detailed information about the Cyber Security Research and Education Institute (CSI), please click here.', '3', '12 Jul, 2023', 33, 'eth1.jfif'),
(46, 'Chandrayaan 3', 'These missions of other countries are also in the process of reaching the moon like NASA\'s Artemis I mission. In fact, recently the Artemis I mission has created a lunar orbit using a spacecraft that takes humans to the lunar surface. In astronomy, lunar orbit is the orbit of an object around the moon on which it rotates or orbits. Other countries of the world are also going to make similar efforts on the moon next year. Let\'s take a look at it here.\r\n\r\nWho is launching the Moon Mission?\r\n\r\nIndia is planning to launch Chandrayaan-2023 mission to the moon in June 3. This vehicle will fly with a landing module and robotic rover to learn about the lunar surface. India first landed on the moon in 2008 with Chandrayaan-1. Russia is planning to launch its Luna 2023 mission in July 25, which is being sent to the Moon to collect samples from its south polar region. In fact, it is the southernmost point of the moon. Scientists are very interested in this.\r\n\r\n\r\nSpaceX plans to take Japanese billionaire Yusaku Mezwa and eight other astronauts around the moon at the end of 2023.This will be the first mission for SpaceX\'s Starship carrier, which is capable of carrying 8 people into space.\r\n\r\nThe United States space agency NASA plans to launch its next moon mission in 2024, called Artemis II, which will take astronauts to orbit the moon. The US agency is scheduled to launch the Artemis III mission in 2025 or 2026, which will land a black woman on the moon for the first time as the first person.\r\n\r\nThis will be the first time people will walk on the lunar surface since NASA\'s last Apollo mission in 1972. NASA has said that it will use the Space X Starship for the mission. China has announced plans to build a joint base on the moon with Russia by 2035, but no deadline has been set for this project.\r\n\r\nIndia\'s Chandrayaan Mission\r\n\r\nFormer ISRO chairman K Sivan had said in October that the errors in Chandrayaan-2 have been identified and rectified. The \"configuration\" of Chandrayaan-3 is the same as the previous mission Chandrayaan-2. Now if the unmanned Chandrayaan-3 mission is successful, India will become the fourth country to achieve a soft landing on the moon. This will boost the country\'s reputation as a low-cost space power. So far, only Russia, the US and China have successfully carried out missions on the lunar surface.\r\n\r\nBefore Chandrayaan-3, Chandrayaan-2 was the most complex mission of India\'s space agency so far. It was targeted to land at a place on the south pole of the moon where no other landing craft had reached before. The purpose of landing Chandrayaan-2 there was to measure the earthquakes of the moon along with the discovery of water and minerals on the moon, but this high-profile Chandrayaan-2 moon mission failed due to a module crash on 7 September 2019.\r\n\r\nThe new Chandrayaan-3 mission will land in the same area where Chandrayaan-2 was supposed to land and will have a lander, rover and propulsion module. India\'s first mission to the Moon was launched on October 22, 2008 using the Polar Satellite Launch Vehicle (PSLV-C11). The satellite made more than 3400 orbits around the moon and the mission ended on August 29, 2009 when communication with the spacecraft was lost.\r\n\r\nWhy are the countries of the world behind the moon again?\r\n\r\nAccording to Dr. McDowell, an astronomer at the Harvard-Smithsonian Center for Astrophysics in the US, space powers like the US, Russia and China aim to build a base for astronauts to live on the moon. The world\'s powerful countries are using the moon as a stepping stone to go to planets like Mars. \"It\'s a great place to test deep space technology,\" he says.\r\n\r\nAccording to Dr Lucinda King, space project manager at the University of Portsmouth, it takes less fuel to launch a spacecraft from the Moon than to travel deep space from Earth. She says that a fuel source has been discovered on the moon. Dr. King says that it is known that there is water on the south pole of the moon. It can be broken down into hydrogen and oxygen and can be used to refuel spacecraft to travel to Mars and other planets. This is the reason why there is a competition in the countries of the world to go back to the moon again. They are getting desperate to stake their claim on the moon\'s water.', '3', '12 Jul, 2023', 33, 'moun.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`) VALUES
(34, 'rohit', 'bhardwaj', 'rb', 'a384b6463fc216a5f8ecb6670f86456a', 0),
(36, 'rohit', 'bhardwaj', 'admin', '2d235ace000a3ad85f590e321c89bb99', 1),
(33, 'buggu', 'buggu', 'buggu', 'd498956bd2e86ebd3527416c20a5717a', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
