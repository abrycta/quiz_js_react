create table student
(
    id       int auto_increment
        primary key,
    name     varchar(250) not null,
    password varchar(250) not null
)
    charset = utf8mb4;

