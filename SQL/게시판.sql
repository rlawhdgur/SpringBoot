-- 데이터 삭제
truncate board;

-- 데이터 삽입
INSERT INTO board ( title, writer, content ) VALUES ( '제목01', '작성자01', '내용01' );
INSERT INTO board ( title, writer, content ) VALUES ( '제목02', '작성자02', '내용02' );
INSERT INTO board ( title, writer, content ) VALUES ( '제목03', '작성자03', '내용03' );
INSERT INTO board ( title, writer, content ) VALUES ( '제목04', '작성자04', '내용04' );
INSERT INTO board ( title, writer, content ) VALUES ( '제목05', '작성자05', '내용05' );

-- 조회해서 추가
INSERT INTO board ( title, writer, content )
SELECT title, writer, content
FROM board;

SELECT * FROM board;