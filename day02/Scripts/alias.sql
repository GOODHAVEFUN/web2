-- 테이블의 컬럼이름을 바꿔서 조회
-- 테이블의 컬럼명을 별칭(별명)으로 설정하기
-- AS alias
SELECT 
first_name AS "이름" , 
last_name AS "성", 
SALARY AS "봉급", 
EMPLOYEE_ID AS "사원번호"
FROM EMPLOYEES;

-- AS 생략가능 
--단 띄어쓰기가 있을 경우 "" 생략 불가능
SELECT 
EMPLOYEE_ID 사원번호,
first_name 이름 , 
last_name 성, 
SALARY 봉급
FROM EMPLOYEES;

--[실습] 사원의 이름 , 성 , 봉급을 봉급기중 내림차순으로 정렬하여 조회하기 
--별명 사용하기
SELECT FIRST_NAME 이름 , LAST_NAME 성, SALARY 봉급 
FROM EMPLOYEES
ORDER BY 봉급 DESC ;


--[실습2] 이름, 성을 조회하는데 봉급기준 오름 차순으로 정렬하여 조회하기
--별명 사용하기

SELECT FIRST_NAME 이름 , LAST_NAME 성
FROM EMPLOYEES
ORDER BY SALARY ;
