create table qstn_mlt
(
    act_id         int          not null,
    mlt_qstn_id    int          not null,
    mlt_qstn_str   varchar(250) not null,
    correct_choice int          not null,
    points         int          not null,
    primary key (act_id, mlt_qstn_id),
    constraint qstn_mlt_activity_act_id_fk
        foreign key (act_id) references activity (act_id)
);

INSERT INTO quiz_js.qstn_mlt (act_id, mlt_qstn_id, mlt_qstn_str, correct_choice, points) VALUES (1, 1, 'Which is not a type of prototyping?', 3, 2);
INSERT INTO quiz_js.qstn_mlt (act_id, mlt_qstn_id, mlt_qstn_str, correct_choice, points) VALUES (1, 2, 'Which is not a key design issue?', 3, 2);
INSERT INTO quiz_js.qstn_mlt (act_id, mlt_qstn_id, mlt_qstn_str, correct_choice, points) VALUES (1, 3, 'Which is not a design process?', 4, 2);
INSERT INTO quiz_js.qstn_mlt (act_id, mlt_qstn_id, mlt_qstn_str, correct_choice, points) VALUES (1, 4, 'Iterative process through which requirements are translated into a "blueprint"', 3, 2);
INSERT INTO quiz_js.qstn_mlt (act_id, mlt_qstn_id, mlt_qstn_str, correct_choice, points) VALUES (1, 5, 'Establishes a basic structural that identifies the major components of system and the communnication among these components', 1, 2);
INSERT INTO quiz_js.qstn_mlt (act_id, mlt_qstn_id, mlt_qstn_str, correct_choice, points) VALUES (1, 6, 'A component reads streams of data on its inputs and procudes streams of data on its outputs, delivering a complete instance of the result in a standard order.', 3, 2);
INSERT INTO quiz_js.qstn_mlt (act_id, mlt_qstn_id, mlt_qstn_str, correct_choice, points) VALUES (1, 7, 'Consists of a central data store and a set of independent components that access the data store.', 2, 2);
INSERT INTO quiz_js.qstn_mlt (act_id, mlt_qstn_id, mlt_qstn_str, correct_choice, points) VALUES (1, 8, 'Organizes a system into layers', 1, 2);
INSERT INTO quiz_js.qstn_mlt (act_id, mlt_qstn_id, mlt_qstn_str, correct_choice, points) VALUES (1, 9, 'Technique of linking two or more computers into a network (usually via a LAN) in order to take advantage of the parallel processing power of those computers.', 3, 2);
INSERT INTO quiz_js.qstn_mlt (act_id, mlt_qstn_id, mlt_qstn_str, correct_choice, points) VALUES (1, 10, 'Makes applications easily adapt to changing technologies and integrate with other applications.', 3, 2);
INSERT INTO quiz_js.qstn_mlt (act_id, mlt_qstn_id, mlt_qstn_str, correct_choice, points) VALUES (1, 11, 'Describes how the software communicates within itself', 1, 2);
INSERT INTO quiz_js.qstn_mlt (act_id, mlt_qstn_id, mlt_qstn_str, correct_choice, points) VALUES (1, 12, 'Which is not a type of GoF Pattern?', 3, 2);
