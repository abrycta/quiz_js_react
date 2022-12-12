create table qst_mtc_right_col
(
    mtc_id      int          not null,
    right_index int          not null,
    ans_str     varchar(255) not null,
    primary key (mtc_id, right_index),
    constraint table_name_qst_mtc_mtc_id_fk
        foreign key (mtc_id) references qst_mtc (mtc_id)
);

INSERT INTO new_quiz.qst_mtc_right_col (mtc_id, right_index, ans_str) VALUES (1, 1, 'Abstract Factory');
INSERT INTO new_quiz.qst_mtc_right_col (mtc_id, right_index, ans_str) VALUES (1, 2, 'Builder');
INSERT INTO new_quiz.qst_mtc_right_col (mtc_id, right_index, ans_str) VALUES (1, 3, 'Factory Method');
INSERT INTO new_quiz.qst_mtc_right_col (mtc_id, right_index, ans_str) VALUES (1, 4, 'Prototype');
INSERT INTO new_quiz.qst_mtc_right_col (mtc_id, right_index, ans_str) VALUES (1, 5, 'Singleton');
INSERT INTO new_quiz.qst_mtc_right_col (mtc_id, right_index, ans_str) VALUES (1, 6, 'Adapter');
INSERT INTO new_quiz.qst_mtc_right_col (mtc_id, right_index, ans_str) VALUES (1, 7, 'Bridge');
INSERT INTO new_quiz.qst_mtc_right_col (mtc_id, right_index, ans_str) VALUES (1, 8, 'Composite');
INSERT INTO new_quiz.qst_mtc_right_col (mtc_id, right_index, ans_str) VALUES (1, 9, 'Decorator');
INSERT INTO new_quiz.qst_mtc_right_col (mtc_id, right_index, ans_str) VALUES (1, 10, 'Facade');
INSERT INTO new_quiz.qst_mtc_right_col (mtc_id, right_index, ans_str) VALUES (1, 11, 'Flyweight');
INSERT INTO new_quiz.qst_mtc_right_col (mtc_id, right_index, ans_str) VALUES (1, 12, 'Proxy');
INSERT INTO new_quiz.qst_mtc_right_col (mtc_id, right_index, ans_str) VALUES (1, 13, 'Chain of Responsibility');
INSERT INTO new_quiz.qst_mtc_right_col (mtc_id, right_index, ans_str) VALUES (1, 14, 'Command');
INSERT INTO new_quiz.qst_mtc_right_col (mtc_id, right_index, ans_str) VALUES (1, 15, 'Iterator');
INSERT INTO new_quiz.qst_mtc_right_col (mtc_id, right_index, ans_str) VALUES (1, 16, 'Interpreter');
INSERT INTO new_quiz.qst_mtc_right_col (mtc_id, right_index, ans_str) VALUES (1, 17, 'Mediator');
INSERT INTO new_quiz.qst_mtc_right_col (mtc_id, right_index, ans_str) VALUES (1, 18, 'Memento');
INSERT INTO new_quiz.qst_mtc_right_col (mtc_id, right_index, ans_str) VALUES (1, 19, 'Observer');
INSERT INTO new_quiz.qst_mtc_right_col (mtc_id, right_index, ans_str) VALUES (1, 20, 'State');
INSERT INTO new_quiz.qst_mtc_right_col (mtc_id, right_index, ans_str) VALUES (1, 21, 'Strategy');
INSERT INTO new_quiz.qst_mtc_right_col (mtc_id, right_index, ans_str) VALUES (1, 22, 'Template Method');
INSERT INTO new_quiz.qst_mtc_right_col (mtc_id, right_index, ans_str) VALUES (1, 23, 'Visitor');
