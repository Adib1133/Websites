-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2023 at 07:47 AM
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
-- Database: `medisearch`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(3) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_fname` varchar(20) NOT NULL,
  `admin_lname` varchar(20) NOT NULL,
  `admin_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_fname`, `admin_lname`, `admin_password`) VALUES
(4, 'admin@gmail.com', 'Adib', 'Hossain', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctor_id` int(11) NOT NULL,
  `doctor_email` varchar(30) NOT NULL,
  `doctor_fname` varchar(10) NOT NULL,
  `doctor_lname` varchar(10) NOT NULL,
  `doctor_password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctor_id`, `doctor_email`, `doctor_fname`, `doctor_lname`, `doctor_password`) VALUES
(1, 'doctor@gmail.com', 'rose', 'ridoy', 'doctor');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(5) NOT NULL,
  `item_title` varchar(250) NOT NULL,
  `item_brand` varchar(250) NOT NULL,
  `item_cat` varchar(15) NOT NULL,
  `item_details` text NOT NULL,
  `item_tags` varchar(250) NOT NULL,
  `item_image` varchar(250) NOT NULL,
  `item_quantity` int(3) NOT NULL,
  `item_price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_title`, `item_brand`, `item_cat`, `item_details`, `item_tags`, `item_image`, `item_quantity`, `item_price`) VALUES
(57, 'TIAM Vita B3 Source', 'Tiam', 'self-care', 'A double lightning effect serum formulated with high concentration of niacinamide and arbutin to lighten dark spots and even out the dark skin tone. This high-performance brightening serum formulated with niacinamide and arbutin intensively slows down the pigment-making processes in the skin.', 'Tiam', 'ccb23556d693b31bbf4f429a19c1bf15.jpg', 311, 100),
(58, 'Beaute Vita-Collagen Tone-Up Sun Cream SPF 50 PA+++', 'Beaute', 'self-care', 'Strong Protection from ultra violet rays.Protect & Calming skin.Triple functional makeup product forbrightening. Improving wrinkles & blocking magnetic particles.4 check point Skin blemishes, dullness, uneven skin tone.', 'Beaute', 'Beaute-Cosmetic-Vita-Collagen-Tone-Up-Sun-Cream-45ml.jpg', 253, 150),
(59, 'Odomos Mosquito Repellent Cream', 'Dabur', 'self-care', 'Odomos is a clinically proven brand of mosquito repellent that offers the most effective protection from mosquitoes, the carriers of deadly viruses that cause diseases like Dengue, Chikungunya, Malaria, Filarial and Encephalitis etc. Independent institutes have clinically tested and certified Odomos to be one of the best protector against mosquito bites for up to 8 hours.', 'Odomos', 'odomos-mosquito-repellent-cream-100-gm.jpeg', 10, 200),
(60, 'Nivea Soft Moisturizing Cream (100ml)', 'Nivea', 'self-care', 'Nivea Soft Moisturising Cream with Jojoba Oil and Vitamin E offers refreshingly soft moisturizing for the face, body, and hands.NIVEA Soft Intensive Moisturising Cream is ph neutral and dermatological approved.How It Works Use NIVEA Soft on the face, hands, and body.', 'Nivea', 'e1cc1a515529-10-500x500.jpg', 11, 390),
(61, 'Vaseline Original Petroleum Jelly (50ml)', 'Uniliver', 'self-care', 'Vaseline® Petroleum Jelly is the original wonder jelly. It works by creating a sealing barrier between cells, which locks in moisture and speeds up your skin’s natural recovery from dryness, helping it restore from within.* Its occlusive function also allows it to protect dry, cracked skin and minor cuts, scrapes, and burns.', 'Cream', 'Vaseline-Original-Petroleum-Jelly-50ml.jpg', 6, 400),
(62, 'BONAJOUR EXTREME CICA SERUM + CICA CREAM 50ML', 'Bonajour', 'self-care', 'A choice for clear skin, proven through various reviews! Cica Cream, an intensive care for troubled skin that will save my sensitive skin 365 days a year', 'Bonajour', '46c42f2f7bf923a3708f1d83e47a9355-600x700.jpg', 1, 4200),
(63, 'DOXACIL 100 mg Cap', 'Square Pharmaceuticals', 'medicine', 'Indication: It is indicated for the treatment of Acne, Rosacea & many other infectious diseases. Dosage & Administration: Adults: Two capsules at a time or one capsule every 12 hours for the first day followed by one capsule per day. The dosage may be doubled on severity of the infection. Children: Over 8 years or weighing 45 Kg or less: 4.4 mg/Kg on the first day followed by 2.2 mg/Kg daily.', 'Doxacil', 'images_94.jpg', 313, 250),
(64, 'Napa 500/65 mg EXTRA', 'Napa', 'medicine', 'Napa® Extra (Paracetamol) is a fast and powerful analgesic with marked antipyretic property.It is recommended for the treatment of most painful and febrile conditions, such as headache, toothache, backache, rheumatic and muscle pains, dysmenorrhoea.', 'Napa', 'napa.jpg', 991, 90),
(65, 'Fexo 120', 'Fexo', 'medicine', 'Fexofenadine Hydrochloride is indicated for the relief of symptoms associated with seasonal allergic rhinitis in adults and children. It is also indicated for the treatment of uncomplicated skin manifestations of chronic idiopathic urticaria.', 'Fexo', 'fexo.jpg', 100, 110),
(66, 'Losectil 20', 'Eskayef', 'medicine', 'Omeprazole is used to treat ulcers in the stomach and duodenum. Duodenal and gastric ulcers caused by NSAIDs. In patients with a history of NSAID-related duodenal and gastric ulcers, as a preventative measure Gastro-esophageal reflux disease (GERD) is a type of gastro-esophageal reflux Acid reflux disease management over time Dyspepsia caused by stomach acid Reflux esophagitis with ulcers is a serious condition.', 'Losectil', 'Losectil.jpg', 278, 34),
(67, 'Monas 10', 'Monas', 'medicine', 'Monas 10 is prescribed for the prevention and treatment of asthma. Exercise-Induced Bronchoconstriction: Acute Prevention (EIB) Allergic Rhinitis (AR) Symptom Relief: Seasonal & Perennial Allergic Rhinitis', 'Monas', 'monas.jpg', 467, 16),
(68, 'The Vivachek Ino Diabetes Machine', 'VivaCheck', 'machine', 'The Vivachek Ino blood glucose meter is a device for controlling blood glucose that gives results within 5 seconds of applying 0.5 μl of a blood sample. It has a memory capacity of up to 900 results and shuts down automatically after 2 minutes of operation.', 'VivaCheck', 'download.jpeg', 9, 899),
(69, 'Electronic RAK289 LCD Screen Digital Blood Pressure Monitor', 'Takjil', 'machine', 'Electronic RAK289 digital blood pressure monitor has LCD screen, fully automatic control, DC 6V power supply, 9.8 x 12.6 x 6.0 cm dimension, vibration plate type pump pressure adjustment mode.', 'Blood', 'giant_80347.jpg', 0, 1800),
(70, 'ALPK2 FT-801 Dual Head Stethoscope', 'ALPK2', 'machine', 'ALPK2 FT-801 dual-head stethoscope has a 22 - 32cm adult cuff with upper arm size, rational construction, PVC Y-tube, and precise finishing. This high sensitive sound amplifier is made of aluminum.', 'Stethoscope', 'download (1).jpeg', 10, 750),
(71, 'Smart Sensor AS862A Infrared Energy Lens Thermometer', 'Sagartex Engineering', 'machine', 'Smart sensor AS862A non-contact digital thermometer comes with an infrared energy lens that measures skin temperature. Its measuring temperature range is 50°C to 900°C while accuracy is 2%. The distance spot ratio of this thermometer is 12:1, which means that at a distance of 12 inches from the target, it can measure a spot with a diameter of around one inch (about 2.5 cm at 30 cm). Additionally, it takes 500ms to detect a new temperature reaction.', 'Thermometer', 'giant_197030.jpg', 597, 8500),
(72, 'Pregnancy Test Kit', 'ManKind', 'machine', 'Pregnancy Test Kit is a strip to find the result of early signs or symptoms of Pregnancy. Our shop supplies the best kit at a low price in Bangladesh.', 'Pregnancy', 'download (2).jpeg', 2, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_quantity` int(3) NOT NULL,
  `order_date` date NOT NULL,
  `order_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `item_id`, `user_id`, `order_quantity`, `order_date`, `order_status`) VALUES
