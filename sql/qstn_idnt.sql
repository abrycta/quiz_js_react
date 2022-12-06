create table qstn_idnt
(
    act_id       int          not null,
    idnt_qstn_id int          not null,
    qstn_str     varchar(250) not null,
    correct_ans  varchar(250) not null,
    points       int          not null,
    primary key (act_id, idnt_qstn_id),
    constraint qstn_idnt_activity_act_id_fk
        foreign key (act_id) references activity (act_id)
)
    charset = utf8mb4;

INSERT INTO quiz_js.qstn_idnt (act_id, idnt_qstn_id, qstn_str, correct_ans, points) VALUES (1, 1, 'Description of what services that system is expected to provide and the constraints it must operate', 'User requirements', 3);
INSERT INTO quiz_js.qstn_idnt (act_id, idnt_qstn_id, qstn_str, correct_ans, points) VALUES (1, 2, 'Detailed information about the system functions, services and operational constraints that are to be implemented.', 'System requirements', 3);
INSERT INTO quiz_js.qstn_idnt (act_id, idnt_qstn_id, qstn_str, correct_ans, points) VALUES (1, 3, 'Statements of the services that a system should provide, how the system should react to particular input and how the system should behave in particular situations', 'Functional requirements', 3);
INSERT INTO quiz_js.qstn_idnt (act_id, idnt_qstn_id, qstn_str, correct_ans, points) VALUES (1, 4, 'Constraints (timing, performance, reliability, development process, standards) on the services or functions offered by the system; normally apply to the system as a whole.', 'Non-Functional requirements', 3);
INSERT INTO quiz_js.qstn_idnt (act_id, idnt_qstn_id, qstn_str, correct_ans, points) VALUES (1, 5, 'Creation of a simple working model of system to show users what requirements may look like when implemented.', 'Throwaway prototyping', 3);
INSERT INTO quiz_js.qstn_idnt (act_id, idnt_qstn_id, qstn_str, correct_ans, points) VALUES (1, 6, 'Its main goal is to build a very robust prototype in a structured manner and constantly refine it.', 'Evolutionary prototyping', 3);
INSERT INTO quiz_js.qstn_idnt (act_id, idnt_qstn_id, qstn_str, correct_ans, points) VALUES (1, 7, 'Way of structuring requirements to represent perspectives of different stakeholders.', 'Viewpoints', 3);
INSERT INTO quiz_js.qstn_idnt (act_id, idnt_qstn_id, qstn_str, correct_ans, points) VALUES (1, 8, 'Graphical representations that describe the business process and the system to be developed.', 'Analysis models', 3);
INSERT INTO quiz_js.qstn_idnt (act_id, idnt_qstn_id, qstn_str, correct_ans, points) VALUES (1, 9, 'Official statement of system requirements.', 'Software Requirements Specification', 3);
INSERT INTO quiz_js.qstn_idnt (act_id, idnt_qstn_id, qstn_str, correct_ans, points) VALUES (1, 10, 'Defines a generic structure for a requirements document', 'Institute of Electrical and Electronics Engineers', 3);
INSERT INTO quiz_js.qstn_idnt (act_id, idnt_qstn_id, qstn_str, correct_ans, points) VALUES (1, 11, 'Assessment of the quality of the requirements', 'Requirements Validation', 3);
INSERT INTO quiz_js.qstn_idnt (act_id, idnt_qstn_id, qstn_str, correct_ans, points) VALUES (1, 12, 'Process of identifying, understanding, tracking and controlling changes to system requirements.', 'Requirements Management', 3);
INSERT INTO quiz_js.qstn_idnt (act_id, idnt_qstn_id, qstn_str, correct_ans, points) VALUES (1, 13, 'Stakeholders who influence the requiements', 'Indirect viewpoint', 3);
INSERT INTO quiz_js.qstn_idnt (act_id, idnt_qstn_id, qstn_str, correct_ans, points) VALUES (1, 14, 'People or systems that interact directly with the system', 'Interactor viewpoint', 3);
INSERT INTO quiz_js.qstn_idnt (act_id, idnt_qstn_id, qstn_str, correct_ans, points) VALUES (1, 15, 'Domain characteristics and constraints that influence the requirements', 'Domain viewpoint', 3);
