-- users 와 board 외래키 연결 삭제
ALTER TABLE `human`.`board`
DROP FOREIGN KEY `fk_board_users1`;
ALTER TABLE `human`.`board`
DROP INDEX `fk_board_users1_idx` ;
;
-- users 와 comment 외래키 연결 삭제
ALTER TABLE `human`.`comment`
DROP FOREIGN KEY `fk_comment_users1`;
ALTER TABLE `human`.`comment`
DROP INDEX `fk_comment_users1_idx` ;
;
-- users와 user_auth 외래키 연결 수정 ( CASCADE 추가 )
ALTER TABLE `human`.`user_auth`
DROP FOREIGN KEY `fk_user_auth_users1`;
ALTER TABLE `human`.`user_auth`
ADD CONSTRAINT `fk_user_auth_users1`
  FOREIGN KEY (`user_id`)
  REFERENCES `human`.`users` (`user_id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;
-- users와 user_social 외래키 연결 수정 ( CASCADE 추가 )
ALTER TABLE `human`.`user_social`
DROP FOREIGN KEY `fk_user_social_users1`;
ALTER TABLE `human`.`user_social`
ADD CONSTRAINT `fk_user_social_users1`
  FOREIGN KEY (`user_id`)
  REFERENCES `human`.`users` (`user_id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;
-- board와 comment 외래키 연결 수정 ( CASCADE 추가 )
ALTER TABLE `human`.`comment`
DROP FOREIGN KEY `FK_board_TO_comment`;
ALTER TABLE `human`.`comment`
ADD CONSTRAINT `FK_board_TO_comment`
  FOREIGN KEY (`board_no`)
  REFERENCES `human`.`board` (`board_no`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;
-- user_social의 access_token 속성 not null -> null로 수정
ALTER TABLE `human`.`user_social`
CHANGE COLUMN `access_token` `access_token` VARCHAR(200) NULL COMMENT '소셜 인증 토큰' ;


-- 2023-03-30
-- 구분 태그 칼럼 추가
ALTER TABLE `human`.`board`
ADD COLUMN `tag` VARCHAR(50) NOT NULL AFTER `upd_date`;