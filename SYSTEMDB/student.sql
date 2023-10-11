-- 학생 테이블 생성
CREATE TABLE student(
    snumber NUMBER PRIMARY KEY,
    sname   VARCHAR2(20) NOT NULL,
    age     NUMBER(2) NOT NULL,
    gender  VARCHAR2(6) NOT NULL,
    address VARCHAR2(50),
    mname   VARCHAR2(30) NOT NULL,
    FOREIGN KEY(mname) REFERENCES major(mname) 
);


-- 학생 추가
INSERT INTO student (snumber, sname, age, gender, address, mname)
VALUES (1001, '이강', 22, '여자', '서울시 강서구', '소프트웨어학과');
INSERT INTO student (snumber, sname, age, gender, address, mname)
VALUES (1002, '박대영', 34, '남자', '인천시 남구', '전기전자공학과');
INSERT INTO student (snumber, sname, age, gender, address, mname)
VALUES (1003, '우영우', 31, '여자', '', '전기전자공학과');

-- 부모키에 없는 데이터는 삽입 이상 발생
INSERT INTO student (snumber, sname, age, gender, address, mname)
VALUES (1003, '김산', 29, '남자', '서울시 동대문구', '회계학과');

-- 전체 학생 조회
SELECT * FROM student;

-- 이름이 '이강'인 학생의 이름과 나이 조회
SELECT sname, age FROM student
WHERE sname = '이강';

-- 이름에 '우'가 포함된 학생의 모든 정보를 출력
SELECT * FROM student
WHERE sname LIKE '우%';

-- 나이가 30세 이상이고 성별이 남자인 학생의 모든 정보 출력
SELECT * FROM student
WHERE age >= 30 AND gender = '남자';

-- 주소가 없는 학생의 정보 출력 (NULL)
SELECT * FROM student
WHERE address IS NULL;

-- 주소가 없는 학생의 정보 출력 (공백문자인 경우)
SELECT * FROM student
WHERE address = ' ';

-- 주소가 NULL인 데이터에 '수원시 영통구' 데이터 입력
UPDATE student SET address = '수원시 영통구'
WHERE address IS NULL;

-- 주소가 없는 학생 삭제
DELETE FROM student
WHERE address IS NULL;

-- 정렬하기(오름차순: ASC, 내림차순: DESC)
-- 학생의 나이가 작은순으로 정렬하기
SELECT * FROM student
ORDER BY age;

-- 진기전자공학과 학생의 나이가 많은순으로 정렬하기
SELECT * FROM student
WHERE mname = '전기전자공학과'
ORDER BY age DESC;

-- 트랙젝션(롤백은 커밋하기전에 실행하면 취소, 복원 가능)
ROLLBACK;


COMMIT;

DROP TABLE student;