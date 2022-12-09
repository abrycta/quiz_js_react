create table qst_mtc_left_col
(
    mtc_id     int          not null,
    left_index int          not null,
    qst_str    varchar(255) not null,
    ans        varchar(255) not null,
    points     int          not null,
    primary key (mtc_id, left_index),
    constraint qst_mtc_left_col_qst_mtc_mtc_id_fk
        foreign key (mtc_id) references qst_mtc (mtc_id)
);

INSERT INTO new_quiz.qst_mtc_left_col (mtc_id, left_index, qst_str, ans, points) VALUES (1, 1, 'Factory for building objects', 'Abstract Factory', 2);
INSERT INTO new_quiz.qst_mtc_left_col (mtc_id, left_index, qst_str, ans, points) VALUES (1, 2, 'Used for the construction of complex objects.', 'Builder', 2);
INSERT INTO new_quiz.qst_mtc_left_col (mtc_id, left_index, qst_str, ans, points) VALUES (1, 3, 'Defines an interface for creating an object.', 'Factory method', 2);
INSERT INTO new_quiz.qst_mtc_left_col (mtc_id, left_index, qst_str, ans, points) VALUES (1, 4, 'Factory for cloning new instances from a prototype.', 'Prototype', 2);
INSERT INTO new_quiz.qst_mtc_left_col (mtc_id, left_index, qst_str, ans, points) VALUES (1, 5, 'Factory for a singular (sole) instance', 'Singleton', 2);
INSERT INTO new_quiz.qst_mtc_left_col (mtc_id, left_index, qst_str, ans, points) VALUES (1, 6, 'Converts the interface of a class into another interface client expect', 'Adapter', 2);
INSERT INTO new_quiz.qst_mtc_left_col (mtc_id, left_index, qst_str, ans, points) VALUES (1, 7, 'Decouple an abstraction from its implementation', 'Bridge', 2);
INSERT INTO new_quiz.qst_mtc_left_col (mtc_id, left_index, qst_str, ans, points) VALUES (1, 8, 'Compose objects into tree structures; operations apply to the (sub)tree', 'Composite', 2);
INSERT INTO new_quiz.qst_mtc_left_col (mtc_id, left_index, qst_str, ans, points) VALUES (1, 9, 'Attach dditional responsibilities to an object dynamically', 'Decorator', 2);
INSERT INTO new_quiz.qst_mtc_left_col (mtc_id, left_index, qst_str, ans, points) VALUES (1, 10, 'Provides a unified higher-level interface for subsystems', 'Facade', 2);
INSERT INTO new_quiz.qst_mtc_left_col (mtc_id, left_index, qst_str, ans, points) VALUES (1, 11, 'Use-sharing to support lage numbers of fine-grained objects efficiently.', 'Flyweight', 2);
INSERT INTO new_quiz.qst_mtc_left_col (mtc_id, left_index, qst_str, ans, points) VALUES (1, 12, 'Provides a placeholder for an object in order to contorl access to it.', 'Proxy', 2);
INSERT INTO new_quiz.qst_mtc_left_col (mtc_id, left_index, qst_str, ans, points) VALUES (1, 13, 'Request is delegated to the responsible service provided', 'Chain of Responsibility', 2);
INSERT INTO new_quiz.qst_mtc_left_col (mtc_id, left_index, qst_str, ans, points) VALUES (1, 14, 'Request or action as an object, which can be passed, stored or activated.', 'Command', 2);
INSERT INTO new_quiz.qst_mtc_left_col (mtc_id, left_index, qst_str, ans, points) VALUES (1, 15, 'Allows sequential access to the elements of an aggregate without exposing its implementation', 'Iterator', 2);
INSERT INTO new_quiz.qst_mtc_left_col (mtc_id, left_index, qst_str, ans, points) VALUES (1, 16, 'Language interpreter for a small grammar.', 'Interpreter', 2);
INSERT INTO new_quiz.qst_mtc_left_col (mtc_id, left_index, qst_str, ans, points) VALUES (1, 17, 'Defines an object that encapsulates how a set of objects interact and cordinate.', 'Mediator', 2);
INSERT INTO new_quiz.qst_mtc_left_col (mtc_id, left_index, qst_str, ans, points) VALUES (1, 18, 'Snapshot captues and externalize an object''s internal state so that it can be passed or restored to its state at a later time.', 'Memento', 2);
INSERT INTO new_quiz.qst_mtc_left_col (mtc_id, left_index, qst_str, ans, points) VALUES (1, 19, 'Dependencies are defined to an object, so that all dependents update automatically.', 'Observer', 2);
INSERT INTO new_quiz.qst_mtc_left_col (mtc_id, left_index, qst_str, ans, points) VALUES (1, 20, 'Object whose behavior depends on its internal state', 'State', 2);
INSERT INTO new_quiz.qst_mtc_left_col (mtc_id, left_index, qst_str, ans, points) VALUES (1, 21, 'Defines a set of algorithms', 'Strategy', 2);
INSERT INTO new_quiz.qst_mtc_left_col (mtc_id, left_index, qst_str, ans, points) VALUES (1, 22, 'Lets subclasses redefine some steps of an algorithm.', 'Template method', 2);
INSERT INTO new_quiz.qst_mtc_left_col (mtc_id, left_index, qst_str, ans, points) VALUES (1, 23, 'Represent oeprations applied to elements of an object structure.', 'Visitor', 2);
