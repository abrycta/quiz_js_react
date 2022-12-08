create table qstn_mtch
(
    mtch_id int not null,
    act_id  int not null,
    primary key (mtch_id, act_id),
    constraint qstn_mtch_activity_act_id_fk
        foreign key (act_id) references activity (act_id)
);

INSERT INTO quiz_js.qstn_mtch (mtch_id, act_id) VALUES (1, 1);
