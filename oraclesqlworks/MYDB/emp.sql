-- emp ���̺�
CREATE TABLE emp(
    empno       NUMBER(3) PRIMARY KEY,  --�����ȣ
    ename       VARCHAR2(20) NOT NULL,  --����̸�
    gender      VARCHAR2(6) NOT NULL,   --����
    salary      NUMBER(10),             --�޿�
    hire_date   VARCHAR2(20) NOT NULL   --�Ի���
);

-- �ڷ� ����
INSERT INTO emp VALUES (100, '�̰�', '����', 3000000, '2019-01-01');
INSERT INTO emp VALUES (101, '���', '����', 2500000, '2020-05-15');
INSERT INTO emp VALUES (102, '�����', '����', 5000000, '2015-02-22');
INSERT INTO emp VALUES (103, '�ڽ���', '����', null, '2023-10-01');

COMMIT;

SELECT * FROM emp;

-- �ǽ� ���� Ǯ��
-- 1. ����� �Ի��� ������ �����Ͻÿ�(��������)
SELECT * FROM emp
ORDER BY hire_date;

-- 2. ����� �޿� ������ �����Ͻÿ�(��������)
SELECT * FROM emp
ORDER BY salary;

-- 3. �޿��� 300���� ������ ����� �޿��� ���� ������ ����
SELECT * FROM emp
WHERE salary <= 3000000
ORDER BY salary DESC;

-- 4. �޿��� ���� ����� �˻��Ͻÿ�
SELECT * FROM emp
WHERE salary IS NULL;

-- 5. ����� �� ���� ���Ͻÿ�
SELECT COUNT(ename) AS �ѻ����
FROM emp;

-- 6. ����� �޿� �հ�� ����� ���Ͻÿ�
SELECT SUM(salary) AS �޿��հ�,
       AVG(salary) AS �޿���� 
FROM emp;

-- 7. �̸��� ����� ����� ������ ���ڷ� �����Ͻÿ�
UPDATE emp SET gender = '����'
WHERE ename = '���';

-- 8. �̸��� ������� ����� �����Ͻÿ�
DELETE FROM emp
WHERE ename = '�����';

COMMIT;
ROLLBACK;

-- �ݿø�: round(����, �ڸ���)
SELECT ename ����̸�,
       salary �޿�,
       salary/30 �ϱ�,
       round(salary/30, 1) ���1,
       round(salary/30, 0) ���2,
       round(salary/30, -1) ���3
FROM emp;


SELECT * FROM emp;

-- �޿��� ���� ���� ����̸��� �޿��� �˻�
-- MAX(SALARY)
-- ��������(SUBQUERY), ��ø����
-- �ְ��޿�, �����޿� ���ϱ�
-- ���ø���: AND / �������: OR
SELECT MAX(salary) FROM emp;
SELECT MIN(salary) FROM emp;

SELECT ename �̸�, salary �޿�
FROM emp
WHERE salary = (SELECT MAX(salary) FROM emp)
   OR salary = (SELECT MIN(salary) FROM emp);
