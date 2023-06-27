-- 정렬해서 조회하기
-- ORDER BY 절
-- 사원의 이름 , 성 , 봉급 봉급 낮은순
-- SELECT FIRST_NAME,LAST_NAME ,SALARY  
-- FROM EMPLOYEES 
-- ORDER BY salary ASC ; -- 오름차순 추가
 -- ORDER BY 절은 정렬하겠다
 -- salary 기준으로 ASC 오름차순으로 
 -- 낮은 순서 부터 조회는 낮은 값부터 높은 값 순서대로 의미한다(오름차순)
 --	오름차순은 영어로 ascending 앞글자 3개를 따서 ASC로 사용한다
 -- 내림차순은 영어로 descending 앞글자 4개를 따서 DESC로 사용한다

-- 직원의 이름 , 성을 성 순서대로 정렬
-- 문자도 정렬 가능하다
--SELECT  FIRST_NAME , LAST_NAME 
--FROM EMPLOYEES e 
--ORDER BY LAST_NAME  ASC ;

-- 직원의 이름 , 성 , 고용일 순서대로 정렬
-- 날짜값도 정렬이 가능하다
--SELECT  FIRST_NAME , LAST_NAME , HIRE_DATE 
--FROM EMPLOYEES e 
--ORDER BY HIRE_DATE ;
--ASC, DESC를 생략하면 오름차순 정렬이 된다

--salary 첫번째 이름, 날짜 , 급여 오름차순 정렬
SELECT  first_name , hire_date , salary
FROM EMPLOYEES
ORDER BY SALARY ,HIRE_DATE DESC  ;
-- ORDER BY 로 두개의 정렬 기준을 작성하면 처번째 작성한 칼럼의값을 기준으로 잡아 정렬하고
-- 해당 컬럼의 값이 동일 하다면 2차적으로 HIRE_DATE의 값 기준으로 정렬된다