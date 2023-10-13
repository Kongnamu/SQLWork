--자바와 연동할 회원 테이블 생성
create table users(
    userid      varchar2(20) primary key,
    username    varchar2(30) not null,
    userpassword varchar2(20) not null,
    userage       number(3) not null,
    useremail   varchar2(50) not null
  
    );
    
    --회원 추가
    insert into users
    values ('today', '고오늘' , '12345' , 25 ,'today@korea.kr');
    
    SELECT* from users;
    
    
    SELECT* from users where userid = 'today';
       
    commit;
    drop table users;