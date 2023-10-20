-- ROWNUM (�ο��ȣ, ���ȣ)
-- �� ���� �����ϰ� ���� �� ���, SUDO COLUME�̶� ��
CREATE TABLE ex_score(
    name    VARCHAR2(20),
    score   NUMBER(3)
);

INSERT INTO ex_score VALUES ('���ϳ�', 94);
INSERT INTO ex_score VALUES ('���ϳ�', 85);
INSERT INTO ex_score VALUES ('���ϳ�', 100);
INSERT INTO ex_score VALUES ('���ϳ�', 97);
INSERT INTO ex_score VALUES ('���ϳ�', 87);
INSERT INTO ex_score VALUES ('���ϳ�', 87);
INSERT INTO ex_score VALUES ('���ϳ�', 91);
INSERT INTO ex_score VALUES ('���ϳ�', 77);
INSERT INTO ex_score VALUES ('���ϳ�', 80);
INSERT INTO ex_score VALUES ('���ϳ�', 95);


SELECT * FROM ex_score;

SELECT ROWNUM, name, SCORE
FROM ex_score
WHERE ROWNUM <= 5;

-- 1���� 6����� �����Ͱ˻�
-- ROWNUM�� 1���� �����ؾ��ϴ� ���������� �ִ�.
SELECT ROWNUM, name, SCORE
FROM ex_score
WHERE ROWNUM >= 1 AND ROWNUM <= 6;

-- ������ �������� �����Ͽ� �˻�
SELECT *
FROM ex_score
ORDER BY score DESC;

-- ������ ���� ������ 5���� �˻�
SELECT ROWNUM, name, SCORE
FROM ex_score
WHERE ROWNUM <= 5
ORDER BY score DESC;

-- ������ �������� ���� �Ŀ� 5�� �˻�
-- ���� ����
/* 1. FROM�� ���̺��
 2. WHERE, GROUP BY
3. SELECT ��
4. ORDER ��
*/
SELECT ROWNUM, name, SCORE
FROM (SELECT * FROM ex_score ORDER BY score DESC)
WHERE ROWNUM <= 5;

-- ���� ���� �˻��ϱ�
SELECT name,
       score,
       RANK() OVER (ORDER BY score DESC) ����1,
       DENSE_RANK() OVER (ORDER BY score DESC) ����2
FROM ex_score;




COMMIT;