--
-- 2023-03-30_test
--

-- board 테이블 정의
CREATE TABLE `board_test` (
  `board_no` int AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `writer` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `content` text COLLATE utf8mb4_bin,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`board_no`)
);

SELECT * FROM board_test;