(220, 64, 87, 2, '2023-04-25', 1),
(226, 61, 87, 1, '2023-04-28', 0),
(227, 61, 87, 1, '2023-04-28', 0),
(228, 71, 87, 1, '2023-04-28', 0),
(229, 71, 87, 1, '2023-04-28', 0),
(230, 57, 87, 1, '2023-04-28', 0),
(231, 57, 87, 1, '2023-04-28', 0),
(232, 64, 87, 1, '2023-04-28', 0),
(233, 58, 89, 1, '2023-04-28', 0),
(234, 67, 89, 1, '2023-04-28', 0),
(235, 62, 87, 1, '2023-04-30', 0),
(236, 64, 90, 5, '2023-04-30', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_Lname` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_id` int(3) NOT NULL,
  `user_fname` varchar(20) NOT NULL,
  `user_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_Lname`, `email`, `user_password`, `user_id`, `user_fname`, `user_address`) VALUES
('Hossain', 'adibhossain1133@gmail.com', 'Gamer1133', 87, 'Adib', '156/A,east ulon,west rampura,Dhaka 1219'),
('Hossain', 'adibmoinul@gmail.com', 'Adib1133', 88, 'Adib', '156/A,east ulon,west rampura,Dhaka 1219'),
('Ridoy', 'asd@gmail.com', 'ridoy1133', 89, 'Asadujjaman', 'Khilgaon'),
('Ridoy', 'as1d@gmail.com', 'Ghost1133', 90, 'Asadujjaman', 'Khilgaon');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
