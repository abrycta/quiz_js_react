create table activity
(
    id   int auto_increment
        primary key,
    name varchar(250) not null
);

INSERT INTO new_quiz.activity (id, name) VALUES (1, 'Software Engineering');
