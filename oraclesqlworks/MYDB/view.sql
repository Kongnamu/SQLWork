-- ��(VIEW) ����
-- UPDATE, DELETE ����
-- �ּҿ� '���ѹα�'�� �����ϴ� ����� ������ �並 ����ÿ�
CREATE VIEW vw_customer
AS SELECT * FROM customer
    WHERE address LIKE '���ѹα�%';
    
SELECT * FROM vw_customer;

--VIEW ����
DROP VIEW vw_customer;

-- �̸��� �迬�� -> ���������� ����
UPDATE vw_customer
    SET name = '������'
    WHERE name = '�迬��';
    
-- �� ���̵� 3�� ���� ����
DELETE FROM vw_customer
WHERE custid = 3; -- orders���� ������̹Ƿ� ���� �ȵ� 
    
COMMIT;
    
