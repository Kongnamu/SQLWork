-- ���� ����
-- product, product_review
SELECT * FROM product;
SELECT * FROM product_review;

-- ���䰡 �ִ� ��ǰ�� ������ �˻�
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

-- �ܺ�����(left, right ����)
-- ������ ������ ������� ��� ��ǰ ��� 
SELECT a.product_name,
       b.review_no,
       b.product_code,
       b.content,
       b.regdate
FROM product a LEFT JOIN product_review b
    ON a.product_code = b.product_code;
    
-- ���� ���� ��ǰ
SELECT a.product_name "���䰡 ���� ��ǰ"
FROM product a LEFT JOIN product_review b
    ON a.product_code = b.product_code
WHERE b.content Is null;

-- ��ǰ �������̺� product_name �÷� �߰�
-- ��Į�� �������� Ȱ��: Į�� �ϳ��� ��ȯ, SELECT ������ ���
SELECT a.review_no,
       a.product_code,
        (SELECT b. product_name -- ��Į���� ��ȯ
        FROM product b
        WHERE a.product_code = b.product_code)
        product_name,
        a.content,
        a.member_id
FROM product_review a;

