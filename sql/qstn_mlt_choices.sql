create table qstn_mlt_choices
(
    act_id      int          not null,
    mlt_qstn_id int          not null,
    choice_num  int          not null,
    choice_str  varchar(250) not null,
    primary key (act_id, mlt_qstn_id, choice_num),
    constraint qstn_mlt_choices_qstn_mlt_act_id_mlt_qstn_id_fk
        foreign key (act_id, mlt_qstn_id) references qstn_mlt (act_id, mlt_qstn_id)
);

INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 1, 1, 'Wizard of oz');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 1, 2, 'Paper');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 1, 3, 'Documentation');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 1, 4, 'Mockup');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 2, 1, 'Distribution');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 2, 2, 'Error Handling');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 2, 3, 'Interface');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 2, 4, 'Persistence of Data');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 3, 1, 'Interface design');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 3, 2, 'Algorithm Design');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 3, 3, 'Data Design');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 3, 4, 'Integration Design');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 4, 1, 'Architectural Design');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 4, 2, 'Component Design');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 4, 3, 'Software Design');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 4, 4, 'Interface Design');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 5, 1, 'Architectural design');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 5, 2, 'Component design');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 5, 3, 'Software');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 5, 4, 'Interface design');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 6, 1, 'Layered');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 6, 2, 'Repository');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 6, 3, 'Pipe and filter');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 6, 4, 'Blackboard');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 7, 1, 'Layered');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 7, 2, 'Repository');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 7, 3, 'Pipe and filter');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 7, 4, 'Blackboard');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 8, 1, 'Layered');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 8, 2, 'Repository');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 8, 3, 'Pipe and filter');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 8, 4, 'Blackboard');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 9, 1, 'Cloud computing');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 9, 2, 'Grid computing');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 9, 3, 'Cluster computing');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 9, 4, 'Peer to peer');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 10, 1, 'CORBA');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 10, 2, 'RPC');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 10, 3, 'SOA');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 10, 4, 'REST');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 11, 1, 'Interface design');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 11, 2, 'Data design');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 11, 3, 'Algorithm design');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 11, 4, 'Architectural design');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 12, 1, 'Behavioral Patterns');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 12, 2, 'Structural Patterns');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 12, 3, 'Functional Patterns');
INSERT INTO quiz_js.qstn_mlt_choices (act_id, mlt_qstn_id, choice_num, choice_str) VALUES (1, 12, 4, 'Creational Patterns');
