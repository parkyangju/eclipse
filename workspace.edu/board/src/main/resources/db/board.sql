CREATE TABLE tb_user (
   userid VARCHAR(30) NOT NULL, -- 아이디
   username VARCHAR(50) NOT NULL, -- 이름
   password VARCHAR(20) NOT NULL, -- 비밀번호
   use_yn VARCHAR(5) NOT NULL, -- 사용여부
   PRIMARY KEY (userid)
);


insert into tb_user values('admin','관리자','manager', 'Y');
insert into tb_user values('guest','사용자','guest', 'Y');
insert into tb_user values('guest2','사용자2','guest2', 'Y');

CREATE TABLE tb_board (
   idx INT NOT NULL AUTO_INCREMENT, -- 자동증가(게시물아이디)
   title VARCHAR(100) NOT NULL, -- 제목
   contents VARCHAR(4000) NOT NULL, -- 내용
   count INT, -- 조회수
   writer VARCHAR(30) NOT NULL, -- 등록자
   indate DATETIME DEFAULT NOW() NOT NULL, -- 등록일
   PRIMARY KEY (idx)
);

insert into tb_board(title, contents, count, writer)
values('전자정부 표준프레임워크','전자정부 표준프레임워크',0,'개발자');

select * from tb_board;

CREATE TABLE tb_reply (
   idx INT NOT NULL, -- 게시물아이디
   seq INT NOT NULL, -- 순번
   reply VARCHAR(1000) NOT NULL,  -- 댓글
   writer VARCHAR(50) NOT NULL, -- 작성자
   indate DATETIME DEFAULT NOW() NOT NULL,  -- 작성일
   PRIMARY KEY (idx,seq)
);

CREATE TABLE tb_attach (
   idx INT NOT NULL, -- 게시물아이디
   seq INT NOT NULL, -- 순번
   filename VARCHAR(256), -- 파일명
   writer VARCHAR(50) NOT NULL, -- 등록자
   indate DATETIME DEFAULT NOW() NOT NULL, -- 등록일
   PRIMARY KEY (idx,seq)
);