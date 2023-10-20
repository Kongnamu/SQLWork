-- 부서와 사원 테이블 생성
CREATE TABLE department(
    deptid  NUMBER PRIMARY KEY,     -- 키본키
    deptname VARCHAR2(20) NOT NULL, -- NULL을 허용하지 않음
    location VARCHAR2(20) NOT NULL
);

-- 부서 자료 추가 --
INSERT INTO department(deptid, deptname, location)
VALUES (20, '전산팀', '서울');

COMMIT;