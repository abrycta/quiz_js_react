create table student
(
    id         int auto_increment
        primary key,
    first_name varchar(255) not null,
    last_name  varchar(255) not null
);

INSERT INTO new_quiz.student (id, first_name, last_name) VALUES (1, 'Kurt Matthew', 'Nudo');
INSERT INTO new_quiz.student (id, first_name, last_name) VALUES (2, 'Charles', 'Ancheta');
INSERT INTO new_quiz.student (id, first_name, last_name) VALUES (3, 'Jerome', 'Bustarde');
