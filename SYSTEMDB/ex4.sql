-- ex4 테이블 생성
CREATE TABLE ex4(
    id VARCHAR2(10) PRIMARY KEY, --기본키 제약조건
    passwd VARCHAR2(10) NOT NULL
);

INSERT INTO ex4 VALUES ('sky2003', 'u1234');
INSERT INTO ex4 VALUES ('sky2003', 'u54321'); -- 무결성 제약조건 위배
INSERT INTO ex4 VALUES ('today123', 'u12345', 25); -- 나이 추가

commit;

-- 나이 칼럼 추가
ALTER TABLE ex4 ADD age NUMBER(3);

SELECT * FROM ex4;