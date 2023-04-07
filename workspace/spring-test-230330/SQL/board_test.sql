-- board 테이블 정의
CREATE TABLE `board_test` (
  `board_no` int NOT NULL AUTO_INCREMENT,
  `title` int NOT NULL,
  `writer` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `content` text COLLATE utf8mb4_bin,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`board_no`)
);