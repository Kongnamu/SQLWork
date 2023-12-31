select * from department;
select * from employee;

-- 급여가 400만원 이상이고 부서번호가 10인 사원을 검색
select * from employee
where sal >= 4000000 and deptid = 10;

-- 급여가 많은 순으로 정렬하시오
select * from employee
order by sal desc;

-- 급여가 없는 사원을 검색하시오
select * from employee
where sal is null;

-- 사원의 총인원, 급여 총액 및 급여 평균을 구하시오
select count(*) 사원수,
    sum(sal) 급여합계,
    round(avg(sal), -2) 급여평균
from employee;
    
-- 부서별 급여 총액을 구하시오
select deptid,
    sum(sal)
from employee
group by deptid;

-- 부서이름을 포함한 사람의 모든 정보를 검색하시오(조인)
select a.deptname, b.*
from department a, employee b
where a.deptid = b.deptid;

-- using --- join 사용
select deptid,
        a.deptname,
        b.empid,
        b.empname,
        b.age,
        b.sal
from department a join employee b
using (deptid);

-- 부서별, 부서이름별 급여 총액, 평균
select  a.deptid,
        a.deptname,
        sum(b.sal) 급여총액, 
        round(avg(b.sal), -2) 급여평균
from department a join employee b
    on a.deptid = b.deptid
group by deptid, deptname;

-- 부서별, 부서이름별 급여 소계, 총계


-- 최고, 최저 급여를 받는 사람의 정보 검색
select *
from employee
where sal = (select max(sal) from employee)
    or sal = (select min(sal) from employee);

-- 백두산 사원의 급여를 430만원으로 수정하시오
update employee
set sal = 4300000
where empname = '백두산';

-- 사원의 급여 순위를 구하시오
select empname,
    sal,
    rank() over(order by sal desc) 급여순위1,
   dense_rank() over(order by sal desc) 급여순위2
    from employee;