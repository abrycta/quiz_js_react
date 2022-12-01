create table ans_mtch
(
    act_id       int not null,
    mtch_qstn_id int not null,
    stud_id      int not null,
    stud_choice  int not null,
    primary key (act_id, mtch_qstn_id, stud_id),
    constraint ans_mtch_qstn_mtch_act_id_mtch_qstn_id_fk
        foreign key (act_id, mtch_qstn_id) references qstn_mtch (act_id, mtch_qstn_id),
    constraint ans_mtch_student_id_fk
        foreign key (stud_id) references student (id)
);

