
CREATE TABLE IF NOT EXISTS `users` (
  `idUsers` int(11) NOT NULL AUTO_INCREMENT,
  `uidUsers` varchar(50) NOT NULL,
  `emailUsers` varchar(255) NOT NULL,
  `pwdUsers` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idUsers`),
  UNIQUE KEY `uidUsers` (`uidUsers`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;




--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `image`, `price`) VALUES
(1, 'Apple Macbook pro touch bar corei7, octa-core, silver,', 'Ap301d', 'img/products/apple.jpg', 1000000),
(2, 'Asus Beast vision corei7 16GB RAM, 2TB ROM,octa-core', 'AS714d', 'img/products/asus.jpg', 850000),
(3, "Dell ultrabook 17' corei7 16GB RAM 4TB", 'DL45fg', 'img/products/dell.jpg', 903000),
(4, "HP envy 13, 13' 8GB RAM 500GB", 'hp52cdn', "img/products/hp.jpg", 300000),
(5, "hp15 4GB RAM 500GB 15'", 'hp15rte', 'img/products/hp15.jpg', 90000),
(6, "Microsoft Surface 17'corei9, 32GB RAM 4TB", 'Mcr34rty', 'img/products/microsoft.jpg', 1300000),
(7, "HP notebook 15, core i5, 15'", 'nt15rfd', 'img/products/notebook15.jpg', 250000),
(8, 'HP stream 11 Intel Core Laptop', 'HPst135', 'img/products/stream11.jpg', 60000);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;