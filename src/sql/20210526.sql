# emp 테이블에서 부서번호와 급여가 1000 이상인 사원들의 
# 부서별 평균 급여의 반올림 값을 
# 부서번호로 내림차순 정렬해서 출력. 

SELECT deptno , round(AVG(sal))
FROM emp
WHERE sal >= 1000
GROUP BY deptno
ORDER BY deptno DESC;


# emp 테이블에서 부서번호와 급여가 2000 이상인 
# 사원들의 부서별 평균 급여의 반올림 값을 
#평균 급여의 반올림 값으로 오름차순 정렬해서 출력

SELECT deptno , round(AVG(sal)) salavg
FROM emp
WHERE sal >= 2000
GROUP BY deptno
ORDER BY salavg asc;

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
LIMIT 15,10;

DESC member;

INSERT INTO member(num, NAME, addr) 
VALUES (10,'바이든','미국');

SELECT num, NAME, addr
FROM member;

UPDATE member
SET NAME ='두테르테1', addr ='필리핀1'
WHERE num = 11 ;

SELECT num, NAME, addr
FROM member;

DELETE FROM member
WHERE num = '1';


SELECT num, NAME, addr
FROM member
ORDER BY num desc
LIMIT 0,2;

DESC dept;
SELECT deptno, dname, loc
FROM dept;



DESC emp;

INSERT INTO emp(empno,ename,job, mgr, 
hiredate,sal,comm,deptno) VALUES (9003,'KIM','MANAGER',7839,
curdate(), 50000, 40000, 30);

UPDATE emp
SET ename='KIM1', job='MANAGER1', mgr=1212,
hiredate = CURDATE(), sal = 50001, comm= 40001, deptno = 40
WHERE empno = 9003;

DELETE FROM emp
WHERE empno = 9003;
 
SELECT *
FROM emp;
