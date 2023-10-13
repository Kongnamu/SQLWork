-- �Խ��� ���̺� ����
CREATE TABLE boards(
    bno         NUMBER PRIMARY KEY,
    btitle      VARCHAR2(100),
    bcontent    CLOB NOT NULL,
    bwriter     VARCHAR2(50) NOT NULL,
    bdate       DATE DEFAULT SYSDATE,
    bfilename   VARCHAR2(50), 
    bfiledata   BLOB 
);

-- ������ ����
CREATE SEQUENCE seq_bno NOCACHE;

-- �Խñ� �߰�
INSERT INTO boards (bno, btitle, bcontent, bwriter)
VALUES (seq_bno.NEXTVAL, 'smartPhone', '�Ｚ ������ s21�Դϴ�', 'today');

INSERT INTO boards (bno, btitle, bcontent, bwriter, bdate, bfilename, bfiledata)
VALUES (seq_bno.NEXTVAL, 'smartPhone', '�Ｚ ������ s21�Դϴ�', 'today', 
        SYSDATE, null, null);
        
COMMIT;

SELECT * FROM boards WHERE bwriter = 'sky123'
ORDER BY bno DESC;0

DROP TABLE boards;