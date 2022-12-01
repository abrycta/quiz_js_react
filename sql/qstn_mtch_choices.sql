create table qstn_mtch_choices
(
    act_id       int          not null,
    mtch_qstn_id int          not null,
    choice_num   int          not null,
    choice_str   varchar(250) not null,
    primary key (act_id, mtch_qstn_id, choice_num),
    constraint qstn_mtch_choices_qstn_mtch_act_id_mtch_qstn_id_fk
        foreign key (act_id, mtch_qstn_id) references qstn_mtch (act_id, mtch_qstn_id)
);

