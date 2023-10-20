-- ���̺� ����
CREATE TABLE cafe_order (
    order_no    VARCHAR2(10) PRIMARY KEY,
    drink_code  VARCHAR2(3)  NOT NULL,
    order_cnt   NUMBER       NOT NULL,
    FOREIGN KEY(drink_code) REFERENCES drink(drink_code)
);

INSERT INTO cafe_order VALUES('2023100101', 'A01', 3);
INSERT INTO cafe_order VALUES('2023100102', 'B01', 1);
INSERT INTO cafe_order VALUES('2023100123', 'A01', 2);

CREATE TABLE drink (
    drink_code  VARCHAR2(3) PRIMARY KEY,
    drink_name  VARCHAR2(30) NOT NULL
);

INSERT INTO drink VALUES('A01', '�Ƹ޸�ī��');
INSERT INTO drink VALUES('B01', 'ī���');
INSERT INTO drink VALUES('C01', '�ڸ�');

COMMIT;

SELECT * FROM cafe_order;
SELECT * FROM drink;

-- SQL�� ���
-- 1. ���� ����
SELECT a.order_no,
       a.drink_code,
       b.drink_name,
       a.order_cnt
FROM cafe_order a, drink b
WHERE a.drink_code = b.drink_code;
--USING (drink_code);

-- 2. ���� ����
SELECT a.order_no,
       a.drink_code,
       b.drink_name,
       a.order_cnt
FROM cafe_order a join drink b
ON a.drink_code = b.drink_code;

-- �ֹ��� �ȵ� ���Ḧ �����Ͽ� ��� �ֹ����� ���
-- �ܺ�����
SELECT a.drink_name,
       a.drink_code,
       b.order_no,
       b.order_cnt
FROM drink a LEFT JOIN cafe_order b
    ON a.drink_code = b.drink_code;

DROP TABLE cafe_order;
DROP TABLE drink;