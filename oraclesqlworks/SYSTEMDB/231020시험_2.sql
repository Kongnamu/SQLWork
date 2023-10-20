-- �μ�, ������̺� ����
create table department(
	deptid		int primary key,
    deptname	varchar(30) not null,
    location varchar(20) not null
);

insert into department values (10, '������', '����');
insert into department values (20, '��������', '��õ');

create table employee(
	empid		int primary key,
    empname		varchar(30) not null,
    age			int not null,
    sal			int,
    deptid		int not null,
    foreign key(deptid) references department(deptid)
);

insert into employee values(101, '�Ѱ�', 27, 2100000, 10);
insert into employee values(102, '��λ�', 32, 3200000, 20);
insert into employee values(103, '������', 45, 5500000, 10);
insert into employee values(104, '��븮', 30, 4300000, 10);
insert into employee values(105, '�����', 25, null, 10);
