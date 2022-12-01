create table ans_idnt
(
    act_id       int          not null,
    stud_id      int          not null,
    idnt_qstn_id int          not null,
    ans          varchar(250) not null,
    primary key (act_id, stud_id, idnt_qstn_id),
    constraint ans_idnt_activity_act_id_fk
        foreign key (act_id) references activity (act_id),
    constraint ans_idnt_student_id_fk
        foreign key (stud_id) references student (id)
);

