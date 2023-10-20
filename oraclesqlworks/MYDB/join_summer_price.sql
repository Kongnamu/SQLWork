-- 계절학기 수강료, 등록 테이블
SELECT * FROM summer_price;
SELECT * FROM summer_register;

-- 학생의 모든 수강정보 검색
-- join, on
SELECT b.sid,
       b.subject,
       a.price
FROM summer_price a, summer_register b
WHERE a.subject = b.subject;

-- 학생의 모든 수강정보 검색
-- 내부 조인
-- join, using(칼럼명) : 조인 칼럼 이름이 같은 경우
-- 별칭 사용불가
SELECT b.sid,
       subject,
       a.price
FROM summer_price a join summer_register b
   USING (subject);


-- 과목별 수강료 합계 구하기
SELECT b.subject,
       SUM(a.price)
FROM summer_price a, summer_register b
WHERE a.subject = b.subject
GROUP BY b.subject;


INSERT INTO summer_register
VALUES (301, 'Python');

INSERT INTO summer_register
VALUES ('Python', 40000);

-- 과목별 수강료 합계
SELECT subject,
       SUM(price)
FROM summer_price
GROUP BY subject;

-- 과목별 수강료 합계 및 전체 총계를 구하시오
-- ROLLUP, CUBE
-- NVL(과목, '총계'): 과목이 NULL이 아니면 과목 출력, NULL이면 총계 출력
SELECT NVL(b.subject, '총계') 수강과목,
       SUM(a.price)수강료합계
FROM summer_price a, summer_register b
WHERE a.subject = b.subject
GROUP BY ROLLUP(b.subject);
