create table board2 (
   num number primary key, -- seq
   writer varchar2(20) not null, --작성자id
   title varchar2(50) not null, --제목
   content varchar2(500) not null, --내용
   readcount number default 0, --조회수
   regdate date not null --날짜
);

create sequence board2_seq 
increment by 1 start with 1 nocache;


select * from board2 order by num desc;

select rownum rn from board2 where rn between startRow and endRow;

select * from board2;