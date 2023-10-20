-- 게시판 테이블 생성
CREATE TABLE boards(
    bno         NUMBER PRIMARY KEY,
    btitle      VARCHAR2(100),
    bcontent    CLOB NOT NULL,
    bwriter     VARCHAR2(50) NOT NULL,
    bdate       DATE DEFAULT SYSDATE,
    bfilename   VARCHAR2(50), 
    bfiledata   BLOB 
);

-- 시퀀스 생성  / NOCACHE : 저장하지 않는다, 초기화되면 1부터 시작한다.
CREATE SEQUENCE seq_bno NOCACHE;

-- 게시글 추가
INSERT INTO boards (bno, btitle, bcontent, bwriter)
VALUES (seq_bno.NEXTVAL, 'smartPhone', '삼성 갤럭시 s21입니다', 'today');

INSERT INTO boards (bno, btitle, bcontent, bwriter, bdate, bfilename, bfiledata)
VALUES (seq_bno.NEXTVAL, 'smartPhone', '삼성 갤럭시 s21입니다', 'today', 
        SYSDATE, null, null);
        
COMMIT;

SELECT * FROM boards WHERE bwriter = 'sky123'
ORDER BY bno DESC;

-- 글번호 5번의 제목을 'Iphone 15'로 변경
UPDATE boards 
SET btitle = 'Iphone 15', 
    bcontent = 'Iphone 15입니다.'
WHERE bno = 5;

-- 9번 게시글 삭제
delete from boards
where bno = 9;

rollback;

DROP TABLE boards;