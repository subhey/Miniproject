-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2022 at 07:27 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(10) NOT NULL,
  `ffirst` varchar(20) NOT NULL,
  `flast` varchar(20) NOT NULL,
  `femail` varchar(30) NOT NULL,
  `city` varchar(20) NOT NULL,
  `fphone` int(15) NOT NULL,
  `fdesti` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `ffirst`, `flast`, `femail`, `city`, `fphone`, `fdesti`) VALUES
(1, 'Ganesh', 'Sharma', 'ganeshravisharma2001@gmail.com', 'Nepalgunj', 2147483647, 'Pokhara'),
(2, 'kiran', 'Sharma', 'kiransharma1@gmail.com', 'Nepalgunj', 845868956, 'Nagarkot'),
(7, 'Ganesh', 'Sharma', 'ganeshravisharma2001@gmail.com', 'Nepalgunj', 2147483647, 'Lumbini'),
(8, 'Hitesh', 'Shrestha', 'hitesh45jk@gmail.com', 'Butwal', 458696561, 'Kathmandu'),
(9, 'Ganesh', 'Sharma', 'ganeshravisharma2001@gmail.com', 'Nepalgunj', 2147483647, 'Kathmandu'),
(10, 'Ganesh', 'Sharma', 'ganeshravisharma2001@gmail.com', 'Nepalgunj', 2147483647, 'Bardiya'),
(11, 'Gajanan', 'Wagle', 'gajawagle@gmail.com', 'Janakpur', 2147483647, 'Lumbini'),
(12, 'Ganesh', 'Sharma', 'ganeshravisharma2001@gmail.com', 'Nepalgunj', 2147483647, 'Kathmandu');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `city` varchar(10) NOT NULL,
  `phone` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `fname`, `password`, `email`, `city`, `phone`) VALUES
(34, 'admin', 'Adm12345', 'admintms@gmail.com', 'Nepalgunj', 8971046276),
(51, 'Ganesh', 'Gane1234', 'ganeshravinaik2001@gmail.com', 'Nepalgunj', 8971046276),
(72, 'Aditya', 'Adi12389', 'adityag45@gmail.com', 'Biratnagar', 8574968283),
(73, 'Gajanan', 'GAjju700', 'gajawagle@gmail.com', 'Janakpur', 7984768581),
(74, 'Kiran', 'Adhikari', 'kiranaj56@gmail.com', 'Kathmandu', 7586949199),
(75, 'Prasad', 'Pra23444', 'prasad24@gmail.com', 'Kathmandu', 7485961256),
(76, 'Mahesh', 'Mahi1233', 'maheshmm@gmail.com', 'Janakpur', 9978488656),
(78, 'Nishchay', 'Nishi789', 'nishibhatt234@gmail.com', 'Butwal', 7485961236);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `feedbk` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `feedbk`) VALUES
(1, 'joy', 'joy123@gmail.com', 'good website'),
(2, 'amar', 'amar56@gmail.com', 'nice website'),
(3, 'adam', 'adamgray@gmail.com', 'your website looks good and nice user interface'),
(4, 'adam', 'adamgray@gmail.com', 'your website looks good and nice user interface'),
(5, 'arjun', 'arjun45@gmal.com', 'good website'),
(6, 'Hitesh', 'hitesh43jk@gmai.com', 'its good website nice user interface'),
(7, 'kiran', 'kiran35@gmail.com', 'this is a good website');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `hid` int(10) NOT NULL,
  `hname` varchar(20) NOT NULL,
  `hphone` varchar(15) NOT NULL,
  `hcity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hid`, `hname`, `hphone`, `hcity`) VALUES
(1, 'Middle Point', '78869565', 'Pokhara'),
(2, 'Himalayan Hotel', '78869565', 'Kathamndu');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `pname` varchar(30) NOT NULL,
  `pdescription` varchar(10000) NOT NULL,
  `pi_main` varchar(1000) NOT NULL,
  `pi1` varchar(1000) NOT NULL,
  `pi2` varchar(1000) NOT NULL,
  `pi3` varchar(1000) NOT NULL,
  `package` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`pname`, `pdescription`, `pi_main`, `pi1`, `pi2`, `pi3`, `package`) VALUES
