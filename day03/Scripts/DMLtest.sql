]ofrq	SELECT  *FROM TBL_MEMBER;

INSERT INTO TBL_MEMBER(MEMBER_NAME,MEMBER_AGE)
VALUES ('이우진',20);

INSERT INTO TBL_MEMBER
VALUES ('홍길동',22);

UPDATE TBL_MEMBER SET MEMBER_NAME ='홍길동' WHERE MEMBER_AGE =20;