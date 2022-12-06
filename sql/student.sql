create table student
(
    id         int auto_increment
        primary key,
    first_name varchar(250) not null,
    last_name  varchar(250) not null,
    password   varchar(250) not null
)
    charset = utf8mb4;

INSERT INTO quiz_js.student (id, first_name, last_name, password) VALUES (1, 'Mickey', 'Mouse', 'password');
INSERT INTO quiz_js.student (id, first_name, last_name, password) VALUES (2, 'Jerome', 'Bustarde', 'jeromebustarde');
