create table access
(
    access_id  int auto_increment
        primary key,
    stud_id    int      not null,
    act_id     int      not null,
    date_open  datetime null,
    date_taken datetime null,
    constraint access_activity_id_fk
        foreign key (act_id) references activity (id),
    constraint access_student_id_fk
        foreign key (stud_id) references student (id)
);

