-- �����б� ������, ��� ���̺�
SELECT * FROM summer_price;
SELECT * FROM summer_register;

-- �л��� ��� �������� �˻�
-- join, on
SELECT b.sid,
       b.subject,
       a.price
FROM summer_price a, summer_register b
WHERE a.subject = b.subject;

-- �л��� ��� �������� �˻�
-- ���� ����
-- join, using(Į����) : ���� Į�� �̸��� ���� ���
-- ��Ī ���Ұ�
SELECT b.sid,
       subject,
       a.price
FROM summer_price a join summer_register b
   USING (subject);


-- ���� ������ �հ� ���ϱ�
SELECT b.subject,
       SUM(a.price)
FROM summer_price a, summer_register b
WHERE a.subject = b.subject
GROUP BY b.subject;


INSERT INTO summer_register
VALUES (301, 'Python');

INSERT INTO summer_register
VALUES ('Python', 40000);

-- ���� ������ �հ�
SELECT subject,
       SUM(price)
FROM summer_price
GROUP BY subject;

-- ���� ������ �հ� �� ��ü �Ѱ踦 ���Ͻÿ�
-- ROLLUP, CUBE
-- NVL(����, '�Ѱ�'): ������ NULL�� �ƴϸ� ���� ���, NULL�̸� �Ѱ� ���
SELECT NVL(b.subject, '�Ѱ�') ��������,
       SUM(a.price)�������հ�
FROM summer_price a, summer_register b
WHERE a.subject = b.subject
GROUP BY ROLLUP(b.subject);