('ABC', 'The Annapurna base camp trek is one of the most popular treks in the world. It literally brings you face to face with an eight-thousander – for a moderate-difficult trek, this is incredible! The fascinating Annapurna massif includes the world’s tenth highest peak. Annapurna I (8,091 m) holds an almost fatal attraction for mountaineers. It has the highest fatality ratio among the eight-thousanders. This formidable aura apart, the ABC trek holds several treasures for the mountain lover.', 'images//destination//ABC1.jpg', 'images//destination//ABC2.jpg', 'images//destination//ABC3.jpg', 'images//destination//ABC4.jpg', 21000),
('Bardiya', 'Bardiya National Park is the largest lowland protected area of Nepal.The park is reputed for its rich biodiversity.The faunal diversity of the park includes 53 species of mammals including endangered megaherbivores like rhinoceros (Rhinoceros unicornis) and elephant (Elephas maximus), more then 25 species of reptiles, over 400 species of birds, 121 species of fishes and an unknown diversity of mollusks and arthropods.', 'images//destination//Bardiya NP1.jpg', 'images//destination//Bardiya NP2.jpg', 'images//destination//Bardiya NP3.jpg', 'images//destination//Bardiya NP4.jpg', 10000),
('Biratnagar', 'Biratnagar', 'images//destination//Lumbini1.jpg', 'images//destination//Lumbini2.jpg', 'images//destination//Kathmandu3.jpg', 'images//destination//Bardiya NP4.jpg', 0),
('Chitwan', 'Nestled at the foot of the Himalayas, Chitwan has a particularly rich flora and fauna and is home to one of the last populations of single-horned Asiatic rhinoceros and is also one of the last refuges of the Bengal Tiger.hitwan National Park has a long history of protection dating back to the early 1800s. It has been designated and legally protected under the National Parks and Wildlife Conservation Act, 1973.', 'images//destination//Chitwan1.jpg', 'images//destination//Chitwan2.jpg', 'images//destination//Chitwan3.jpg', 'images//destination//Chitwan4.jpg', 20000),
('Gosaikunda', 'Gosaikunda is one of the beautiful lakes of Nepal, which is visited by many tourists as well people from inside the country. The lake is very popular as trekking destination which is why tourist pay visit to Goasikunda. For the people of Nepal itself, most of them visit this lake for a religious purpose.Gosaikunda is the frozen lake located in the Langtang National Park in Rasuwa district.', 'images//destination//Gosaikunda1.JPEG', 'images//destination//Gosaikunda2.JPEG', 'images//destination//Gosaikunda3.JPEG', 'images//destination//Gosaikunda4.JPEG', 5000),
('Kathmandu', 'Kathmandu is and has been for many years the centre of Nepals history,art,culture and economy.The city is considered the gateway to the Nepalese Himalayas and is home to several World Heritage Sites: the Durbar Square,Swayambhunath,Boudhanath and Pashupatinath.', 'images//destination//Kathmandu1.JPEG', 'images//destination//Kathmandu2.JPEG', 'images//destination//Kathmandu3.JPEG', 'images//destination//Kathmandu4.JPEG', 10000),
('Kavre', 'The tourist business in the Kavre area has a lot of promise. Dhulikhel, Sangaswoti - Bangthali, Panauti, Banepa, and Chandeni Mandan are historical sites in the Kavre district.There are large religious fairs such as Banepa Chandeshwari Jatra, Namobuddha-Namobuddha Jatra, which is held on Buddha birthday (Buddha Purnima), and Panauti Kumbha Mela, which occurs every twelfth year.Dhulikhel is well known as a well-preserved Newari region, mountain viewpoint, trekking, and cycling hub, even though its popularity is waning as modernisation takes its toll. Hiking to the city southeast excessive factor in time for sunrise over the peaks is Dhulikhel most famous pastime.', 'images//destination//Kavre1.jpg', 'images//destination//Kavre2.jpg', 'images//destination//Kavre3.jpg', 'images//destination//Kavre4.jpg', 5000),
('Lumbini', 'Lumbini, the holiest place of Buddhism, stands place where Lord Buddha was born. Lumbini lies in the Terai Plains of Southern Nepal. Lumbini is also a World Cultural Heritage Site since 1997.Also, the Sacred Mayadevi pond, Bodhi Tree, and Ashoka pillar are important sites that carry a long history of Budha.', 'images//destination//Lumbini1.JPEG', 'images//destination//Lumbini2.JPEG', 'images//destination//Lumbini3.JPEG', 'images//destination//Lumbini4.JPEG', 9000),
('Mardi', 'Situated just east of the Annapurna Base Camp trek, the Mardi Himal trek is a hidden gem, as few trekkers make their way to Mardi Himals Base Camp, spectacularly situated at the base of Mardi Himal and the beautiful and imposing Machhapuchhre or Fishtail. The trail winds along small paths through ancient rhododendron forests, until you climb out at around 3,300m. Here, the landscape changes quite abruptly with amazing views of Mardi Himal, Machhapuchhre, Annapurna South and Hiunchuli. From High Camp (3,580m) you can climb in about 3-4 hours to Mardi Himal Base Camp, which offers spectacular close up views of the entire Annapurna Range. There is also an amazing viewpoint approx 2 hours from High Camp.', 'images//destination//mardi1.jpg', 'images//destination//mardi2.jpg', 'images//destination//mardi3.jpg', 'images//destination//mardi4.jpg', 19000),
('Markhu', 'Kulekhani Dam, Markhu and Chitlang is a loop travelling site where we can travel for a day hike, mountain bike ride, small gathering, picnic, and place to be with your friends and families. This route is one of the nearest place from the kathmandu to hangout with our friends and families and also if we are looking for the night out with some barbecue and musical jam up and fire camp then this site can be a great alternative for your kind of interest.The View from the top of the Dam side is astonishing and steals our heart on the first sight of the Kulekhani Lake.Boating is another major attraction in Markhu.This enchanting Mohini Jharna along with a chilling stay at nearby local resorts could be the ultimate one. It is situated in Kulekhani, Markhu which is already a loved place. So Mohini Jharna is like a cherry on the top of a cake for nature and adventure lovers.', 'images//destination//Markhu1.jpg', 'images//destination//Markhu2.jpg', 'images//destination//Markhu3.jpg', 'images//destination//Markhu4.jpg', 21200),
('Solukhumbu', 'Mount Everest is the highest peak in the world which stands at 8848 m high altitude from sea level.It is located in the Solukhumbu district of Nepal. Trekking to the Everest base camp is one of the popular trekking of Nepal. Most of the people, they want to visit overview Mt.Everest from the close-up view. They will visit the Everest base camp(5364m) and Kala Patthar(5545m). Kala Patthar(5545m) Which is the most popular viewpoint of the Everest base camp.', 'images//destination//Mt.Everest1.jpg', 'images//destination//Mt.Everest2.jpg', 'images//destination//Mt.Everest3.jpg', 'images//destination//Mt.Everest4.jpg', 50000),
('Mustang', 'Mustang is a beautiful district in Nepal.Upper Mustang trek, Jomsom Muktinath Trek, Damodar Kunda Trekking, Lower Mustang trekking are the popular trekking routes in Mustang. In addition to trekking to Lo Kingdom (\"Upper Mustang\") and the Annapurna Circuit in lower Mustang, the region is also famous for Muktinath yatra and Marpha brandy.', 'images//destination//Mustang1.jpg', 'images//destination//Mustang2.jpg', 'images//destination//Mustang3.jpg', 'images//destination//Mustang4.jpg', 16000),
('Pokhara', 'Pokhara is the city of lakes. There are several lakes in Pokhara and the prominent ones are Fewa Lake, Rupa Lake and Begnas Lake.Other attractions of Pokhara are Davis Fall which is a beautiful waterfall and Buddha Stupa. Then there is Sarangkot which is a towering hill that offers a magnificent view of Pokhara from its hill top.', 'images//destination//Pokhara1.JPEG', 'images//destination//Pokhara2.JPEG', 'images//destination//Pokhara3.JPEG', 'images//destination//Pokhara4.JPEG', 15000),
('ABC', 'The Annapurna base camp trek is one of the most popular treks in the world. It literally brings you face to face with an eight-thousander – for a moderate-difficult trek, this is incredible! The fascinating Annapurna massif includes the world’s tenth highest peak. Annapurna I (8,091 m) holds an almost fatal attraction for mountaineers. It has the highest fatality ratio among the eight-thousanders. This formidable aura apart, the ABC trek holds several treasures for the mountain lover.', 'images//destination//ABC1.jpg', 'images//destination//ABC2.jpg', 'images//destination//ABC3.jpg', 'images//destination//ABC4.jpg', 21000),
('Bardiya NP', 'Bardiya National Park is the largest lowland protected area of Nepal.The park is reputed for its rich biodiversity.The faunal diversity of the park includes 53 species of mammals including endangered megaherbivores like rhinoceros (Rhinoceros unicornis) and elephant (Elephas maximus), more then 25 species of reptiles, over 400 species of birds, 121 species of fishes and an unknown diversity of mollusks and arthropods.', 'images//destination//Bardiya NP1.jpg', 'images//destination//Bardiya NP2.jpg', 'images//destination//Bardiya NP3.jpg', 'images//destination//Bardiya NP4.jpg', 10000),
('Biratnagar', 'Biratnagar', 'images//destination//Lumbini1.jpg', 'images//destination//Lumbini2.jpg', 'images//destination//Kathmandu3.jpg', 'images//destination//Bardiya NP4.jpg', 0),
('Chitwan', 'Nestled at the foot of the Himalayas, Chitwan has a particularly rich flora and fauna and is home to one of the last populations of single-horned Asiatic rhinoceros and is also one of the last refuges of the Bengal Tiger.hitwan National Park has a long history of protection dating back to the early 1800s. It has been designated and legally protected under the National Parks and Wildlife Conservation Act, 1973.', 'images//destination//Chitwan1.jpg', 'images//destination//Chitwan2.jpg', 'images//destination//Chitwan3.jpg', 'images//destination//Chitwan4.jpg', 20000),
('Gosaikunda', 'Gosaikunda is one of the beautiful lakes of Nepal, which is visited by many tourists as well people from inside the country. The lake is very popular as trekking destination which is why tourist pay visit to Goasikunda. For the people of Nepal itself, most of them visit this lake for a religious purpose.Gosaikunda is the frozen lake located in the Langtang National Park in Rasuwa district.', 'images//destination//Gosaikunda1.JPEG', 'images//destination//Gosaikunda2.JPEG', 'images//destination//Gosaikunda3.JPEG', 'images//destination//Gosaikunda4.JPEG', 5000),
('Kathmandu', 'Kathmandu is and has been for many years the centre of Nepals history,art,culture and economy.The city is considered the gateway to the Nepalese Himalayas and is home to several World Heritage Sites: the Durbar Square,Swayambhunath,Boudhanath and Pashupatinath.', 'images//destination//Kathmandu1.JPEG', 'images//destination//Kathmandu2.JPEG', 'images//destination//Kathmandu3.JPEG', 'images//destination//Kathmandu4.JPEG', 10000),
('Kavre', 'The tourist business in the Kavre area has a lot of promise. Dhulikhel, Sangaswoti - Bangthali, Panauti, Banepa, and Chandeni Mandan are historical sites in the Kavre district.There are large religious fairs such as Banepa Chandeshwari Jatra, Namobuddha-Namobuddha Jatra, which is held on Buddha birthday (Buddha Purnima), and Panauti Kumbha Mela, which occurs every twelfth year.Dhulikhel is well known as a well-preserved Newari region, mountain viewpoint, trekking, and cycling hub, even though its popularity is waning as modernisation takes its toll. Hiking to the city southeast excessive factor in time for sunrise over the peaks is Dhulikhel most famous pastime.', 'images//destination//Kavre1.jpg', 'images//destination//Kavre2.jpg', 'images//destination//Kavre3.jpg', 'images//destination//Kavre4.jpg', 5000),
('Lumbini', 'Lumbini, the holiest place of Buddhism, stands place where Lord Buddha was born. Lumbini lies in the Terai Plains of Southern Nepal. Lumbini is also a World Cultural Heritage Site since 1997.Also, the Sacred Mayadevi pond, Bodhi Tree, and Ashoka pillar are important sites that carry a long history of Budha.', 'images//destination//Lumbini1.JPEG', 'images//destination//Lumbini2.JPEG', 'images//destination//Lumbini3.JPEG', 'images//destination//Lumbini4.JPEG', 9000),
('Mardi', 'Situated just east of the Annapurna Base Camp trek, the Mardi Himal trek is a hidden gem, as few trekkers make their way to Mardi Himals Base Camp, spectacularly situated at the base of Mardi Himal and the beautiful and imposing Machhapuchhre or Fishtail. The trail winds along small paths through ancient rhododendron forests, until you climb out at around 3,300m. Here, the landscape changes quite abruptly with amazing views of Mardi Himal, Machhapuchhre, Annapurna South and Hiunchuli. From High Camp (3,580m) you can climb in about 3-4 hours to Mardi Himal Base Camp, which offers spectacular close up views of the entire Annapurna Range. There is also an amazing viewpoint approx 2 hours from High Camp.', 'images//destination//mardi1.jpg', 'images//destination//mardi2.jpg', 'images//destination//mardi3.jpg', 'images//destination//mardi4.jpg', 19000),
('Markhu', 'Kulekhani Dam, Markhu and Chitlang is a loop travelling site where we can travel for a day hike, mountain bike ride, small gathering, picnic, and place to be with your friends and families. This route is one of the nearest place from the kathmandu to hangout with our friends and families and also if we are looking for the night out with some barbecue and musical jam up and fire camp then this site can be a great alternative for your kind of interest.The View from the top of the Dam side is astonishing and steals our heart on the first sight of the Kulekhani Lake.Boating is another major attraction in Markhu.This enchanting Mohini Jharna along with a chilling stay at nearby local resorts could be the ultimate one. It is situated in Kulekhani, Markhu which is already a loved place. So Mohini Jharna is like a cherry on the top of a cake for nature and adventure lovers.', 'images//destination//Markhu1.jpg', 'images//destination//Markhu2.jpg', 'images//destination//Markhu3.jpg', 'images//destination//Markhu4.jpg', 21200),
('Mt. Everest', 'Mount Everest is the highest peak in the world which stands at 8848 m high altitude from sea level.It is located in the Solukhumbu district of Nepal. Trekking to the Everest base camp is one of the popular trekking of Nepal. Most of the people, they want to visit overview Mt.Everest from the close-up view. They will visit the Everest base camp(5364m) and Kala Patthar(5545m). Kala Patthar(5545m) Which is the most popular viewpoint of the Everest base camp.', 'images//destination//Mt.Everest1.jpg', 'images//destination//Mt.Everest2.jpg', 'images//destination//Mt.Everest3.jpg', 'images//destination//Mt.Everest4.jpg', 50000),
('Mustang', 'Mustang is a beautiful district in Nepal.Upper Mustang trek, Jomsom Muktinath Trek, Damodar Kunda Trekking, Lower Mustang trekking are the popular trekking routes in Mustang. In addition to trekking to Lo Kingdom (\"Upper Mustang\") and the Annapurna Circuit in lower Mustang, the region is also famous for Muktinath yatra and Marpha brandy.', 'images//destination//Mustang1.jpg', 'images//destination//Mustang2.jpg', 'images//destination//Mustang3.jpg', 'images//destination//Mustang4.jpg', 16000),
('Pokhara', 'Pokhara is the city of lakes. There are several lakes in Pokhara and the prominent ones are Fewa Lake, Rupa Lake and Begnas Lake.Other attractions of Pokhara are Davis Fall which is a beautiful waterfall and Buddha Stupa. Then there is Sarangkot which is a towering hill that offers a magnificent view of Pokhara from its hill top.', 'images//destination//Pokhara1.JPEG', 'images//destination//Pokhara2.JPEG', 'images//destination//Pokhara3.JPEG', 'images//destination//Pokhara4.JPEG', 15000),
('ABC', 'The Annapurna base camp trek is one of the most popular treks in the world. It literally brings you face to face with an eight-thousander – for a moderate-difficult trek, this is incredible! The fascinating Annapurna massif includes the world’s tenth highest peak. Annapurna I (8,091 m) holds an almost fatal attraction for mountaineers. It has the highest fatality ratio among the eight-thousanders. This formidable aura apart, the ABC trek holds several treasures for the mountain lover.', 'images//destination//ABC1.jpg', 'images//destination//ABC2.jpg', 'images//destination//ABC3.jpg', 'images//destination//ABC4.jpg', 21000),
('Bardiya NP', 'Bardiya National Park is the largest lowland protected area of Nepal.The park is reputed for its rich biodiversity.The faunal diversity of the park includes 53 species of mammals including endangered megaherbivores like rhinoceros (Rhinoceros unicornis) and elephant (Elephas maximus), more then 25 species of reptiles, over 400 species of birds, 121 species of fishes and an unknown diversity of mollusks and arthropods.', 'images//destination//Bardiya NP1.jpg', 'images//destination//Bardiya NP2.jpg', 'images//destination//Bardiya NP3.jpg', 'images//destination//Bardiya NP4.jpg', 10000),
('Biratnagar', 'Biratnagar', 'images//destination//Lumbini1.jpg', 'images//destination//Lumbini2.jpg', 'images//destination//Kathmandu3.jpg', 'images//destination//Bardiya NP4.jpg', 0),
('Chitwan', 'Nestled at the foot of the Himalayas, Chitwan has a particularly rich flora and fauna and is home to one of the last populations of single-horned Asiatic rhinoceros and is also one of the last refuges of the Bengal Tiger.hitwan National Park has a long history of protection dating back to the early 1800s. It has been designated and legally protected under the National Parks and Wildlife Conservation Act, 1973.', 'images//destination//Chitwan1.jpg', 'images//destination//Chitwan2.jpg', 'images//destination//Chitwan3.jpg', 'images//destination//Chitwan4.jpg', 20000),
('Gosaikunda', 'Gosaikunda is one of the beautiful lakes of Nepal, which is visited by many tourists as well people from inside the country. The lake is very popular as trekking destination which is why tourist pay visit to Goasikunda. For the people of Nepal itself, most of them visit this lake for a religious purpose.Gosaikunda is the frozen lake located in the Langtang National Park in Rasuwa district.', 'images//destination//Gosaikunda1.JPEG', 'images//destination//Gosaikunda2.JPEG', 'images//destination//Gosaikunda3.JPEG', 'images//destination//Gosaikunda4.JPEG', 5000),
('Kathmandu', 'Kathmandu is and has been for many years the centre of Nepals history,art,culture and economy.The city is considered the gateway to the Nepalese Himalayas and is home to several World Heritage Sites: the Durbar Square,Swayambhunath,Boudhanath and Pashupatinath.', 'images//destination//Kathmandu1.JPEG', 'images//destination//Kathmandu2.JPEG', 'images//destination//Kathmandu3.JPEG', 'images//destination//Kathmandu4.JPEG', 10000),
('Kavre', 'The tourist business in the Kavre area has a lot of promise. Dhulikhel, Sangaswoti - Bangthali, Panauti, Banepa, and Chandeni Mandan are historical sites in the Kavre district.There are large religious fairs such as Banepa Chandeshwari Jatra, Namobuddha-Namobuddha Jatra, which is held on Buddha birthday (Buddha Purnima), and Panauti Kumbha Mela, which occurs every twelfth year.Dhulikhel is well known as a well-preserved Newari region, mountain viewpoint, trekking, and cycling hub, even though its popularity is waning as modernisation takes its toll. Hiking to the city southeast excessive factor in time for sunrise over the peaks is Dhulikhel most famous pastime.', 'images//destination//Kavre1.jpg', 'images//destination//Kavre2.jpg', 'images//destination//Kavre3.jpg', 'images//destination//Kavre4.jpg', 5000),
('Lumbini', 'Lumbini, the holiest place of Buddhism, stands place where Lord Buddha was born. Lumbini lies in the Terai Plains of Southern Nepal. Lumbini is also a World Cultural Heritage Site since 1997.Also, the Sacred Mayadevi pond, Bodhi Tree, and Ashoka pillar are important sites that carry a long history of Budha.', 'images//destination//Lumbini1.JPEG', 'images//destination//Lumbini2.JPEG', 'images//destination//Lumbini3.JPEG', 'images//destination//Lumbini4.JPEG', 9000),
('Mardi', 'Situated just east of the Annapurna Base Camp trek, the Mardi Himal trek is a hidden gem, as few trekkers make their way to Mardi Himals Base Camp, spectacularly situated at the base of Mardi Himal and the beautiful and imposing Machhapuchhre or Fishtail. The trail winds along small paths through ancient rhododendron forests, until you climb out at around 3,300m. Here, the landscape changes quite abruptly with amazing views of Mardi Himal, Machhapuchhre, Annapurna South and Hiunchuli. From High Camp (3,580m) you can climb in about 3-4 hours to Mardi Himal Base Camp, which offers spectacular close up views of the entire Annapurna Range. There is also an amazing viewpoint approx 2 hours from High Camp.', 'images//destination//mardi1.jpg', 'images//destination//mardi2.jpg', 'images//destination//mardi3.jpg', 'images//destination//mardi4.jpg', 19000),
('Markhu', 'Kulekhani Dam, Markhu and Chitlang is a loop travelling site where we can travel for a day hike, mountain bike ride, small gathering, picnic, and place to be with your friends and families. This route is one of the nearest place from the kathmandu to hangout with our friends and families and also if we are looking for the night out with some barbecue and musical jam up and fire camp then this site can be a great alternative for your kind of interest.The View from the top of the Dam side is astonishing and steals our heart on the first sight of the Kulekhani Lake.Boating is another major attraction in Markhu.This enchanting Mohini Jharna along with a chilling stay at nearby local resorts could be the ultimate one. It is situated in Kulekhani, Markhu which is already a loved place. So Mohini Jharna is like a cherry on the top of a cake for nature and adventure lovers.', 'images//destination//Markhu1.jpg', 'images//destination//Markhu2.jpg', 'images//destination//Markhu3.jpg', 'images//destination//Markhu4.jpg', 21200),
('Mt. Everest', 'Mount Everest is the highest peak in the world which stands at 8848 m high altitude from sea level.It is located in the Solukhumbu district of Nepal. Trekking to the Everest base camp is one of the popular trekking of Nepal. Most of the people, they want to visit overview Mt.Everest from the close-up view. They will visit the Everest base camp(5364m) and Kala Patthar(5545m). Kala Patthar(5545m) Which is the most popular viewpoint of the Everest base camp.', 'images//destination//Mt.Everest1.jpg', 'images//destination//Mt.Everest2.jpg', 'images//destination//Mt.Everest3.jpg', 'images//destination//Mt.Everest4.jpg', 50000),
('Mustang', 'Mustang is a beautiful district in Nepal.Upper Mustang trek, Jomsom Muktinath Trek, Damodar Kunda Trekking, Lower Mustang trekking are the popular trekking routes in Mustang. In addition to trekking to Lo Kingdom (\"Upper Mustang\") and the Annapurna Circuit in lower Mustang, the region is also famous for Muktinath yatra and Marpha brandy.', 'images//destination//Mustang1.jpg', 'images//destination//Mustang2.jpg', 'images//destination//Mustang3.jpg', 'images//destination//Mustang4.jpg', 16000),
('Pokhara', 'Pokhara is the city of lakes. There are several lakes in Pokhara and the prominent ones are Fewa Lake, Rupa Lake and Begnas Lake.Other attractions of Pokhara are Davis Fall which is a beautiful waterfall and Buddha Stupa. Then there is Sarangkot which is a towering hill that offers a magnificent view of Pokhara from its hill top.', 'images//destination//Pokhara1.JPEG', 'images//destination//Pokhara2.JPEG', 'images//destination//Pokhara3.JPEG', 'images//destination//Pokhara4.JPEG', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user` varchar(10) NOT NULL DEFAULT 'NOT NULL',
  `pass` varchar(10) NOT NULL DEFAULT 'NOT NULL',
  `date_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user`, `pass`, `date_time`) VALUES
('adii', '784596', '2022-01-10 14:08:10'),
('adii', '784596', '2022-01-10 14:08:29'),
('anusha', '45789656', '2022-01-10 14:09:13'),
('anusha', '45789656', '2022-01-10 14:09:49');

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `pid` int(10) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `pcity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`pid`, `pname`, `pcity`) VALUES
(1, 'Mt. Everest', 'Solukhumbu'),
(2, 'Lake', 'Pokhara'),
(3, 'Bardiya NP', 'Bardiya'),
(4, 'Pashupatinath', 'Kathmandu'),
(5, 'Birthplace of Gautam', 'Lumbini'),
(6, 'Chitwan NP', 'Chitwan');

-- --------------------------------------------------------

--
-- Table structure for table `travel_agent`
--

CREATE TABLE `travel_agent` (
  `aid` int(10) NOT NULL,
  `afname` varchar(20) NOT NULL,
  `aemail` varchar(30) NOT NULL,
  `aphone` int(15) NOT NULL,
  `acity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `travel_agent`
--

INSERT INTO `travel_agent` (`aid`, `afname`, `aemail`, `aphone`, `acity`) VALUES
(1, 'amar', 'amarraj123@gmail.com', 85749646, 'Koholpur'),
(2, 'akhil', 'akhil23@gmai.com', 45968678, 'Biratnagar'),
(3, 'kiran', 'kiru34@gmail.com', 78969665, 'Lumbini');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fname` (`fname`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `travel_agent`
--
ALTER TABLE `travel_agent`
  ADD PRIMARY KEY (`aid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `hid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
