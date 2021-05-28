# emp 테이블에서 부서번호와 급여가 1000 이상인 사원들의 
# 부서별 평균 급여의 반올림 값을 
# 부서번호로 내림차순 정렬해서 출력.
SELECT deptno, ROUND(AVG(sal))
FROM emp
WHERE sal >= 1000
GROUP BY deptno
ORDER BY deptno DESC;


# emp 테이블에서 부서번호와 급여가 2000 이상인 
# 사원들의 부서별 평균 급여의 반올림 값을 
#평균 급여의 반올림 값으로 오름차순 정렬해서 출력
SELECT deptno, ROUND(AVG(sal)) salavg
FROM emp
WHERE sal >= 2000
GROUP BY deptno
ORDER BY salavg ASC;

# emp 테이블에서 각 부서별 같은 업무(job)를 하는 
# 사람의 인원수를 구해서 부서번호, 업무(job), 
# 인원수를 부서번호에 대해서 오름차순 정렬해서 출력
SELECT deptno, job, COUNT(job)
FROM emp
GROUP BY deptno,job
ORDER BY deptno ASC;


# emp 테이블에서 부서번호와 급여가 1000 이상인 사원들의 
# 부서별 평균 급여를 출력. 
# 단, 부서별 평균급여가 3000 이상인 부서만 출력하세요.
SELECT deptno, AVG(sal) salavg
FROM emp
WHERE sal >= 1000
GROUP BY deptno
HAVING salavg <= 3000;
SELECT empno, ename
FROM emp
ORDER BY empno DESC
LIMIT 15,10; DESC member;
INSERT INTO member(num, NAME, addr) VALUES (10,'바이든','미국');
SELECT num, NAME, addr
FROM member;
UPDATE member SET NAME ='두테르테1', addr ='필리핀1'
WHERE num = 11 ;
SELECT num, NAME, addr
FROM member;
DELETE
FROM member
WHERE num = '1';
SELECT num, NAME, addr
FROM member
ORDER BY num DESC
LIMIT 0,2; DESC dept;
SELECT deptno, dname, loc
FROM dept; DESC emp;
INSERT INTO emp(empno,ename,job, mgr, 
hiredate,sal,comm) VALUES (9010,'KIM','MANAGER',7839, CURDATE(), 50000, 40000);
UPDATE emp SET ename='KIM1', job='MANAGER1', mgr=1212,
hiredate = CURDATE(), sal = 50001, comm= 40001, deptno = 40
WHERE empno = 9003;
DELETE
FROM emp
WHERE empno = 9003;
SELECT empno,ename,job, mgr, DATE_FORMAT(hiredate,'%Y/%m/%d'),sal,nvl(comm,0),deptno
FROM emp
ORDER BY hiredate DESC
LIMIT 0, 5;
SELECT empno, dname
FROM emp, dept; DESC emp;

#emp 테이블의 모든 사원들의 이름, 부서번호, 부서명을 출력
SELECT ename, emp.deptno, dname
FROM emp, dept
WHERE dept.DEPTNO = emp.deptno;
SELECT ename, a.deptno, dname
FROM emp a, dept b
WHERE b.deptno = a.deptno;
SELECT ename, a.deptno, dname
FROM emp a
JOIN dept b ON b.deptno = a.deptno;
SELECT ename, a.deptno, dname
FROM emp a
JOIN dept b USING(deptno);

# 급여가 3000 에서 5000 사이의 사원이름과 부서명을 출력
SELECT ename, dname
FROM emp a, dept b
WHERE b.deptno = a.deptno AND sal BETWEEN 3000 AND 5000;

# 부서명이 'ACCOUNTNG' 인 사원의 
# 이름, 입사일, 부서번호, 부서명을 출력
SELECT ename, hiredate, a.deptno, dname
FROM emp a, dept b
WHERE b.deptno = a.deptno AND dname='ACCOUNTING';

# 커미션이 null 이 아닌 사원의 이름, 입사일, 부서명을 출력.
SELECT ename, hiredate, dname
FROM emp a, dept b
WHERE b.deptno = a.deptno AND comm IS NOT NULL;
SELECT empno, ename, dname
FROM emp a
LEFT JOIN dept b ON b.deptno = a.deptno;
# emp 테이블과 dept 테이블을 조인하여 
# 부서번호, 부서명, 이름, 급여를 출력.
SELECT a.deptno, dname, ename, sal
FROM emp a, dept b
WHERE b.deptno = a.deptno;

