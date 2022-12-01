create table qstn_idnt
(
    act_id       int          not null,
    idnt_qstn_id int          not null,
    qstn_str     varchar(250) not null,
    correct_ans  int          null,
    points       int          not null,
    primary key (act_id, idnt_qstn_id),
    constraint qstn_idnt_activity_act_id_fk
        foreign key (act_id) references activity (act_id)
)
    charset = utf8mb4;

