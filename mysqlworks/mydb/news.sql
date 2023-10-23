-- DB셀렉
use mydb;

-- news 테이블 생성
create table news(
	aid 		int primary key auto_increment, -- 기사 글번호
    title		varchar(100) not null,			-- 제목
    content		text not null,					-- 내용 (매우 큰 문자데이터는 'text'를 쓴다)
    create_date timestamp default now(),		-- 등록일	(날짜와 시간은 'timestamp'를 쓴다)
    img			varchar(40)						-- 이미지파일
);


insert into news(title, content, img) -- auto_increment: 일련번호, 시퀀스역할
values ('경제 뉴스', '휘발유값이 너무 올랐습니다.', 'car.jpg');
insert into news(title, content, img)
values ('정치 뉴스', '이스라엘과 팔레스타인 전쟁', 'war.jpg');
insert into news(title, content, img)
values ('스포츠 뉴스', '한국과 베트남 축구 성적 - 6 : 0', 'soccer.jpg');
insert into news(title, content, img)
values ('다음 뉴스', '로봇 서비스 오픈', 'robot.png');

select * from news ORDER BY create_date DESC;

select * from news;

-- 등록시간 순으로 정렬하시오 (최근 등록일이 위로 올라감)
select * 
from news
order by create_date desc;

-- 뉴스 내용중 '이스라엘'이 포함된 뉴스를 검색
select * from news
where content like '이스라엘%';

-- 뉴스 기사의 총 개수 검색
select count(*) from news;


drop table news;
