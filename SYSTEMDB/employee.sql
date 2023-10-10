-- ��� ���̺� ����
CREATE TABLE employee(
    empid    NUMBER(3),
    empname  VARCHAR(20) NOT NULL,
    age      NUMBER(3),
    deptid   NUMBER,
    PRIMARY KEY(empid), -- Ű��Ű
    FOREIGN KEY(deptid) REFERENCES department(deptid) -- �ܷ�Ű
);

-- ��� �ڷ� �߰�
INSERT INTO employee(empid, empname, age, deptid)
VALUES (101, '�̰�', 27, 10);
INSERT INTO employee(empid, empname, age, deptid)
VALUES (102, '���', 35, 30); -- �μ��ڵ� (30)�� ��� �ܷ�Ű �������� ����
INSERT INTO employee(empid, empname, deptid)
VALUES (103, '����', 20);
INSERT INTO employee(empid, empname, age, deptid)
VALUES (104, '���Ѱ�', 41, 20);

-- ��� ��� ���� ���
SELECT * FROM employee;

-- ��� �̸��� ���� ���
SELECT empname, age FROM employee;

-- ��� �̸��� '���'�� �����͸� ���
SELECT * FROM employee
WHERE empname = '���';

-- ���̰� 30�� �̻��� ��� �˻�
SELECT * FROM employee
WHERE age > 30;

-- �μ���ȣ�� 20���� ��� �˻�
SELECT * FROM employee
WHERE deptid = 20;

-- ���̰� null�� ��� �˻�
SELECT * FROM employee
WHERE age IS NULL;

COMMIT;

DROP TABLE employee;