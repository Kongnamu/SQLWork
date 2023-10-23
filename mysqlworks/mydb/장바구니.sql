-- 먼저 DB를 선택함
use mydb;

create table 장바구니(
	아이템번호 int primary key auto_increment,
	아이템 varchar(20),
    가격	 int
);

insert into 장바구니(아이템, 가격) values ('두부', 2000);
insert into 장바구니(아이템, 가격) values ('계란', 6000);
insert into 장바구니(아이템, 가격) values ('콩나물', 3000);

select * from 장바구니;
drop table 장바구니;

-- 가격별로 정렬하기
select * from 장바구니 where 가격;

-- 아이템의 총개수, 가격의 평균 구하기
select count(*) 상품수,
	   max(가격) 최고가,
       min(가격) 최저가
from 장바구니;

-- 콩나물의 가격 구하기
select * from 장바구니 
where 아이템 = '콩나물';