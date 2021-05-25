CREATE table member(
num INT PRIMARY KEY,
NAME VARCHAR(50),
addr VARCHAR(50)
);

DESC member;

INSERT INTO member(num, NAME, addr) 
	VALUES(1,'성영한','서울');
	
INSERT INTO member(num, NAME) 
	VALUES(2,'손정의');
	
INSERT INTO member VALUES(3,'스티브잡스','미국');

SELECT num, NAME , LENGTH(NAME)
FROM member;

SELECT *
FROM member;

DELETE FROM member
WHERE num = 2;

UPDATE member
SET NAME='스티브잡수', addr ='미쿡'
WHERE num = 3;

DESC emp;

SELECT *
FROM emp;

SELECT *
FROM dept;

#emp 테이블에서 사원번호, 사원이름, 직업을 출력. 
SELECT empno, ename, job
FROM emp;

#emp 테이블에서 사원번호,급여,부서번호를 출력하세요.
#단, 급여가 많은 순서대로 출력 
SELECT empno, sal , deptno
FROM emp
ORDER BY sal DESC;

#emp 테이블 에서 사원번호,급여,입사일을 출력. 
#단,급여가 적은 순서대로.

SELECT empno, sal, hiredate
FROM emp
ORDER BY sal ASC;

#emp 테이블에서 직업,급여를 출력. 
#단,직업명으로 오름차순, 급여로 내림차순 정렬해서

SELECT job, sal
FROM emp
ORDER BY job ASC, sal DESC;

SELECT empno eno ,  ename en 
FROM emp;

#emp 테이블에서 부서번호가 10 번인 사원들의 급여와 
#10% 인상된 금액 같이 출력

select sal, sal*1.1
FROM emp
WHERE deptno = 10;

#emp 테이블에서 급여가 3000 이상인 사원들의 모든 정보를 출력
SELECT *
FROM emp
WHERE sal >= 3000;

#emp 테이블에서 부서번호가 30번이 아닌 사람들의 
#이름과 부서번호를 출력.

SELECT ename, deptno
FROM emp
WHERE deptno != 30;

SELECT ename, deptno
FROM emp
WHERE deptno <> 30;

#emp 테이블에서 부서번호가 10번이고 급여가 3000 이상인 
#사원들의 이름과 급여를 출력
SELECT ename, sal
FROM emp
WHERE detpno = 10 AND sal >=3000;

#emp 테이블에서 직업이 SALESMAN 이거나 MANAGER 인 
#사원의 사원번호와 부서번호를 출력

SELECT empno, deptno , job
FROM emp
WHERE job = 'SALESMAN' OR job = 'MANAGER' ;

SELECT empno, deptno , job
FROM emp
WHERE job <> 'PRESIDENT' AND job <> 'CLERK' 
AND job <> 'ANALYST';

#부서번호가 10번이거나 20번인 사원의 
#사원번호와 이름, 부서번호 출력.
SELECT empno, ename, deptno
FROM emp
WHERE deptno = 10 OR deptno = 20;

SELECT empno, ename, deptno
FROM emp
WHERE deptno IN (10,20);

selecrt empno , ename, deptno
FROM emp
WHERE deptno <> 30 AND deptno <> 40;


# 급여가 1000 과 2000 사이인 사원들의 
# 사원번호,이름,급여를 출력. 

SELECT empno, ename, sal
FROM emp
WHERE sal >=1000 AND sal <= 2000;

SELECT empno, ename, sal
FROM emp
WHERE sal BETWEEN 1000 AND 2000;

# 사원이름이 'FORD' 와 'SCOTT' 사이의 사원들의 
# 사원번호,이름을 출력.
SELECT empno, ename
FROM emp
WHERE ename >= 'FORD' AND ename <= 'SCOTT';

SELECT empno, ename
FROM emp
WHERE ename between 'FORD' AND 'SCOTT';

#사원이름이 'J' 로 시작하는 사원의 
#사원이름과 부서번호를 출력.

SELECT ename, deptno
FROM emp
WHERE ename LIKE  'J%';

#사원이름이 'J' 를 포함하는 사원의 
#사원이름과 부서번호를 출력. 

SELECT ename, deptno
FROM emp
WHERE ename LIKE '%J%';

