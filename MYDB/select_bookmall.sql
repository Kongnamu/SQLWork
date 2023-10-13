
SELECT * FROM orders;

--주문 테이블의 구조(칼럼, 자료형) 출력
DESC orders;

-- 통계 함수: 개수(COUNT), 합계(SUM), 평균(AVG), 최대값(MAX), 최소값(MIN)
-- COUNT(*): '*' - 칼럼명
-- COUNT(칼럼명):
SELECT COUNT(*) AS 총판매건수
FROM orders;

SELECT COUNT(phone) AS 총고객수
FROM customer;

SELECT SUM(saleprice) AS 총판매액,
       AVG(saleprice) AS 총평균액
FROM orders;

-- 고객이 주문한 도서의 총판매액
SELECT SUM(saleprice) AS 총판매액
FROM orders;

-- 고객별 주문한 도서의 총판매액
-- 특정 그룹으로 묶을때 사용: GROUP BY 칼럼명
SELECT custid,
        COUNT(*) AS 도서수량,
        SUM(saleprice) AS 총판매액
FROM orders
GROUP BY custid;

-- 고객별 주문한 도서의 총판매액과 도서수량
-- 도서수량이 3권이상인 자료 검색
-- HAVING 절 사용: GROUP BY절에서 조건이 있을때 사용
SELECT custid,
        COUNT(*) AS 도서수량,
        SUM(saleprice) AS 총판매액
FROM orders
GROUP BY custid
HAVING COUNT(*) >= 3
    -- AND SUM(saleprice) > 35000;

SELECT COUNT(*) AS 총고객수, COUNT(phone) AS 전화번호수
FROM customer;

-- 도서중에서 최대가격, 최저가격 검색
SELECT MAX(price) 최고가격, MIN(price) 최저가격
FROM book;

SELECT * FROM customer;
SELECT * FROM orders;

-- 3번 고객(안산)이 주문한 도서의 총 판매액 구하기
SELECT SUM(saleprice) AS 총판매액
FROM orders
WHERE custid = 3;

-- 조인(Join)
-- 동등조인(equal join): equal을 사용하는 조인
-- 테이블A.칼럼명 = 테이블B.칼럼명 (칼럼: 외래키)
-- 고객의 이름과 주문한 가격을 검색하시오(customer, orders 조인)
SELECT customer.name, orders.saleprice
FROM customer, orders
WHERE customer.custid = orders.custid;

-- 별칭 사용 조건
-- 고객 이름별 정렬(오름차순)
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
order by cus.name, ord.saleprice DESC;

-- 3번 고객의 ID와 도서 이름, 주문 가격을 알 수 있음
SELECT custid, bookname, saleprice
FROM orders, book
WHERE orders.bookid = book.bookid
    AND orders.custid = 3;

SELECT customer.custid, book.bookname, orders.saleprice
FROM orders, customer, book
WHERE orders.bookid = customer.custid
    AND orders.bookid = book.bookid
    AND customer.name = '안산';
