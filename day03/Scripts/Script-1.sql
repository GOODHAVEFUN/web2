SELECT * FROM TBL_STUDENT ts ;

--[실습]
--학생 테이블에 데이터 추가
--학생번호, 이름, 수학, 영어, 국어 점수
--1. 김철수 ,90,90,90
--2. 홍길동 ,75,25,55
--3. 이유리 ,89,91,77
--4. 김웅이 ,52,100,9
--5. 신짱구 , 22,13,9

INSERT INTO TBL_STUDENT ts 
VALUES (1,김철수 ,90,90,90,null)
VALUES (2,홍길동 ,75,25,55,null)
VALUES (3,이유리 ,89,91,77,null)
VALUES (4,김웅이 ,52,100,9,null)
VALUES (5,신짱구 , 22,13,9,null);