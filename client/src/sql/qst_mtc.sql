create table qst_mtc
(
    mtc_id int auto_increment
        primary key,
    act_id int not null,
    constraint qst_mtc_activity_id_fk
        foreign key (act_id) references activity (id)
);

INSERT INTO new_quiz.qst_mtc (mtc_id, act_id) VALUES (1, 1);