# 사원의 이름이 'ALLEN' 인 사원의 이름과 부서명을 출력.
SELECT ename, dname
FROM emp a, dept b
WHERE b.deptno = a.detpno AND ename='ALLEN';

# 모든 사원의 이름, 부서번호, 부서명, 급여를 출력.
# 단, emp 테이블에 없는 부서도 출력해보세요
SELECT ename, a.deptno, dname, sal
FROM emp a
LEFT JOIN dept b ON b.deptno = a.deptno;
SELECT b.deptno, dname, COUNT(empno)
FROM dept b
LEFT JOIN emp a ON b.deptno = a.deptno
GROUP BY b.deptno
ORDER BY b.deptno ASC ;
SELECT *
FROM salgrade;
INSERT INTO salgrade(grade, losal, hisal) VALUES(6,10000,30000);

# 사원의 이름과 급여, 급여의 등급을 출력해 보세요
SELECT ename, sal, grade
FROM emp a, salgrade b
WHERE sal BETWEEN losal AND hisal;

# 사원의 이름과, 부서명, 급여의 등급을 출력해 보세요
SELECT ename, dname, grade
FROM emp a, dept b, salgrade c
WHERE b.deptno = a.deptno AND sal BETWEEN losal AND hisal;
SELECT *
FROM dept;
SELECT empno, ename
FROM emp
WHERE empno = (
SELECT empno
FROM emp
WHERE empno=9003);

# 'ALLEN' 과 같은 부서에서 근무하는 사원의 
# 이름과 부서의 번호를 출력.
SELECT ename, deptno
FROM emp
WHERE deptno = (
SELECT deptno
FROM emp
WHERE ename='ALLEN');

# 'ALLEN' 과 동일한 직책(job) 을 가진 사원의 
# 사번과 이름, 직책을 출력해 보세요.
SELECT empno, ename, job
FROM emp
WHERE job = (
SELECT job
FROM emp
WHERE ename='ALLEN');
# 'ALLEN' 의 급여와 동일하거나 더 많이 받는 
# 사원의 이름과 급여를 출력해 보세요.
SELECT ename, sal
FROM emp
WHERE sal >= (
SELECT sal
FROM emp
WHERE ename='ALLEN');
# 'DALLAS' 에서 근무하는 사원의 
# 이름, 부서번호를 출력해보세요
SELECT ename, deptno
FROM emp
WHERE deptno = (
SELECT deptno
FROM dept
WHERE loc='DALLAS');

# 'SALES' 부서에서 근무하는 
# 모든 사원의 이름과 급여를 출력해보세요.
SELECT ename, sal
FROM emp
WHERE deptno = (
SELECT deptno
FROM dept
WHERE dname='SALES');

# 자신의 직속 상관이 'KING' 인 
# 사원의 이름과 급여를 출력해 보세요.
SELECT ename, sal
FROM emp
WHERE mgr = (
SELECT empno
FROM emp
WHERE ename='KING');


 # 급여를 3000 이상받는 사원이 소속된 부서와 동일한 부서에서
 # 근무하는 사원들의 이름과 급여, 부서번호를 출력.
SELECT ename, sal, deptno
FROM emp
WHERE deptno IN (
SELECT deptno
FROM emp
WHERE sal>=3000);
 
 #  IN 연산자를 이용하여 부서별로 가장 급여를 많이 받는 
 # 사원의 사원번호, 급여, 부서번호를 출력
SELECT empno, sal, deptno
FROM emp
WHERE sal IN (
SELECT MAX(sal)
FROM emp
GROUP BY deptno);

# 직책이 MANAGER 인 사원이 속한 부서의 
# 부서번호와 부서명과 부서의 위치를 출력
SELECT deptno, dname, loc
FROM dept
WHERE deptno IN (
SELECT deptno
FROM emp
WHERE job='MANAGER');
SELECT *
FROM member;

SELECT * FROM member;