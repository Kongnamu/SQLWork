-- product ���̺� ����
CREATE TABLE product(
    product_code CHAR(6) PRIMARY KEY,   -- ��ǰ�ڵ�
    product_name VARCHAR2(50) NOT NULL, -- ��ǰ��   
    price        NUMBER NOT NULL        -- ����
);

INSERT INTO product(product_code, product_name, price)
VALUES ('100001', '������ ���� ���콺', 25000);
INSERT INTO product(product_code, product_name, price)
VALUES ('100002', '���� ���̹� Ű����', 30000);
INSERT INTO product(product_code, product_name, price)
VALUES ('100003', '������ �г� ���þ߰� �����', 120000);

COMMIT;

SELECT * FROM product;


-- ��ǰ�� �� ���� ���ϱ�
SELECT COUNT (*) �Ѱ���
FROM product;

-- ��ǰ�� �� ���� �� ��ǰ ������ ����� ���Ͻÿ�
SELECT COUNT (*) �Ѱ���,
       ROUND(AVG(price), -2) ��հ��� -- 100�� ������ �ݿø�
FROM product;

-- ��ǰ �߿��� ���콺 �˻��ϱ�
SELECT * FROM product
WHERE product_name LIKE '%���콺%';

-- ��ǰ�� ���ݼ����� �����Ͻÿ�(��������)
SELECT * FROM product
ORDER BY price;

-- ������ ��������
-- ������ ������ ���� ���� ���� �̸� ���
select name 
from customer
where custid not in (select custid from orders);

-- ������ ��������
-- ������ ������ ���� �ִ°��� �̸� ���
select name 
from customer
where custid in (select custid from orders);
