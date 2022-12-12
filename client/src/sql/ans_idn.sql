create table ans_idn
(
    ans_id  int auto_increment
        primary key,
    qst_id  int null,
    stud_id int not null,
    ans_str varchar(255) not null,
    constraint ans_idn_qst_idn_qst_id_fk
        foreign key (qst_id) references qst_idn (qst_id),
    constraint ans_idn_student_id_fk
        foreign key (stud_id) references student (id)
);

