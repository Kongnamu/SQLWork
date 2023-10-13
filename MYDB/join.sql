-- ���� : �� ���̺��� ���� �����Ͽ� ����ϴ� ���
-- �������� : ���� ������ ��Ȯ�� ��ġ�ϴ� ��쿡 ��� ���
-- �ܺ����� : ���� ������ ��Ȯ�� ��ġ���� �ʾƵ� ��� ����� ���

-- ���� ���� �ֹ��� ���� �����͸� ��� �˻�
-- �� �̸����� ����(�ڵ����� �׷�ȭ��)
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
ORDER BY cus.name;

SELECT *
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
ORDER BY cus.name;

-- �ֹ����� ���� ������ ��� �˻�
-- ������ ��ġ���� �ʴ� ���̺� (+)�� �־���
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.custid = ord.custid(+)
ORDER BY cus.name;

-- ���� �̸�, �ֹ��� ���� �̸�, �ֹ���, �ֹ��ݾ�
SELECT cus.name, bk.bookname, ord.orderdate, ord.saleprice
FROM customer cus, book bk, orders ord
WHERE cus.custid = ord.custid       --Ű��Ű = �ܷ�Ű
    AND bk.bookid = ord.bookid;
    
-- ���� ���� �ֹ��� ���� �����͸� ��� �˻�
-- ���� : '������' ���� �ֹ������� �˻��Ͻÿ�
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
    AND cus.name = '������'
ORDER BY cus.name;

-- ���� ���� �ֹ��� ���� �����͸� ��� �˻�
-- ���� �ֹ� �ݾ��� �Ѿ��� ���
SELECT cus.name, SUM(ord.saleprice)
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
GROUP BY cus.name;

-- ���� ���� �ֹ��� ���� �����͸� ��� �˻�
-- ���� �ֹ� �ݾ��� �Ѿ��� ���(group by ���)
-- �迬�� ���� �ֹ� �ѱݾ��� ���(having���� ������ ��)
SELECT cus.name, cus.custid, SUM(ord.saleprice)
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
GROUP BY cus.custid, cus.name
    HAVING cus.name = '�迬��'
ORDER BY cus.name;

-- ǥ������ (ansi sql)
-- �������� (inner join)
-- ���� ���� �ֹ��� ���� �����͸� ��� �˻��Ͻÿ�
-- ���� �ֹ��� ������ �ǸŰ����� �˻��Ͻÿ�
SELECT cus.name, ord.saleprice
FROM customer cus INNER JOIN orders ord
    ON cus.custid = ord.custid
ORDER BY cus.name;

-- �ܺ����� (OUTER JOIN)
-- JOIN ���ǿ� �����ϴ� �����Ͱ� �ƴϾ ����ϴ� ���
-- ���� ���� �ֹ��� ���� ��������
-- �ֹ����� ���� �����͸� �����Ͽ� ���� �̸��� �ֹ��� ������ �ǸŰ����� �˻��Ͻÿ�
SELECT cus.name, ord.saleprice
FROM customer cus LEFT OUTER JOIN orders ord
    ON cus.custid = ord.custid
ORDER BY cus.name;
