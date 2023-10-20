select * from department;
select * from employee;

-- �޿��� 400���� �̻��̰� �μ���ȣ�� 10�� ����� �˻�
select * from employee
where sal >= 4000000 and deptid = 10;

-- �޿��� ���� ������ �����Ͻÿ�
select * from employee
order by sal desc;

-- �޿��� ���� ����� �˻��Ͻÿ�
select * from employee
where sal is null;

-- ����� ���ο�, �޿� �Ѿ� �� �޿� ����� ���Ͻÿ�
select count(*) �����,
    sum(sal) �޿��հ�,
    round(avg(sal), -2) �޿����
from employee;
    
-- �μ��� �޿� �Ѿ��� ���Ͻÿ�
select deptid,
    sum(sal)
from employee
group by deptid;

-- �μ��̸��� ������ ����� ��� ������ �˻��Ͻÿ�(����)
select a.deptname, b.*
from department a, employee b
where a.deptid = b.deptid;

-- using --- join ���
select deptid,
        a.deptname,
        b.empid,
        b.empname,
        b.age,
        b.sal
from department a join employee b
using (deptid);

-- �μ���, �μ��̸��� �޿� �Ѿ�, ���
select  a.deptid,
        a.deptname,
        sum(b.sal) �޿��Ѿ�, 
        round(avg(b.sal), -2) �޿����
from department a join employee b
    on a.deptid = b.deptid
group by deptid, deptname;

-- �μ���, �μ��̸��� �޿� �Ұ�, �Ѱ�


-- �ְ�, ���� �޿��� �޴� ����� ���� �˻�
select *
from employee
where sal = (select max(sal) from employee)
    or sal = (select min(sal) from employee);

-- ��λ� ����� �޿��� 430�������� �����Ͻÿ�
update employee
set sal = 4300000
where empname = '��λ�';

-- ����� �޿� ������ ���Ͻÿ�
select empname,
    sal,
    rank() over(order by sal desc) �޿�����1,
   dense_rank() over(order by sal desc) �޿�����2
    from employee;