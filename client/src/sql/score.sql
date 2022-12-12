create table score
(
    score_id  int auto_increment
        primary key,
    act_id    int not null,
    stud_id   int not null,
    idn_score int null,
    mlt_score int null,
    mtc_score int null
);

