
SELECT * FROM drink2;

-- 테이블 복사
CREATE TABLE drink2 AS
SELECT * FROM drink;

-- 복사(INSERT INTO ~ SELECT): VALUES 사용안함
INSERT INTO drink2
(SELECT * FROM drink2);

-- ROWNUM (SUDO COLUME): 제공된 관리자 칼럼
SELECT ROWNUM, drink_code, drink_name
FROM drink2
WHERE ROWNUM <= 1 AND ROWNUM <= 10;
-- WHERE ROWNUM >= 11 AND ROWNUM <= 20; -- 1이 포함되어 검색이 됨

-- FROM절 서브쿼리 사용: 인라인부
SELECT *
FROM (SELECT ROWNUM rn, drink_code, drink_name 
    FROM drink2)
-- WHERE ROWNUM >= 11 AND ROWNUM <= 20; -- ROWNUM 사용하면 검색이 안됨
WHERE rn >= 11 AND ROWNUM <= 20; -- 별칭(변수 rn)사용해야 검색됨