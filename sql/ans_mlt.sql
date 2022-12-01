create table ans_mlt
(
    act_id      int not null,
    mlt_qstn_id int not null,
    stud_id     int not null,
    stud_choice int null,
    primary key (act_id, mlt_qstn_id, stud_id),
    constraint ans_mlt_qstn_mlt_act_id_mlt_qstn_id_fk
        foreign key (act_id, mlt_qstn_id) references qstn_mlt (act_id, mlt_qstn_id),
    constraint ans_mlt_student_id_fk
        foreign key (stud_id) references student (id)
);

