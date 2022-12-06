create table qstn_mtch_choice
(
    mtch_id         int          not null,
    act_id          int          not null,
    mtch_choice_id  int          not null,
    mtch_choice_str varchar(250) not null,
    primary key (mtch_id, act_id, mtch_choice_id),
    constraint qstn_mtch_choice_qstn_mtch_mtch_id_act_id_fk
        foreign key (mtch_id, act_id) references qstn_mtch (mtch_id, act_id)
);

INSERT INTO quiz_js.qstn_mtch_choice (mtch_id, act_id, mtch_choice_id, mtch_choice_str) VALUES (1, 1, 1, 'Abstract Factory');
INSERT INTO quiz_js.qstn_mtch_choice (mtch_id, act_id, mtch_choice_id, mtch_choice_str) VALUES (1, 1, 2, 'Builder');
INSERT INTO quiz_js.qstn_mtch_choice (mtch_id, act_id, mtch_choice_id, mtch_choice_str) VALUES (1, 1, 3, 'Factory Method');
INSERT INTO quiz_js.qstn_mtch_choice (mtch_id, act_id, mtch_choice_id, mtch_choice_str) VALUES (1, 1, 4, 'Prototype');
INSERT INTO quiz_js.qstn_mtch_choice (mtch_id, act_id, mtch_choice_id, mtch_choice_str) VALUES (1, 1, 5, 'Singleton');
INSERT INTO quiz_js.qstn_mtch_choice (mtch_id, act_id, mtch_choice_id, mtch_choice_str) VALUES (1, 1, 6, 'Adapter');
INSERT INTO quiz_js.qstn_mtch_choice (mtch_id, act_id, mtch_choice_id, mtch_choice_str) VALUES (1, 1, 7, 'Bridge');
INSERT INTO quiz_js.qstn_mtch_choice (mtch_id, act_id, mtch_choice_id, mtch_choice_str) VALUES (1, 1, 8, 'Composite');
INSERT INTO quiz_js.qstn_mtch_choice (mtch_id, act_id, mtch_choice_id, mtch_choice_str) VALUES (1, 1, 9, 'Decorator');
INSERT INTO quiz_js.qstn_mtch_choice (mtch_id, act_id, mtch_choice_id, mtch_choice_str) VALUES (1, 1, 10, 'Facade');
INSERT INTO quiz_js.qstn_mtch_choice (mtch_id, act_id, mtch_choice_id, mtch_choice_str) VALUES (1, 1, 11, 'Flyweight');
INSERT INTO quiz_js.qstn_mtch_choice (mtch_id, act_id, mtch_choice_id, mtch_choice_str) VALUES (1, 1, 12, 'Proxy');
INSERT INTO quiz_js.qstn_mtch_choice (mtch_id, act_id, mtch_choice_id, mtch_choice_str) VALUES (1, 1, 13, 'Chain of Responsibility');
INSERT INTO quiz_js.qstn_mtch_choice (mtch_id, act_id, mtch_choice_id, mtch_choice_str) VALUES (1, 1, 14, 'Command');
INSERT INTO quiz_js.qstn_mtch_choice (mtch_id, act_id, mtch_choice_id, mtch_choice_str) VALUES (1, 1, 15, 'Iterator');
INSERT INTO quiz_js.qstn_mtch_choice (mtch_id, act_id, mtch_choice_id, mtch_choice_str) VALUES (1, 1, 16, 'Interpreter');
INSERT INTO quiz_js.qstn_mtch_choice (mtch_id, act_id, mtch_choice_id, mtch_choice_str) VALUES (1, 1, 17, 'Mediator');
INSERT INTO quiz_js.qstn_mtch_choice (mtch_id, act_id, mtch_choice_id, mtch_choice_str) VALUES (1, 1, 18, 'Memento');
INSERT INTO quiz_js.qstn_mtch_choice (mtch_id, act_id, mtch_choice_id, mtch_choice_str) VALUES (1, 1, 19, 'Observer');
INSERT INTO quiz_js.qstn_mtch_choice (mtch_id, act_id, mtch_choice_id, mtch_choice_str) VALUES (1, 1, 20, 'State');
INSERT INTO quiz_js.qstn_mtch_choice (mtch_id, act_id, mtch_choice_id, mtch_choice_str) VALUES (1, 1, 21, 'Strategy');
INSERT INTO quiz_js.qstn_mtch_choice (mtch_id, act_id, mtch_choice_id, mtch_choice_str) VALUES (1, 1, 22, 'Template Method');
INSERT INTO quiz_js.qstn_mtch_choice (mtch_id, act_id, mtch_choice_id, mtch_choice_str) VALUES (1, 1, 23, 'Visitor');
