create table ans_mtc
(
    ans_id      int auto_increment
        primary key,
    mtc_id      int not null,
    left_index  int not null,
    right_index int not null,
    stud_id     int not null,
    constraint ans_mtc_qst_mtc_mtc_id_fk
        foreign key (mtc_id) references qst_mtc (mtc_id),
    constraint ans_mtc_student_id_fk
        foreign key (stud_id) references student (id)
);

