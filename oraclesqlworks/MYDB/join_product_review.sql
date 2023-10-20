-- 조인 연습
-- product, product_review
SELECT * FROM product;
SELECT * FROM product_review;

-- 리뷰가 있는 상품의 정보를 검색
SELECT b.review_no,
       b.product_code,
       a.product_name,
       b.content
FROM product a, product_review b
WHERE a.product_code = b.product_code;


SELECT a.product_name,
       b *
FROM product a, product_review b
WHERE a.product_code = b.product_code;

SELECT b.review_no,
       b.product_code,
       a.product_name,
       b.content,
       b.regdate
FROM product a JOIN product_review b
WHERE a.product_code = b.product_code;

-- 외부조인(left, right 조인)
-- 리뷰의 유무와 상관없이 모든 상품 출력 
SELECT a.product_name,
       b.review_no,
       b.product_code,
       b.content,
       b.regdate
FROM product a LEFT JOIN product_review b
    ON a.product_code = b.product_code;
    
-- 리뷰 없는 상품
SELECT a.product_name "리뷰가 없는 상품"
FROM product a LEFT JOIN product_review b
    ON a.product_code = b.product_code
WHERE b.content Is null;

-- 상품 리뷰테이블에 product_name 컬럼 추가
-- 스칼라 서브쿼리 활용: 칼럼 하나만 반환, SELECT 절에서 사용
SELECT a.review_no,
       a.product_code,
        (SELECT b. product_name -- 한칼럼만 반환
        FROM product b
        WHERE a.product_code = b.product_code)
        product_name,
        a.content,
        a.member_id
FROM product_review a;

