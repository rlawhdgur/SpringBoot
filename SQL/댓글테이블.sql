
-- 테이블 생성

CREATE TABLE `reply` (
  `reply_no` int NOT NULL AUTO_INCREMENT,
  `board_no` int NOT NULL,
  `writer` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `content` text COLLATE utf8mb4_bin,
  `group_no` int DEFAULT NULL,
  `parent_no` int DEFAULT NULL,
  `depth_no` int NOT NULL DEFAULT '1',
  `seq_no` int NOT NULL DEFAULT '1',
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`reply_no`)
);


-- 데이터 추가

INSERT INTO `reply` (`reply_no`, `writer`, `content`, `group_no`, `parent_no`, `depth_no`, `seq_no`, `reg_date`, `upd_date`)
VALUES ('1', '작성자', '원본글', '1', '0', '0', '0', '2023/01/01', '2023/01/01');

INSERT INTO `reply` (`reply_no`, `writer`, `content`, `group_no`, `parent_no`, `depth_no`, `seq_no`, `reg_date`, `upd_date`)
VALUES ('4', '작성자', '댓글 1-1', '1', '1', '1', '1', '2023/01/01', '2023/01/01');



INSERT INTO `reply` (`reply_no`, `writer`, `content`, `group_no`, `parent_no`, `depth_no`, `seq_no`, `reg_date`, `upd_date`)
VALUES ('2', '작성자', '원본글 2', '2', '0', '0', '0', '2023/01/01', '2023/01/01');

INSERT INTO `reply` (`reply_no`, `writer`, `content`, `group_no`, `parent_no`, `depth_no`, `seq_no`, `reg_date`, `upd_date`)
VALUES ('3', '작성자', '원본글 3', '3', '0', '0', '0', '2023/01/01', '2023/01/01');

INSERT INTO `reply` (`reply_no`, `writer`, `content`, `group_no`, `parent_no`, `depth_no`, `seq_no`, `reg_date`, `upd_date`)
VALUES ('5', '작성자', '댓글 3-1', '3', '3', '1', '3', '2023/01/01', '2023/01/01');

INSERT INTO `reply` (`reply_no`, `writer`, `content`, `group_no`, `parent_no`, `depth_no`, `seq_no`, `reg_date`, `upd_date`)
VALUES ('6', '작성자', '댓글 3-1-1', '3', '5', '2', '4', '2023/01/01', '2023/01/01');

INSERT INTO `reply` (`reply_no`, `writer`, `content`, `group_no`, `parent_no`, `depth_no`, `seq_no`, `reg_date`, `upd_date`)
VALUES ('7', '작성자', '댓글 3-2', '3', '3', '1', '1', '2023/01/01', '2023/01/01');

INSERT INTO `reply` (`reply_no`, `writer`, `content`, `group_no`, `parent_no`, `depth_no`, `seq_no`, `reg_date`, `upd_date`)
VALUES ('8', '작성자', '댓글 3-2-1', '3', '7', '2', '2', '2023/01/01', '2023/01/01');

SELECT * FROM reply;


-- 댓글 목록

SELECT *
FROM reply
ORDER BY group_no DESC
		,seq_no ASC
;


-- 댓글 목록 (조인)

SELECT *
  FROM reply r1
       LEFT JOIN reply r2
       ON r1.group_no = r2.group_no
ORDER BY r1.group_no DESC
        ,r1.seq_no ASC
        ,r1.depth_no ASC
        ,r1.reg_date DESC
;


SELECT *
  FROM reply r1
       LEFT JOIN (
					SELECT *
					FROM reply
					WHERE reply_no <> group_no
				) r2
       ON r1.group_no = r2.group_no
ORDER BY r1.group_no DESC
        ,r1.seq_no ASC
        ,r1.depth_no ASC
        ,r1.reg_date DESC
;


UPDATE reply
	SET board_no = 1

;

SELECT * FROM reply;


UPDATE reply
	SET group_no = reply_no
WHERE reply_no = 9;

SELECT * FROM reply;


SELECT MAX(reply_no)
FROM reply;


-- 특정 댓글의 자식 댓글 개수

SELECT COUNT(*)
FROM reply
WHERE board_no =1
  AND parent_no = 12;
  
  
  SELECT *
  FROM reply
  ORDER BY group_no ASC,
			depth_no ASC,
        	seq_no ASC,
        	reg_date ASC
;




truncate reply;







