create table score
(
    act_id   int not null,
    stud_id  int not null,
    mlt_scr  int not null,
    id_scr   int not null,
    mtch_scr int not null,
    primary key (act_id, stud_id, mlt_scr, id_scr, mtch_scr),
    constraint score_activity_act_id_fk
        foreign key (act_id) references activity (act_id),
    constraint score_student_id_fk
        foreign key (stud_id) references student (id)
);

