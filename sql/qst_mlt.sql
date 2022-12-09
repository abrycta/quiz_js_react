create table qst_mlt
(
    qst_id    int auto_increment
        primary key,
    act_id    int          null,
    qst_index int          null,
    qst_str   varchar(255) null,
    ans_str   varchar(255) null,
    points    int          not null,
    constraint qst_mlt_activity_id_fk
        foreign key (act_id) references activity (id)
);

INSERT INTO new_quiz.qst_mlt (qst_id, act_id, qst_index, qst_str, ans_str, points) VALUES (1, 1, 1, 'Which is not a type of prototyping?', 'Documentation', 2);
INSERT INTO new_quiz.qst_mlt (qst_id, act_id, qst_index, qst_str, ans_str, points) VALUES (2, 1, 2, 'Which is not a key design issue?', 'Interface', 2);
INSERT INTO new_quiz.qst_mlt (qst_id, act_id, qst_index, qst_str, ans_str, points) VALUES (3, 1, 3, 'Which is not a design process?', 'Integration Design', 2);
INSERT INTO new_quiz.qst_mlt (qst_id, act_id, qst_index, qst_str, ans_str, points) VALUES (4, 1, 4, 'Iterative process through which requirements are translated into a "blueprint"', 'Software Design', 2);
INSERT INTO new_quiz.qst_mlt (qst_id, act_id, qst_index, qst_str, ans_str, points) VALUES (5, 1, 5, 'Establishes a basic structural that identifies the major components of system and the communnication among these components', 'Architectural Design', 2);
INSERT INTO new_quiz.qst_mlt (qst_id, act_id, qst_index, qst_str, ans_str, points) VALUES (6, 1, 6, 'A component reads streams of data on its inputs and procudes streams of data on its outputs, delivering a complete instance of the result in a standard order.', 'Pipe and Filter', 2);
INSERT INTO new_quiz.qst_mlt (qst_id, act_id, qst_index, qst_str, ans_str, points) VALUES (7, 1, 7, 'Consists of a central data store and a set of independent components that access the data store.', 'Repository', 2);
INSERT INTO new_quiz.qst_mlt (qst_id, act_id, qst_index, qst_str, ans_str, points) VALUES (8, 1, 8, 'Organizes a system into layers', 'Layered', 2);
INSERT INTO new_quiz.qst_mlt (qst_id, act_id, qst_index, qst_str, ans_str, points) VALUES (9, 1, 9, 'Technique of linking two or more computers into a network (usually via a LAN) in order to take advantage of the parallel processing power of those computers.', 'Cluster Computing', 2);
INSERT INTO new_quiz.qst_mlt (qst_id, act_id, qst_index, qst_str, ans_str, points) VALUES (10, 1, 10, 'Makes applications easily adapt to changing technologies and integrate with other applications.', 'SOA', 2);
INSERT INTO new_quiz.qst_mlt (qst_id, act_id, qst_index, qst_str, ans_str, points) VALUES (11, 1, 11, 'Describes how the software communicates within itself', 'Interface Design', 2);
INSERT INTO new_quiz.qst_mlt (qst_id, act_id, qst_index, qst_str, ans_str, points) VALUES (12, 1, 12, 'Which is not a type of GoF Pattern?', 'Functional Patterns', 2);
