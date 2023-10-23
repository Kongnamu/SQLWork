-- 제2 정규화 (음료, 주문테이블)

create table drink(
	drink_code	varchar(3) primary key, -- 음료 코드
    drink_name	varchar(20) not null 	-- 음료 이름
);

create table cafe_order(
	order_no int primary key auto_increment, -- 주문 번호
    drink_code varchar(3) not null,			 -- 음료 코드
    order_cnt int not null,					 -- 주문 수량
    foreign key(drink_code) references drink(drink_code) -- 외래키
    on delete cascade -- 부모키의 데이터가 삭제되면 자식 데이터도 삭제됨
);

-- drink 자료 추가
insert into drink values ('A01', '아메리카노');
insert into drink values ('B01', '카페라떼');
insert into drink values ('C01', '허브차');

select * from drink;

-- cafe_order 자료 추가
insert into cafe_order(drink_code, order_cnt)
values ('A01', 3);
insert into cafe_order(drink_code, order_cnt)
values ('B01', 1);
insert into cafe_order(drink_code, order_cnt)
values ('A01', 2);

-- 음료 테이블의 음료코드 'B01' 삭제
-- 주문 테이블위 'b01'도 자동 삭제됨
delete from drink where drink_code = 'B01';

-- 주문 테이블에 음료이름을 포함하여 출력
-- 동등 조인
select a.drink_name,
	   a.drink_code,
	   b.order_no,
       b.order_cnt
from drink a, cafe_order b
where a.drink_code = b.drink_code;

-- 내부 조인
select a.drink_name,
	   a.drink_code,
	   b.order_no,
       b.order_cnt
from drink a join cafe_order b
on a.drink_code = b.drink_code;

-- 외부 조인
-- 주문에 관계없이 주문 정보와 음료 모두 출력
select a.drink_name,
	   a.drink_code,
	   b.order_no,
       b.order_cnt
from drink a left join cafe_order b
on a.drink_code = b.drink_code;

-- 주문이 없는 상품 검색
select a.drink_name,
	   a.drink_code,
	   b.order_no,
       b.order_cnt
from drink a left join cafe_order b
on a.drink_code = b.drink_code
where b.order_no is null;

DROP TABLE CAFE_ORDER;

select * from drink;
select * from cafe_order;


