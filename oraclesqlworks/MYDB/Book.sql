-- bookmall 구축
-- book 테이블 생성
CREATE TABLE book(
    bookid      NUMBER PRIMARY KEY,
    bookname    VARCHAR2(60) NOT NULL,
    publisher   VARCHAR2(60) NOT NULL,
    price       NUMBER NOT NULL
);

-- 도서 자료 추가
INSERT INTO book VALUES (1, '축구의 역사', '굿스포츠', 7000);
INSERT INTO book VALUES (2, '반지의 제왕 - 반지원정대', '나무수', 13000);
INSERT INTO book VALUES (3, '반지의 제왕 - 두개의 탑', '대한미디어', 22000);
INSERT INTO book VALUES (4, '반지의 제왕 - 왕의 귀환', '대한미디어', 35000);
INSERT INTO book VALUES (5, '해리포터와 마법사의 돌', '굿스포츠', 8000);
INSERT INTO book VALUES (6, '해리포터와 비밀의방', '굿스포츠', 6000);
INSERT INTO book VALUES (7, '해리포터와 아즈카반의 죄수', '이상미디어', 20000);
INSERT INTO book VALUES (8, '해리포터와 불의 잔', '이상미디어', 13000);
INSERT INTO book VALUES (9, '해리포터와 불사조기사단', '삼성당', 7500);
INSERT INTO book VALUES (10, '해리포터와 혼혈왕자', '굿스포츠', 13000);


-- 모든 도서의 번호, 이름, 가격 검색
SELECT bookid, bookname, price FROM book;

-- 도서 테이블에 있는 모든 출판사를 검색 (중복 제거 포함)
-- DISTINCT: 중복이 없는 유일한 데이터를 출력
SELECT DISTINCT publisher FROM book;

-- 출판사가 '굿스포츠' 또는 '대한미디어'인 도서를 검색
SELECT * FROM book
WHERE publisher = '굿스포츠' OR publisher = '대한미디어';

-- 출판사가 '굿스포츠' 또는 '대한미디어'인 도서를 검색
-- IN() 함수사용
SELECT * FROM book
WHERE publisher IN ('굿스포츠', '대한미디어');

-- 출판사가 '굿스포츠' 또는 '대한미디어'인 도서를 제외하고 검색
-- NOT IN() 함수사용
SELECT * FROM book
WHERE publisher NOT IN ('굿스포츠', '대한미디어');

-- 가격이 20000원 미만은 도서 검색
SELECT * FROM book
WHERE price < 20000
ORDER BY price;

-- 가격이 13000원인 도서 검색
SELECT * FROM book
WHERE price = 13000;

-- 가격이 13000원이 아닌 도서 검색
SELECT * FROM book
WHERE price <> 13000;

SELECT * FROM book
WHERE price != 13000;

-- 가격이 10000원이상, 20000원 이하인 도서 검색
-- 칼럼명 : BETWEEN A AND B
SELECT * FROM book
WHERE price BETWEEN 10000 AND 20000;
-- WHERE price <= 10000 AND price <= 20000;

-- 축구의 역사의 출판사 검색
SELECT publisher FROM book
WHERE bookname = '축구의 역사';

SELECT publisher FROM book
WHERE bookname LIKE '축구의 역사';

-- 도서이름에 '해리포터'가 포함된 출판사를 검색
SELECT bookname, publisher FROM book
WHERE bookname LIKE '%해리포터%';

-- 도서이름에 '해리포터'가 포함되지 않은 출판사 검색
SELECT bookname, publisher FROM book
WHERE bookname NOT LIKE '%해리포터%';

-- '해리포터'에 관한 도서 중 가격이 20000원 이상인 도서를 검색
SELECT bookname, price FROM book
WHERE bookname LIKE '%해리포터%' AND price >= 20000;

-- 정렬
-- 도서를 이름순으로 정렬 (오름차순)
SELECT * FROM book
ORDER BY bookname;

-- 도서를 가격순으로 검색 (오름차순)
-- 가격이 같으면 이름을 내림차순으로 정렬
SELECT * FROM book
ORDER BY price ASC, bookname DESC;

COMMIT;