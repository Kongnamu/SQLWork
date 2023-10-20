-- ���� ����(Sub Query)

-- ������ ������ ���� ���� ������ �˻��Ͻÿ�
-- MAX(price)
SELECT MAX(price) FROM book;

-- ������ ���� ��� ������ �̸� �˻�
SELECT bookname, price
FROM book
    WHERE price = 
                (SELECT MAX(price) FROM book);
                
--������ ������ ���� �ִ� ���� �̸��� �˻��Ͻÿ�
SELECT custid FROM orders;

SELECT name
FROM customer
WHERE custid = 1;


/* SELECT name
FROM customer
WHERE custid IN(1, 2, 3, 4); */

-- ������ ��������
SELECT name
FROM customer
WHERE custid IN(SELECT custid FROM orders);

-- ���� ��� : customer, orders
-- ������ ������ ���� �ִ� ���� �̸� �˻�
SELECT DISTINCT cus.name
FROM customer cus, orders ord
WHERE cus.custid = ord.custid;

-- from���� �ִ� ��������: �ζ��κ��� ��
-- ���� �̸��� ���� �Ǹž� �˻�(customer, orders)
-- �׷�ȭ: group by
-- ��, �� ��ȣ�� 2 ������

--���� ����
SELECT cs.name, SUM(od.saleprice)
FROM (SELECT * FROM customer
        WHERE custid <= 2) cs,
    orders od
WHERE cs.custid = od.custid
GROUP BY cs.name;

-- ���� ����
SELECT cs.name, SUM(od.saleprice)
FROM customer cs, orders od
WHERE cs.custid = od.custid
    AND cs.custid <= 2
GROUP BY cs.name;

SELECT * FROM product;
SELECT * FROM product_review;

-- ��Į�� ��������: SELECT ���� �ִ� SELECT���� ����
-- ��ǰ �������̺� �ִ� ��ǰ �̸� �˻�
SELECT a.product_code,
       (SELECT b.product_name
            FROM product b
            WHERE a.product_code = b.product_code) product_name,
        a.member_id,
        a.content
FROM product_review a; 

-- ���� ����
/* 1. FROM�� ���̺��
2. WHERE, GROUP BY
3. SELECT ��
4. ORDER ��
*/

