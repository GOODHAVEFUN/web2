--sql파일 하나만들기 파일명 : test.sql
--[select 연습]

--employees 테이블 이용
--1. 직원들 중 봉급이 5000 이상인 직원들의 모든 정보 조회하기

SELECT *
FROM employees
WHERE salary>=5000; 


--2. 직원들 중 부서번호가 30번인 직원들의 이름과 입사일 조회하기
SELECT *
FROM employees
WHERE DEPARTMENT_ID = 30; 

--3. 직원들 중 성이 Smith인 직원들의 이름과 봉급 조회하기
SELECT *
FROM employees
WHERE LAST_NAME = 'Smith'; 

--4. 직원들 중 봉급이 3000미만이거나 10000이상인 직원들의 이름과 봉급 조회하기
SELECT FIRST_NAME || LAST_NAME 이름 ,SALARY 봉급
FROM employees
WHERE SALARY <3000 OR SALARY >=10000  ; 


--5. 직원들 중 이름이 A로 시작하는 직원들의 이름과 성 조회하기
SELECT FIRST_NAME 이름,LAST_NAME 성
FROM employees
WHERE FIRST_NAME LIKE 'A%';


--6. 직원들 중 성에 o가 포함되고 이름이 4글자인 직원들의 이름과 성, 부서번호 조회하기
SELECT FIRST_NAME 이름,LAST_NAME 성, DEPARTMENT_ID  부서번호
FROM employees
WHERE FIRST_NAME LIKE '%o%' AND FIRST_NAME  LIKE '____';

--7. 직원들 중 이름이 J로 시작하고 성이 s로 끝나는 직원들의 이름과 성 조회하기
SELECT FIRST_NAME 이름,LAST_NAME 성
FROM employees
WHERE FIRST_NAME LIKE 'J%' AND LAST_NAME LIKE '%s' ;
