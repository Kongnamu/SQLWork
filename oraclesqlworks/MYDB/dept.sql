-- dept 테이블
CREATE TABLE dept(
    deptid  NUMBER PRIMARY KEY,     -- 키본키
    deptname VARCHAR2(20) NOT NULL, -- NULL을 허용하지 않음
    location VARCHAR2(20) NOT NULL
);

-- 부서 자료 추가 --
INSERT INTO dept(deptid, deptname, location)
VALUES (10, '전산팀', '서울');
INSERT INTO dept(deptid, deptname, location)
VALUES (20, '관리팀', '인천');
INSERT INTO dept(deptid, deptname, location)
VALUES (30, '마케팅팀', '수원');

SELECT * FROM dept;
COMMIT;

-- 부서 이름에서 '팀'을 제외한 이름을 출력
SELECT deptname as 부서이름,
        LENGTH(deptname) as 글자수,
        SUBSTR(deptname, 1, LENGTH(deptname)-1) AS 팀명1,
        REPLACE(deptname, '팀', '') as 팀명2
FROM dept;
