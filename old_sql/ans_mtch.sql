create table ans_mtch
(
    mtch_id        int not null,
    act_id         int not null,
    mtch_choice_id int not null,
    stud_id        int not null,
    primary key (mtch_id, act_id, mtch_choice_id),
    constraint ans_mtch_qstn_mtch_choice_mtch_id_act_id_mtch_choice_id_fk
        foreign key (mtch_id, act_id, mtch_choice_id) references qstn_mtch_choice (mtch_id, act_id, mtch_choice_id)
);

