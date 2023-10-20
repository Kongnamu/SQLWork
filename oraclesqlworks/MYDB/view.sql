-- 뷰(VIEW) 생성
-- UPDATE, DELETE 가능
-- 주소에 '대한민국'을 포함하는 고객들로 구성된 뷰를 만드시오
CREATE VIEW vw_customer
AS SELECT * FROM customer
    WHERE address LIKE '대한민국%';
    
SELECT * FROM vw_customer;

--VIEW 삭제
DROP VIEW vw_customer;

-- 이름이 김연아 -> 신유빈으로 변경
UPDATE vw_customer
    SET name = '신유빈'
    WHERE name = '김연아';
    
-- 고객 아이디가 3인 고객을 삭제
DELETE FROM vw_customer
WHERE custid = 3; -- orders에서 사용중이므로 진행 안됨 
    
COMMIT;
    
