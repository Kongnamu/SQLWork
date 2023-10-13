-- ���� Ÿ�� ���� �Լ�
-- ���밪 ���ϱ�: ABS()
-- ���� ���̺�: dual
SELECT ABS(-10) FROM dual;

-- �ݿø�: round(����, �ø� �ڸ���)
SELECT ROUND(127.67, 1) FROM dual; -- �Ҽ� ù°�ڸ�
SELECT ROUND(127.67, -1) FROM dual;-- ���� 1���ڸ�

-- ����(����): TRUNC()
SELECT TRUNC(127.67, 1) FROM dual; -- �Ҽ� ù°�ڸ����� ǥ���ϰ� ����
SELECT TRUNC(127.67, 0) FROM dual; --

-- FLOOR
SELECT FLOOR(127.67) FROM dual; -- ������ ǥ��

-- �ŵ����� : POWER(��, ����)
SELECT POWER(2, 3) FROM dual;

-- ����Ÿ��
-- �ҹ��ڷ� �����ϱ�: LOWER('ABCD')
-- �빮�ڷ� �����ϱ�: UPPER('abcd')
SELECT LOWER('ABCD') FROM dual;
SELECT UPPER('abcd') FROM dual;

-- ���ڿ��� �Ϻθ� ����: SUBSTR(���ڿ�, �ε���, �ڸ���)
SELECT SUBSTR('ABCD', 1, 2) FROM dual;

-- ���ڿ��� ã�� �ٲٱ�: REPLACE(���ڿ�, ����������, �����Ĺ���)
SELECT REPLACE('AUNGRY', 'A', 'H') FROM dual;

-- ���ڿ��� ����: LENGTH()
SELECT LENGTH('ABCD') FROM dual;

--����ŷ : LPAD(���ڿ�, ����, Ư������) - ���ʺ��� ä��
SELECT LPAD('today', 10, '*') FROM dual;
SELECT RPAD('today', 10, '*') FROM dual;

-- �ֹ����̺�
-- ���� ��� �ֹ� �ݾ��� �ݿø�
SELECT custid,
       SUM(saleprice)AS �հ�ݾ�,
       COUNT(saleprice) AS �ֹ��Ǽ�,
       ROUND (AVG(saleprice), -2) AS ����ֹ��ݾ�
FROM orders
GROUP BY custid;

-- �������̺�
-- å������ ���ڼ�
-- å������ ����Ʈ��: �ѱ� -3Byte / ����, Ư������ = 1byte
SELECT bookname,
       LENGTH(bookname) AS ���ڼ�,
       LENGTHB(bookname) AS ����Ʈ��
FROM book;

-- �౸�� �󱸷� ���� �� �˻�
SELECT bookname,
       REPLACE(bookname, '�౸', '��') AS bookname
FROM book;

-- �� ���̺�
-- �� �̸��� ���� ���� ���� ���� �ο����� ���Ͻÿ�
SELECT SUBSTR(name, 1, 1) AS ��,
        COUNT(*) �ο�
FROM customer
GROUP BY SUBSTR(name, 1, 1);
