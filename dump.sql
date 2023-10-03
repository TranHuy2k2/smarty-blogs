-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Oct 03, 2023 at 02:24 AM
-- Server version: 8.1.0
-- PHP Version: 8.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smarty-blogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `image` text NOT NULL,
  `author_id` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `content`, `image`, `author_id`, `created_at`) VALUES
(11, 'Thank You For Your Time!', '# Thank You For Your Time!\r\nHi, I\'m Tran Huy - a fullstack web developer interviewing for **Junior Position at NFQ**.  Thank you for your time and opportunity for interviewing me!\r\nI\'m leaning more toward being a **backend-engineer**, experience with \r\n* **Microservice** architecture, **MVC**, **Restful API**\r\n* Kafka, RabbitMQ, API Gateway\r\n* Using **Redis** for caching, \r\n* **MongoDB** and **SQL** Databases.\r\n* **Docker**, docker-compose\r\n\r\n\r\nBelow is *one of my favourite project* I made with Spring Boot and Microservices. Built with Spring Boot/ Microservices with MySQL/MongoDB/Redis as databases. Using Webflux, Kafka, RabbitMQ and Websocket for communicating between services.\r\n[CoffeeHouseBackend](https://github.com/TranHuy2k2/CoffeeHouseBackend)', '/assets/images/banner.png', 6, '2023-10-02 21:39:39'),
(12, 'CHUYÊN ĐỀ XÂY DỰNG RESTFUL API VỚI SPRING BOOT', '# 🌿 CHUYÊN ĐỀ XÂY DỰNG RESTFUL API VỚI SPRING BOOT 🌿\r\n* Spring Boot là một framework phát triển ứng dụng Java dựa trên Spring, giúp nhanh chóng xây dựng các ứng dụng web và dịch vụ RESTful hiệu suất cao với cấu hình tối giản nhất.\r\n* 🔥 Spring Boot đã khẳng định được vị trí của mình trước nhiều công nghệ khác hiện nay. Được sử dụng cho rất nhiều doanh nghiệp từ outsource cho đến product, nó thực sự là một framework mạnh mẽ cùng một hệ sinh thái Spring đa dạng.\r\n* 💻 Việc hiểu và thuần thục Spring Boot chắc chắn sẽ mở ra cho bạn nhiều cơ hội nghề nghiệp trong lĩnh vực lập trình. Dù đã từng hay chưa từng sử dụng Spring Boot, thì chuyên đề hứa hẹn sẽ mang đến cho bạn những kiến thức và kinh nghiệm giá trị.\r\n* 📂 Trong chuyên đề này, các bạn cùng tụi mình:\r\n* Giới thiệu về RESTful API.\r\n* Giới thiệu về kiến trúc Spring, Spring Boot\r\n* Thực hành xây dựng RESTful API với Spring Boot\r\n* Thực hiện một trò chơi tổng hợp kiến thức chuyên đề và trao thưởng 🎁🎁\r\n* 💼 Là một workshop, các bạn tham gia sẽ cùng tụi mình lập trình với framework Spring Boot. Nên CLB nhờ các bạn chuẩn bị một vài thứ sau đây nếu có thể nha:\r\n* Mang laptop cá nhân.\r\n* Cài đặt trước IDE là Intellij và Git.\r\n* CLB rất mong nhận được sự quan tâm và tham gia của các bạn 💕.\r\n* 🔗 Link đăng ký: https://forms.gle/rc9aqEDDjE91ny947\r\n* 🕕 Thời gian: 18h00, Thứ Bảy ngày 16/09/2023.\r\n* 🏡 Địa điểm: Hội trường Trường CNTT&TT, Khu II Trường Đại học Cần Thơ.', '/assets/images/spring.png', 6, '2023-10-02 21:41:01'),
(13, 'NodeJS-WorkerThread', '# Worker Threads\r\n**Worker threads** là một module trong Nodejs cho phép chạy mã Javascript song song với luồng chính. Mỗi worker là một thread riêng, cho phép chạy độc lập với nhau. \r\n* Khi gặp những tình huống cần xử lý tính toán dữ liệu lớn hoặc phức tạp, nếu chỉ xử lý bằng thread chính thì sẽ gây ra nghẽn server. Do Nodejs hoạt động đơn luồng, bị chặn luôn thread chính thì coi như xong !!!\r\n* Để giải quyết vấn đề này, module worker thread được sử dụng. Với những task cần tính toán CPU nặng và lâu, ta nên cân nhắc đẩy việc đó sang một worker thread khác.\r\n* Bên dưới đây là phần ví đụ đơn giản để implement module worker thread, khi gọi đến endpoints này thì sẽ đếm từ 1 đến 1 số rất lớn :)))). Mọi người xem qua nhe ❤\r\n***#zit #nodejs #workerthread***', 'https://scontent.fsgn2-6.fna.fbcdn.net/v/t39.30808-6/377258212_186374861138764_944284141040981716_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=5614bc&_nc_ohc=DlP_rKkXbcoAX_dgiQR&_nc_ht=scontent.fsgn2-6.fna&oh=00_AfBTDz0uNmyKsNj_0VRah8QimBJVZxdNkftkRt6JEY2xjQ&oe=651FAABE', 6, '2023-10-02 21:42:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `email` text NOT NULL,
  `name` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `password`) VALUES
(6, 'giahuytran2002@gmail.com', 'Tran Gia Huy', '$2y$10$5wb5tG8bo/kcjAlr/2OpWOA/kp2Vl.AmzY2yIOlFLe7eVfltkSaJm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author` (`author_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `author` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
