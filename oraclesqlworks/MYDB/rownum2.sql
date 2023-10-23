
SELECT * FROM drink2;

-- ���̺� ����
CREATE TABLE drink2 AS
SELECT * FROM drink;

-- ����(INSERT INTO ~ SELECT): VALUES ������
INSERT INTO drink2
(SELECT * FROM drink2);

-- ROWNUM (SUDO COLUME): ������ ������ Į��
SELECT ROWNUM, drink_code, drink_name
FROM drink2
WHERE ROWNUM <= 1 AND ROWNUM <= 10;
-- WHERE ROWNUM >= 11 AND ROWNUM <= 20; -- 1�� ���ԵǾ� �˻��� ��

-- FROM�� �������� ���: �ζ��κ�
SELECT *
FROM (SELECT ROWNUM rn, drink_code, drink_name 
    FROM drink2)
-- WHERE ROWNUM >= 11 AND ROWNUM <= 20; -- ROWNUM ����ϸ� �˻��� �ȵ�
WHERE rn >= 11 AND ROWNUM <= 20; -- ��Ī(���� rn)����ؾ� �˻���