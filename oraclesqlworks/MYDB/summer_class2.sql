-- 수강료 테이블
CREATE TABLE summer_price(
    subject VARCHAR2(20) PRIMARY KEY,
    price   NUMBER
);

INSERT INTO summer_price VALUES ('C', 30000);
INSERT INTO summer_price VALUES ('Java', 45000);
INSERT INTO summer_price VALUES ('Python', 40000);

-- 여름학기 등록 태이블
CREATE TABLE summer_register(
    sid     NUMBER PRIMARY KEY,
    subject VARCHAR2(20),
    FOREIGN KEY (subject) REFERENCES summer_price(subject)
);

INSERT INTO summer_register VALUES (100, 'C');
INSERT INTO summer_register VALUES (101, 'Java');
INSERT INTO summer_register VALUES (200, 'Python');
INSERT INTO summer_register VALUES (201, 'Java');

COMMIT;


-- 상태이상 없음
-- 200번 학생의 수강 신청 취소
DELETE FROM summer_register
WHERE sid = 200;

-- python 과목의 수강료는?
SELECT price
FROM summer_price
WHERE subject = 'Python'; -- like도 가능

DROP TABLE summer_price;
DROP TABLE summer_register;

-- 수강료 테이블에 'C++' 과목을 35000원으로 삽입
INSERT INTO summer_price VALUES ('C++', 35000);

--수강 신청 정보 확인하기
SELECT * FROM summer_price;

-- 수정 이상
-- Java 수강료가 45000 -> 40000으로 변경
UPDATE summer_price
SET price = 40000
WHERE subject = 'Java';

-- 수강료가 가장 싼 과목은?
SELECT MIN(price) FROM summer_price;
-- 메인 쿼리(서브쿼리)
SELECT subject
FROM summer_price
WHERE price = (SELECT MIN(price) FROM summer_price);
