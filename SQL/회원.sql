-- 회원 
CREATE TABLE `users` (
  `user_no` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `user_pw` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `user_nic` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `enabled` int DEFAULT '1',
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_no`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  UNIQUE KEY `nickname_UNIQUE` (`nickname`),
  UNIQUE KEY `email_UNIQUE` (`email`)
);

-- 권한
CREATE TABLE `user_auth` (
  `user_id` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `auth` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `auth_no` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`auth_no`)
);

SELECT * FROM users;
SELECT * FROM user_auth;




-- 2023-03-21 --

-- 자동 로그인 테이블
CREATE TABLE persistent_logins ( 
				username varchar(64) not null,
				series varchar(64) primary key,
				token varchar(64) not null,
				last_used timestamp not null
);


SELECT * FROM persistent_logins;



-- 2023-03-22 --

-- 회원 test

CREATE TABLE `users_test` (
  `user_no` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `user_pw` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `nickname` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `phoneNumber` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `enabled` int DEFAULT '1',
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_no`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `nickname_UNIQUE` (`nickname`),
  UNIQUE KEY `phoneNumber_UNIQUE` (`phoneNumber`)
);


-- 권한 test
CREATE TABLE `user_auth_test` (
  `user_id` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `auth` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `auth_no` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`auth_no`)
);

-- 자동 로그인 테이블 test
CREATE TABLE persistent_logins_test ( 
				username varchar(64) not null,
				series varchar(64) primary key,
				token varchar(64) not null,
				last_used timestamp not null
);

SELECT * FROM users_test;
SELECT * FROM user_auth_test;
SELECT * FROM persistent_logins_test;

SELECT * FROM user_social;







