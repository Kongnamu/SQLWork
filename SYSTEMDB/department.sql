-- �μ��� ��� ���̺� ����
CREATE TABLE department(
    deptid  NUMBER PRIMARY KEY,     -- Ű��Ű
    deptname VARCHAR2(20) NOT NULL, -- NULL�� ������� ����
    location VARCHAR2(20) NOT NULL
);

-- �μ� �ڷ� �߰� --
INSERT INTO department(deptid, deptname, location)
VALUES (10, '������', '����');
INSERT INTO department(deptid, deptname, location)
VALUES (20, '������', '��õ');
INSERT INTO department(deptid, deptname, location)
VALUES (30, '��������', '����');

-- ���� ����
COMMIT;

-- �ڷ� �˻�
SELECT deptid, deptname FROM department;

-- ��� Į�� �˻�
SELECT * FROM department;

-- Ư���� ������ (��:�ο�)�˻� : WHERE ������ ���
-- �μ� �̸��� �������� �ο�(���ڵ�) �˻�
SELECT * FROM department WHERE deptname = '������';

-- �ڷ� ����: �μ���ȣ�� 20���� ������(������ -> �濵��)
UPDATE department SET deptname = '�濵��'
WHERE deptid = 20;

-- ��� ������ �۾� �ǵ����� (COMMIT ������ �����ϸ� ���� ����, COMMIT ���Ĵ� �Ұ�)
ROLLBACK;

-- �ڷ� ����: �μ���ȣ�� 30���� ��������
DELETE FROM department
WHERE deptid = 30;


DROP TABLE department;