#사원이름의 두번째 글자가 'A' 인 사원의 
#이름,급여,입사일을 출력
SELECT ename, sal, hiredate
FROM emp
WHERE ename LIKE '_A%';

#사원 이름이 'ES' 로 끝나는 사원의 
#이름,급여,입사일을 출력.
SELECT ename, sal, hiredate
FROM emp
WHERE ename LIKE '%ES';

# 입사년도가 1981년 인 사원들의 
# 입사일과 사원번호를 출력해 보세요

SELECT hiredate , empno
FROM emp
WHERE hiredate LIKE '1981%';

#커미션이 NULL 인 사원의 사원이름과 커미션을 출력.
SELECT ename, comm 
FROM emp
WHERE comm IS  NULL;

#커미션이 NULL이 아닌  사원의 사원이름과 커미션을 출력.

SELECT ename, comm 
FROM emp
WHERE comm IS not NULL;

# concat(칼럼몇 , '문자열') => 문자열 연결함수
SELECT CONCAT(ename,'님') name
FROM emp;

# lower(칼럼명 or '문자열') =>컬럼을 소문자로 변경 
SELECT LOWER(ename) NAME
FROM emp;

# upper(칼럼명 or '문자열') =>컬럼을 대문자로 변경 
SELECT UPPER('hello');

#lpad('문자열' or 숫자 , 전체자리수,'남은자리를 채울 문자')
#왼쪽에 채움 
SELECT empno, LPAD(empno, 10 , '0')
FROM emp;

SELECT LENGTH('국a어');

SELECT ename, LEFT(ename, 3), RIGHT(ename, 3),
		SUBSTRING(ename,2,3)
FROM emp;

SELECT FORMAT(12345.153456,1);

SELECT CONCAT(ename,'a','b','c')
FROM emp;

SELECT ename, comm, nvl(comm, 0)
FROM emp;

SELECT ABS(-10);

SELECT CEIL(3.12345);

SELECT FLOOR(3.123454);

SELECT ROUND(3.125123,2);

SELECT MOD(10,3);

SELECT TRUNCATE(123123.123523,3);

DESC emp;

SELECT CURDATE(), CURTIME(), NOW();

SELECT ADDDATE(NOW(), INTERVAL 2 DAY);

SELECT SUBDATE(NOW(), INTERVAL 2 DAY);

SELECT DATEDIFF('2021-05-25','2021-04-29');

SELECT TIMESTAMPDIFF(MINUTE , '2021-04-29','2021-05-25');

SELECT hiredate, DATE_FORMAT(hiredate, '%Y/%m/%d %h:%i:%s')
FROM emp;

SELECT CONVERT('1234',SIGNED);

SELECT empno, ename
FROM emp
WHERE empno = '7566';

SELECT STR_TO_DATE('2021-05-25','%Y-%m-%d');

DESC emp;

INSERT INTO emp(empno, ename, job, mgr,
hiredate,sal,comm,deptno)
VALUES(9000,'SUNG','SALESMAN',7698,
'2021-05-25',10000,5000,30);

SELECT * 
FROM emp;

SELECT COUNT(*) , COUNT(empno) , COUNT(ename), COUNT(comm)
FROM emp;

SELECT SUM(sal) , SUM(comm)
FROM emp;


SELECT SUM(sal)/count(empno), AVG(sal),
		SUM(comm)/COUNT(empno), AVG(nvl(comm,0))
FROM emp;

#emp 테이블에서 부서번호와 부서별 급여의 총합을 출력

SELECT deptno, COUNT(ename) , sum(sal), nvl(SUM(comm),0)
FROM emp
GROUP BY deptno
ORDER BY deptno;

# emp 테이블에서 부서번호와 부서별 평균 급여를 구해보세요.
SELECT deptno , AVG(nvl(sal,0))
FROM emp
GROUP BY deptno;

# emp 테이블에서 부서번호와 부서별 평균 급여를 구해보세요 
# (반올림해서 소수 첫째 자리 까지만)
SELECT deptno , round(AVG(nvl(sal,0)),1)
FROM emp
GROUP BY deptno;
# emp 테이블에서 직업과 직업별 최대 급여를 구해보세요
SELECT job, MAX(sal)
FROM emp
GROUP BY job;









