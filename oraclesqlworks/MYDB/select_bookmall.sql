
SELECT * FROM orders;

--�ֹ� ���̺��� ����(Į��, �ڷ���) ���
DESC orders;

-- ��� �Լ�: ����(COUNT), �հ�(SUM), ���(AVG), �ִ밪(MAX), �ּҰ�(MIN)
-- COUNT(*): '*' - Į����
-- COUNT(Į����):
SELECT COUNT(*) AS ���ǸŰǼ�
FROM orders;

SELECT COUNT(phone) AS �Ѱ���
FROM customer;

SELECT SUM(saleprice) AS ���Ǹž�,
       AVG(saleprice) AS ����վ�
FROM orders;

-- ���� �ֹ��� ������ ���Ǹž�
SELECT SUM(saleprice) AS ���Ǹž�
FROM orders;

-- ���� �ֹ��� ������ ���Ǹž�
-- Ư�� �׷����� ������ ���: GROUP BY Į����
SELECT custid,
        COUNT(*) AS ��������,
        SUM(saleprice) AS ���Ǹž�
FROM orders
GROUP BY custid;

-- ���� �ֹ��� ������ ���Ǹžװ� ��������
-- ���������� 3���̻��� �ڷ� �˻�
-- HAVING �� ���: GROUP BY������ ������ ������ ���
SELECT custid,
        COUNT(*) AS ��������,
        SUM(saleprice) AS ���Ǹž�
FROM orders
GROUP BY custid
HAVING COUNT(*) >= 3
    -- AND SUM(saleprice) > 35000;

SELECT COUNT(*) AS �Ѱ���, COUNT(phone) AS ��ȭ��ȣ��
FROM customer;

-- �����߿��� �ִ밡��, �������� �˻�
SELECT MAX(price) �ְ���, MIN(price) ��������
FROM book;

SELECT * FROM customer;
SELECT * FROM orders;

-- 3�� ��(�Ȼ�)�� �ֹ��� ������ �� �Ǹž� ���ϱ�
SELECT SUM(saleprice) AS ���Ǹž�
FROM orders
WHERE custid = 3;

-- ����(Join)
-- ��������(equal join): equal�� ����ϴ� ����
-- ���̺�A.Į���� = ���̺�B.Į���� (Į��: �ܷ�Ű)
-- ���� �̸��� �ֹ��� ������ �˻��Ͻÿ�(customer, orders ����)
SELECT customer.name, orders.saleprice
FROM customer, orders
WHERE customer.custid = orders.custid;

-- ��Ī ��� ����
-- �� �̸��� ����(��������)
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
order by cus.name, ord.saleprice DESC;

-- 3�� ���� ID�� ���� �̸�, �ֹ� ������ �� �� ����
SELECT custid, bookname, saleprice
FROM orders, book
WHERE orders.bookid = book.bookid
    AND orders.custid = 3;

SELECT customer.custid, book.bookname, orders.saleprice
FROM orders, customer, book
WHERE orders.bookid = customer.custid
    AND orders.bookid = book.bookid
    AND customer.name = '�Ȼ�';
