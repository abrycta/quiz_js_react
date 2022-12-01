create table qstn_mtch
(
    act_id         int          not null,
    mtch_qstn_id   int          not null,
    mtch_qstn_str  varchar(250) not null,
    correct_choice int          null,
    points         int          not null,
    primary key (act_id, mtch_qstn_id),
    constraint qstn_mtch_activity_act_id_fk
        foreign key (act_id) references activity (act_id)
);

