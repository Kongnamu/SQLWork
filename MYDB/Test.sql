-- �ǽ� ����
-- 1. ��� ���� �̸��� �ּ� �˻�
SELECT name, address FROM customer;

-- 2. ��� ���� �̸�, �ּ�, ��ȭ��ȣ �˻�
SELECT name, address, phone FROM customer;

-- 3. �ּҰ�' ����'�� ���� �˻�
SELECT * FROM customer
WHERE address LIKE '%����%';

-- 4. ���� �̸��� '�迬��' Ȥ�� '�Ȼ�'�� ���� �˻�
SELECT * FROM customer
WHERE name IN ('�迬��', '�Ȼ�');

-- 5. �ּҰ� '���ѹα�'�� �ƴ� ���� �˻�
SELECT * FROM customer
WHERE address <> '���ѹα�';

-- 6. ��ȭ��ȣ�� ���� ���� �˻�
SELECT * FROM customer
WHERE phone IS NULL;

-- 7. ���� �̸������� ����
SELECT * FROM customer
ORDER BY name;

-- 8. ���� �� �ο��� ���ϱ�
SELECT COUNT(name) AS �Ѱ���
FROM customer;


