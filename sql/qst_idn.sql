create table qst_idn
(
    qst_id    int auto_increment
        primary key,
    act_id    int          not null,
    qst_index int          not null,
    qst_str   varchar(255) not null,
    ans_str   varchar(255) not null,
    points    int          not null
);

INSERT INTO new_quiz.qst_idn (qst_id, act_id, qst_index, qst_str, ans_str, points) VALUES (1, 1, 1, 'Description of what services that system is expected to provide and the constraints it must operate', 'User requirements', 3);
INSERT INTO new_quiz.qst_idn (qst_id, act_id, qst_index, qst_str, ans_str, points) VALUES (2, 1, 2, 'Detailed information about the system functions, services and operational constraints that are to be implemented.', 'System requirements', 3);
INSERT INTO new_quiz.qst_idn (qst_id, act_id, qst_index, qst_str, ans_str, points) VALUES (3, 1, 3, 'Statements of the services that a system should provide, how the system should react to particular input and how the system should behave in particular situations', 'Functional requirements', 3);
INSERT INTO new_quiz.qst_idn (qst_id, act_id, qst_index, qst_str, ans_str, points) VALUES (4, 1, 4, 'Constraints (timing, performance, reliability, development process, standards) on the services or functions offered by the system; normally apply to the system as a whole.', 'Non-Functional requirements', 3);
INSERT INTO new_quiz.qst_idn (qst_id, act_id, qst_index, qst_str, ans_str, points) VALUES (5, 1, 5, 'Creation of a simple working model of system to show users what requirements may look like when implemented.', 'Throwaway prototyping', 3);
INSERT INTO new_quiz.qst_idn (qst_id, act_id, qst_index, qst_str, ans_str, points) VALUES (6, 1, 6, 'Its main goal is to build a very robust prototype in a structured manner and constantly refine it.', 'Evolutionary prototyping', 3);
INSERT INTO new_quiz.qst_idn (qst_id, act_id, qst_index, qst_str, ans_str, points) VALUES (7, 1, 7, 'Way of structuring requirements to represent perspectives of different stakeholders.', 'Viewpoints', 3);
INSERT INTO new_quiz.qst_idn (qst_id, act_id, qst_index, qst_str, ans_str, points) VALUES (8, 1, 8, 'Graphical representations that describe the business process and the system to be developed.', 'Analysis models', 3);
INSERT INTO new_quiz.qst_idn (qst_id, act_id, qst_index, qst_str, ans_str, points) VALUES (9, 1, 9, 'Official statement of system requirements.', 'Software Requirements Specification', 3);
INSERT INTO new_quiz.qst_idn (qst_id, act_id, qst_index, qst_str, ans_str, points) VALUES (10, 1, 10, 'Defines a generic structure for a requirements document', 'Institute of Electrical and Electronics Engineers', 3);
INSERT INTO new_quiz.qst_idn (qst_id, act_id, qst_index, qst_str, ans_str, points) VALUES (11, 1, 11, 'Assessment of the quality of the requirements', 'Requirements Validation', 3);
INSERT INTO new_quiz.qst_idn (qst_id, act_id, qst_index, qst_str, ans_str, points) VALUES (12, 1, 12, 'Process of identifying, understanding, tracking and controlling changes to system requirements.', 'Requirements Management', 3);
INSERT INTO new_quiz.qst_idn (qst_id, act_id, qst_index, qst_str, ans_str, points) VALUES (13, 1, 13, 'Stakeholders who influence the requiements', 'Indirect viewpoint', 3);
INSERT INTO new_quiz.qst_idn (qst_id, act_id, qst_index, qst_str, ans_str, points) VALUES (14, 1, 14, 'People or systems that interact directly with the system', 'Interactor viewpoint', 3);
INSERT INTO new_quiz.qst_idn (qst_id, act_id, qst_index, qst_str, ans_str, points) VALUES (15, 1, 15, 'Domain characteristics and constraints that influence the requirements', 'Domain viewpoint', 3);
