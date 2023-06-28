--10 || 20; --오류
--연산 결과를 조회하고 싶은 것이므로 SELECT 를 사용해야 오류가 발생하지 않는다

--연결연산자
SELECT 10 || 20 , '안녕' || '하세요' FROM dual;
SELECT '안녕' || '하세요' FROM dual;
--특정테이블을 확인할 수 없을 때는 DUAL
--결과가 무슨 타입인지 환인하는것도 중요하다!!

-- dual 테이블 : 다른 테이블을 참조할 필요가 없이 값을 확인하고 싶을 때 사용할 수 있는 테이블
-- 오라클에서 지원해준다

-- 1. 연결연산자
SELECT 10 || 20 FROM dual;
--SELECT '안녕'||'하세요' FROM dual;
-- 결과가 무슨 타입인지 확인하는 것이 중요하다!!

SELECT first_name || last_name 성함
FROM employees;

SELECT hire_date || '안녕'
FROM employees;

SELECT hire_date || ' '
FROM employees;

--[실습] 사원의 이름과 메일주소 출력하기
-- 이 때 이름은 first_name과 last_name이 띄어쓰기로 이어져있고
-- 메일의 주소는 사원메일주소@koreait.com이다
SELECT first_name || ' ' || last_name 이름,
email || '@koreait.com' 이메일
FROM employees;

-- 2. 산술연산자
SELECT employee_id, employee_id + 10,
   employee_id - 10,
   employee_id * 10,
   employee_id / 10
FROM employees;

-- [실습] 직원의 이름, 봉급, 인상봉급, 감축봉급을 조회하기
-- 이름은 성과 함께 띄어쓰기로 연결되어있다
-- 인상봉급은 기존봉급의 10% 증가되었고 -> 1.1
-- 감축봉급은 기존봉급의 10% 감소되었다 -> 0.9
-- 결과를 기존 봉급 오름차순으로 정렬하여 조회한다

SELECT first_name || ' ' ||last_name 이름,
   salary 봉급,
   salary * 1.1 인상봉급,
   salary * 0.9 감축봉급
FROM EMPLOYEES
ORDER BY salary;

-- 날짜타입의 산술연산
-- (1) 날짜와 숫자
SELECT hire_date,
   hire_date + 10,   -- 10일 더해준다
   hire_date - 10   -- 10일 빼준다
FROM EMPLOYEES;

-- sysdate
-- 현재 날짜와 시간정보를 가지고 있으며
-- 오라클에서 기본적으로 제공한다
SELECT sysdate FROM dual;

-- (2) 날짜와 날짜의 연산
-- 날짜 - 날짜 : 며칠이 지났는지 결과로 나온다
-- 연산결과는 숫자타입이다

--   sysdate + hire_date 오류발생
SELECT hire_date, sysdate,
   sysdate - hire_date
FROM employees;

-- 시간을 연산할 때는 시간을 일로 환산해서 진행한다
-- 12시간 -> 0.5일 / 24시간 -> 1일

-- 날짜와 숫자 연산에서 기본적으로 숫자는 일수를 의미하기 때문에
-- 시간, 분 단위로 연산하고 싶다면 일(24h)로 환산해야한다
SELECT SYSDATE,
   sysdate + 12/24,
   sysdate - 30 / 60 / 24
FROM dual;

--3)관계연산자
--WHERE 절 사용

--직원의 이름 성 봉급을 조회한다
--단, 봉급이 10000이상인 직원 정보만 조회한다
SELECT FIRST_NAME , LAST_NAME ,SALARY 
FROM EMPLOYEES 
WHERE SALARY >=10000;

SELECT FIRST_NAME 이름, LAST_NAME 성,SALARY 봉급 
FROM EMPLOYEES 
WHERE 봉급>=10000; 
-- WHERE절에서 봉급이라는 컬럼을 못찾는 오류가 발생하는데
--명령어가 작동하는 순서가 있기 떄문이다

--직원의 임름 , 성을 조회한다
SELECT FIRST_NAME ,LAST_NAME 
FROM EMPLOYEES
WHERE FIRST_NAME  = 'David';
--sql문은 대소문자를 굼분하지않지만 데이터는 대소문자를 구분한다

--4. SQL 연산자 
--employess 테이븧에서 salary가 10000이상 12000잏라인 직원의
--first_name, last_name, salary 를  salary 오름차순으로 구하기
SELECT first_name, last_name, salary
FROM EMPLOYEES e 
WHERE SALARY BETWEEN 10000<=SALARY AND SALARY<=12000 
ORDER BY SALARY ;


--like
-- % : ~아무거나
SELECT  FIRST_NAME 
FROM EMPLOYEES
WHERE FIRST_NAME LIKE '%';

--_ : 자리수
SELECT FIRST_NAME 
FROM EMPLOYEES 
WHERE salary = any(10000,11000,13000);
--____e앞에 4자리수 4개의 글자가 있고 마지막에 e로 끝나는 문자값을 의미


SELECT FIRST_NAME ,LAST_NAME ,SALARY ,DEPARTMENT_ID 
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 80 or SALARY >=10000;


