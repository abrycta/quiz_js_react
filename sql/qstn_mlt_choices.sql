create table qstn_mlt_choices
(
    act_id      int          not null,
    mlt_qstn_id int          not null,
    choice_num  int          not null,
    choice_str  varchar(250) not null,
    primary key (act_id, mlt_qstn_id, choice_num),
    constraint qstn_mlt_choices_qstn_mlt_act_id_mlt_qstn_id_fk
        foreign key (act_id, mlt_qstn_id) references qstn_mlt (act_id, mlt_qstn_id)
);

