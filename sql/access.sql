create table access
(
    stud_id    int      not null
        primary key,
    act_id     int      not null,
    date_open  datetime null,
    date_taken datetime null,
    constraint access_activity_act_id_fk
        foreign key (act_id) references activity (act_id),
    constraint access_user_id_fk
        foreign key (stud_id) references student (id)
)
    charset = utf8mb4;

