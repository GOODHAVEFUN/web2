--회사에 존재하는 직급(job_id) 조회하기
SELECT JOB_ID 
FROM EMPLOYEES;
--107개 의 결과가 나온다, 어떤 종류가 존재하는지 알고싶기에 중복을 제외 시킨다
--DISTINCT  : 해당칼럼에서 중복되는 값을 제외 시킨다
SELECT DISTINCT JOB_ID ,HIRE_DATE 
FROM EMPLOYEES;
--여러 컬럼을 DISTICNCT 하게 되면 복합적으로 적용된다
-- 두 컬럼의 데이터가 모두 중복되어야 중복이라고 생각한다

--정렬 기준을 내가 조회하는 컬럼으로 사용하지 않아도 된다!!
SELECT FIRST_NAME ,LAST_NAME 
FROM EMPLOYEES
order BY SALARY DESC;