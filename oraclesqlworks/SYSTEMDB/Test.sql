-- test ���̺� ����
CREATE TABLE test(
    action VARCHAR2(1000)
);

INSERT INTO test VALUES ('���� ���� �� ���Ѻο��� �����մϴ�.');

COMMIT;

DROP TABLE test;