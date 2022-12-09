create table ans_mlt
(
    qst_id       int auto_increment,
    stud_id      int not null,
    choice_index int null,
    primary key (qst_id, stud_id),
    constraint qst_id
        unique (qst_id)
);

