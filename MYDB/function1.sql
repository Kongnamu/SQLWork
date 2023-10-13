-- 숫자 타입 내장 함수
-- 절대값 구하기: ABS()
-- 제공 테이블: dual
SELECT ABS(-10) FROM dual;

-- 반올림: round(숫자, 올림 자리수)
SELECT ROUND(127.67, 1) FROM dual; -- 소수 첫째자리
SELECT ROUND(127.67, -1) FROM dual;-- 정수 1의자리

-- 버림(내림): TRUNC()
SELECT TRUNC(127.67, 1) FROM dual; -- 소수 첫째자리까지 표시하고 버림
SELECT TRUNC(127.67, 0) FROM dual; --

-- FLOOR
SELECT FLOOR(127.67) FROM dual; -- 정수만 표기

-- 거듭제곱 : POWER(밑, 지수)
SELECT POWER(2, 3) FROM dual;

-- 문자타입
-- 소문자로 변경하기: LOWER('ABCD')
-- 대문자로 변경하기: UPPER('abcd')
SELECT LOWER('ABCD') FROM dual;
SELECT UPPER('abcd') FROM dual;

-- 문자열의 일부를 추출: SUBSTR(문자열, 인덱스, 자리수)
SELECT SUBSTR('ABCD', 1, 2) FROM dual;

-- 문자열을 찾아 바꾸기: REPLACE(문자열, 변경전문자, 변경후문자)
SELECT REPLACE('AUNGRY', 'A', 'H') FROM dual;

-- 문자열의 길이: LENGTH()
SELECT LENGTH('ABCD') FROM dual;

--마스킹 : LPAD(문자열, 길이, 특정문자) - 왼쪽부터 채움
SELECT LPAD('today', 10, '*') FROM dual;
SELECT RPAD('today', 10, '*') FROM dual;

-- 주문테이블
-- 고객별 평균 주문 금액을 반올림
SELECT custid,
       SUM(saleprice)AS 합계금액,
       COUNT(saleprice) AS 주문건수,
       ROUND (AVG(saleprice), -2) AS 평균주문금액
FROM orders
GROUP BY custid;

-- 도서테이블
-- 책제목의 글자수
-- 책제목의 바이트수: 한글 -3Byte / 영어, 특수문자 = 1byte
SELECT bookname,
       LENGTH(bookname) AS 글자수,
       LENGTHB(bookname) AS 바이트수
FROM book;

-- 축구를 농구로 변경 및 검색
SELECT bookname,
       REPLACE(bookname, '축구', '농구') AS bookname
FROM book;

-- 고객 테이블
-- 고객 이름별 같은 성을 가진 고객의 인원수를 구하시오
SELECT SUBSTR(name, 1, 1) AS 성,
        COUNT(*) 인원
FROM customer
GROUP BY SUBSTR(name, 1, 1);
