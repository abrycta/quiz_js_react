create table qstn_mlt
(
    act_id         int          not null,
    mlt_qstn_id    int          not null,
    mlt_qstn_str   varchar(250) not null,
    correct_choice int          not null,
    points         int          not null,
    primary key (act_id, mlt_qstn_id),
    constraint qstn_mlt_activity_act_id_fk
        foreign key (act_id) references activity (act_id)
);

