-- dangerous line below
DROP DATABASE IF EXISTS userinfo;
CREATE DATABASE userinfo;
USE userinfo;
create table `user`
(
username VARCHAR(30) not null,
password VARCHAR(30) not null,
address VARCHAR(30) not null,
primary key (username)
);

create table ORDER_HISTORY
(
USER_NAME VARCHAR(30) not null,
RESTAURANT VARCHAR(30) not null,
SEARCHTIME bigint not null,
FOREIGN KEY (USER_NAME) REFERENCES `user`(username)
);