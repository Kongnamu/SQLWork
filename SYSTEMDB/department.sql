-- 부서와 사원 테이블 생성
CREATE TABLE department(
    deptid  NUMBER PRIMARY KEY,     -- 키본키
    deptname VARCHAR2(20) NOT NULL, -- NULL을 허용하지 않음
    location VARCHAR2(20) NOT NULL
);

-- 부서 자료 추가 --
INSERT INTO department(deptid, deptname, location)
VALUES (10, '전산팀', '서울');
INSERT INTO department(deptid, deptname, location)
VALUES (20, '관리팀', '인천');
INSERT INTO department(deptid, deptname, location)
VALUES (30, '마케팅팀', '수원');

-- 영구 저장
COMMIT;

-- 자료 검색
SELECT deptid, deptname FROM department;

-- 모든 칼럼 검색
SELECT * FROM department;

-- 특정한 데이터 (행:로우)검색 : WHERE 조건절 사용
-- 부서 이름이 전상팀인 로우(레코드) 검색
SELECT * FROM department WHERE deptname = '전산팀';

-- 자료 수정: 부서번호가 20번인 데이터(관리팀 -> 경영팀)
UPDATE department SET deptname = '경영팀'
WHERE deptid = 20;

-- 방금 진행한 작업 되돌리기 (COMMIT 이전에 실행하면 적용 가능, COMMIT 이후는 불가)
ROLLBACK;

-- 자료 삭제: 부서번호가 30번인 마케팅팀
DELETE FROM department
WHERE deptid = 30;


DROP TABLE department;