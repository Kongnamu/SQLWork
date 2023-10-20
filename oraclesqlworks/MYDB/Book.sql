-- bookmall ����
-- book ���̺� ����
CREATE TABLE book(
    bookid      NUMBER PRIMARY KEY,
    bookname    VARCHAR2(60) NOT NULL,
    publisher   VARCHAR2(60) NOT NULL,
    price       NUMBER NOT NULL
);

-- ���� �ڷ� �߰�
INSERT INTO book VALUES (1, '�౸�� ����', '�½�����', 7000);
INSERT INTO book VALUES (2, '������ ���� - ����������', '������', 13000);
INSERT INTO book VALUES (3, '������ ���� - �ΰ��� ž', '���ѹ̵��', 22000);
INSERT INTO book VALUES (4, '������ ���� - ���� ��ȯ', '���ѹ̵��', 35000);
INSERT INTO book VALUES (5, '�ظ����Ϳ� �������� ��', '�½�����', 8000);
INSERT INTO book VALUES (6, '�ظ����Ϳ� ����ǹ�', '�½�����', 6000);
INSERT INTO book VALUES (7, '�ظ����Ϳ� ����ī���� �˼�', '�̻�̵��', 20000);
INSERT INTO book VALUES (8, '�ظ����Ϳ� ���� ��', '�̻�̵��', 13000);
INSERT INTO book VALUES (9, '�ظ����Ϳ� �һ�������', '�Ｚ��', 7500);
INSERT INTO book VALUES (10, '�ظ����Ϳ� ȥ������', '�½�����', 13000);


-- ��� ������ ��ȣ, �̸�, ���� �˻�
SELECT bookid, bookname, price FROM book;

-- ���� ���̺� �ִ� ��� ���ǻ縦 �˻� (�ߺ� ���� ����)
-- DISTINCT: �ߺ��� ���� ������ �����͸� ���
SELECT DISTINCT publisher FROM book;

-- ���ǻ簡 '�½�����' �Ǵ� '���ѹ̵��'�� ������ �˻�
SELECT * FROM book
WHERE publisher = '�½�����' OR publisher = '���ѹ̵��';

-- ���ǻ簡 '�½�����' �Ǵ� '���ѹ̵��'�� ������ �˻�
-- IN() �Լ����
SELECT * FROM book
WHERE publisher IN ('�½�����', '���ѹ̵��');

-- ���ǻ簡 '�½�����' �Ǵ� '���ѹ̵��'�� ������ �����ϰ� �˻�
-- NOT IN() �Լ����
SELECT * FROM book
WHERE publisher NOT IN ('�½�����', '���ѹ̵��');

-- ������ 20000�� �̸��� ���� �˻�
SELECT * FROM book
WHERE price < 20000
ORDER BY price;

-- ������ 13000���� ���� �˻�
SELECT * FROM book
WHERE price = 13000;

-- ������ 13000���� �ƴ� ���� �˻�
SELECT * FROM book
WHERE price <> 13000;

SELECT * FROM book
WHERE price != 13000;

-- ������ 10000���̻�, 20000�� ������ ���� �˻�
-- Į���� : BETWEEN A AND B
SELECT * FROM book
WHERE price BETWEEN 10000 AND 20000;
-- WHERE price <= 10000 AND price <= 20000;

-- �౸�� ������ ���ǻ� �˻�
SELECT publisher FROM book
WHERE bookname = '�౸�� ����';

SELECT publisher FROM book
WHERE bookname LIKE '�౸�� ����';

-- �����̸��� '�ظ�����'�� ���Ե� ���ǻ縦 �˻�
SELECT bookname, publisher FROM book
WHERE bookname LIKE '%�ظ�����%';

-- �����̸��� '�ظ�����'�� ���Ե��� ���� ���ǻ� �˻�
SELECT bookname, publisher FROM book
WHERE bookname NOT LIKE '%�ظ�����%';

-- '�ظ�����'�� ���� ���� �� ������ 20000�� �̻��� ������ �˻�
SELECT bookname, price FROM book
WHERE bookname LIKE '%�ظ�����%' AND price >= 20000;

-- ����
-- ������ �̸������� ���� (��������)
SELECT * FROM book
ORDER BY bookname;

-- ������ ���ݼ����� �˻� (��������)
-- ������ ������ �̸��� ������������ ����
SELECT * FROM book
ORDER BY price ASC, bookname DESC;

COMMIT;