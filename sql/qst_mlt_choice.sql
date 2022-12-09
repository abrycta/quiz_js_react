create table qst_mlt_choice
(
    qst_id       int          not null,
    choice_index int          not null,
    choice_str   varchar(255) null,
    primary key (qst_id, choice_index)
);

INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (1, 1, 'Wizard of oz');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (1, 2, 'Paper');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (1, 3, 'Documentation');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (1, 4, 'Mockup');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (2, 1, 'Distribution');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (2, 2, 'Error Handling');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (2, 3, 'Interface');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (2, 4, 'Persistence of Data');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (3, 1, 'Interface design');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (3, 2, 'Algorithm Design');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (3, 3, 'Data Design');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (3, 4, 'Integration Design');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (4, 1, 'Architectural Design');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (4, 2, 'Component Design');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (4, 3, 'Software Design');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (4, 4, 'Interface Design');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (5, 1, 'Architectural design');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (5, 2, 'Component design');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (5, 3, 'Software');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (5, 4, 'Interface design');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (6, 1, 'Layered');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (6, 2, 'Repository');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (6, 3, 'Pipe and filter');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (6, 4, 'Blackboard');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (7, 1, 'Layered');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (7, 2, 'Repository');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (7, 3, 'Pipe and filter');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (7, 4, 'Blackboard');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (8, 1, 'Layered');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (8, 2, 'Repository');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (8, 3, 'Pipe and filter');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (8, 4, 'Blackboard');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (9, 1, 'Cloud computing');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (9, 2, 'Grid computing');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (9, 3, 'Cluster computing');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (9, 4, 'Peer to peer');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (10, 1, 'CORBA');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (10, 2, 'RPC');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (10, 3, 'SOA');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (10, 4, 'REST');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (11, 1, 'Interface design');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (11, 2, 'Data design');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (11, 3, 'Algorithm design');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (11, 4, 'Architectural design');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (12, 1, 'Behavioral Patterns');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (12, 2, 'Structural Patterns');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (12, 3, 'Functional Patterns');
INSERT INTO new_quiz.qst_mlt_choice (qst_id, choice_index, choice_str) VALUES (12, 4, 'Creational Patterns');
