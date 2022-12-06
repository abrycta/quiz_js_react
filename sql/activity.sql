create table activity
(
    act_id   int auto_increment
        primary key,
    act_name varchar(250) not null
)
    charset = utf8mb4;

INSERT INTO quiz_js.activity (act_id, act_name) VALUES (1, 'software_engineering');
