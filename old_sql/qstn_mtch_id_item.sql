create table qstn_mtch_id_item
(
    mtch_id      int          not null,
    act_id       int          not null,
    mtch_item_id int          not null,
    qstn_str     varchar(250) not null,
    points       int          not null,
    correct_ans  varchar(250) not null,
    primary key (mtch_id, act_id, mtch_item_id),
    constraint mtch_id_item_qstn_mtch_mtch_id_act_id_fk
        foreign key (mtch_id, act_id) references qstn_mtch (mtch_id, act_id)
);

INSERT INTO quiz_js.qstn_mtch_id_item (mtch_id, act_id, mtch_item_id, qstn_str, points, correct_ans) VALUES (1, 1, 1, 'Factory for building objects', 2, 'Abstract Factory');
INSERT INTO quiz_js.qstn_mtch_id_item (mtch_id, act_id, mtch_item_id, qstn_str, points, correct_ans) VALUES (1, 1, 2, 'Used for the construction of complex objects.', 2, 'Builder');
INSERT INTO quiz_js.qstn_mtch_id_item (mtch_id, act_id, mtch_item_id, qstn_str, points, correct_ans) VALUES (1, 1, 3, 'Defines an interface for creating an object.', 2, 'Factory method');
INSERT INTO quiz_js.qstn_mtch_id_item (mtch_id, act_id, mtch_item_id, qstn_str, points, correct_ans) VALUES (1, 1, 4, 'Factory for cloning new instances from a prototype.', 2, 'Prototype');
INSERT INTO quiz_js.qstn_mtch_id_item (mtch_id, act_id, mtch_item_id, qstn_str, points, correct_ans) VALUES (1, 1, 5, 'Factory for a singular (sole) instance', 2, 'Singleton');
INSERT INTO quiz_js.qstn_mtch_id_item (mtch_id, act_id, mtch_item_id, qstn_str, points, correct_ans) VALUES (1, 1, 6, 'Converts the interface of a class into another interface client expect', 2, 'Adapter');
INSERT INTO quiz_js.qstn_mtch_id_item (mtch_id, act_id, mtch_item_id, qstn_str, points, correct_ans) VALUES (1, 1, 7, 'Decouple an abstraction from its implementation', 2, 'Bridge');
INSERT INTO quiz_js.qstn_mtch_id_item (mtch_id, act_id, mtch_item_id, qstn_str, points, correct_ans) VALUES (1, 1, 8, 'Compose objects into tree structures; operations apply to the (sub)tree', 2, 'Composite');
INSERT INTO quiz_js.qstn_mtch_id_item (mtch_id, act_id, mtch_item_id, qstn_str, points, correct_ans) VALUES (1, 1, 9, 'Attach dditional responsibilities to an object dynamically', 2, 'Decorator');
INSERT INTO quiz_js.qstn_mtch_id_item (mtch_id, act_id, mtch_item_id, qstn_str, points, correct_ans) VALUES (1, 1, 10, 'Provides a unified higher-level interface for subsystems', 2, 'Facade');
INSERT INTO quiz_js.qstn_mtch_id_item (mtch_id, act_id, mtch_item_id, qstn_str, points, correct_ans) VALUES (1, 1, 11, 'Use-sharing to support lage numbers of fine-grained objects efficiently.', 2, 'Flyweight');
INSERT INTO quiz_js.qstn_mtch_id_item (mtch_id, act_id, mtch_item_id, qstn_str, points, correct_ans) VALUES (1, 1, 12, 'Provides a placeholder for an object in order to contorl access to it.', 2, 'Proxy');
INSERT INTO quiz_js.qstn_mtch_id_item (mtch_id, act_id, mtch_item_id, qstn_str, points, correct_ans) VALUES (1, 1, 13, 'Request is delegated to the responsible service provided', 2, 'Chain of Responsibility');
INSERT INTO quiz_js.qstn_mtch_id_item (mtch_id, act_id, mtch_item_id, qstn_str, points, correct_ans) VALUES (1, 1, 14, 'Request or action as an object, which can be passed, stored or activated.', 2, 'Command');
INSERT INTO quiz_js.qstn_mtch_id_item (mtch_id, act_id, mtch_item_id, qstn_str, points, correct_ans) VALUES (1, 1, 15, 'Allows sequential access to the elements of an aggregate without exposing its implementation', 2, 'Iterator');
INSERT INTO quiz_js.qstn_mtch_id_item (mtch_id, act_id, mtch_item_id, qstn_str, points, correct_ans) VALUES (1, 1, 16, 'Language interpreter for a small grammar.', 2, 'Interpreter');
INSERT INTO quiz_js.qstn_mtch_id_item (mtch_id, act_id, mtch_item_id, qstn_str, points, correct_ans) VALUES (1, 1, 17, 'Defines an object that encapsulates how a set of objects interact and cordinate.', 2, 'Mediator');
INSERT INTO quiz_js.qstn_mtch_id_item (mtch_id, act_id, mtch_item_id, qstn_str, points, correct_ans) VALUES (1, 1, 18, 'Snapshot captues and externalize an object''s internal state so that it can be passed or restored to its state at a later time.', 2, 'Memento');
INSERT INTO quiz_js.qstn_mtch_id_item (mtch_id, act_id, mtch_item_id, qstn_str, points, correct_ans) VALUES (1, 1, 19, 'Dependencies are defined to an object, so that all dependents update automatically.', 2, 'Observer');
INSERT INTO quiz_js.qstn_mtch_id_item (mtch_id, act_id, mtch_item_id, qstn_str, points, correct_ans) VALUES (1, 1, 20, 'Object whose behavior depends on its internal state', 2, 'State');
INSERT INTO quiz_js.qstn_mtch_id_item (mtch_id, act_id, mtch_item_id, qstn_str, points, correct_ans) VALUES (1, 1, 21, 'Defines a set of algorithms', 2, 'Strategy');
INSERT INTO quiz_js.qstn_mtch_id_item (mtch_id, act_id, mtch_item_id, qstn_str, points, correct_ans) VALUES (1, 1, 22, 'Lets subclasses redefine some steps of an algorithm.', 2, 'Template method');
INSERT INTO quiz_js.qstn_mtch_id_item (mtch_id, act_id, mtch_item_id, qstn_str, points, correct_ans) VALUES (1, 1, 23, 'Represent oeprations applied to elements of an object structure.', 2, 'Visitor');
