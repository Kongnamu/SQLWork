-- �μ��� ��� ���̺� ����
CREATE TABLE department(
    deptid  NUMBER PRIMARY KEY,     -- Ű��Ű
    deptname VARCHAR2(20) NOT NULL, -- NULL�� ������� ����
    location VARCHAR2(20) NOT NULL
);

-- �μ� �ڷ� �߰� --
INSERT INTO department(deptid, deptname, location)
VALUES (20, '������', '����');

COMMIT;