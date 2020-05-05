
INSERT into QUESTION (content) values ('Which of the following option leads to the portability and security of Java?');
INSERT into QUESTION (content) values ('Which of the following is not a Java features');
INSERT into QUESTION (content) values ('___is used to find and fix bugs in the Java programs.');
INSERT into QUESTION (content) values ('What is the return type of the hashCode() method in the Object class');
INSERT into QUESTION (content) values ('Which of the following is a valid long literal');




INSERT into QUESTION (content) values ('What does the expression float a = 35 / 0 return?');
INSERT into QUESTION (content) values ('Evaluate the following Java expression, if x=3, y=5, and z=10:++z + y - y + z + x++');
INSERT into QUESTION (content) values ('Which of the following creates a List of 3 visible items and multiple selections abled?');
INSERT into QUESTION (content) values ('In which process, a local variable has the same name as one of the instance variables');
INSERT into QUESTION (content) values ('What is the default encoding for an OutputStreamWriter?');

INSERT into QUESTION (content) values ('If a thread goes to sleep ');
INSERT into QUESTION (content) values ('How many threads can be executed at a time?');
INSERT into QUESTION (content) values ('What is meant by the classes and objects that dependents on each other?');
INSERT into QUESTION (content) values ('Which of the following is a marker interface?');
INSERT into QUESTION (content) values ('Which of the following is an immediate subclass of the Panel class?');


Insert into ANSWER (Id, content, correct, question_id) values (1, 'Bytecode is executed by JVM',true,'1');
Insert into ANSWER (Id, content, correct, question_id) values (2, 'The applet makes the Java code secure and portable',false,'1');
Insert into ANSWER (Id, content, correct, question_id) values (3, 'Use of exception handling',false,'1');
Insert into ANSWER (Id, content, correct, question_id) values (4, 'Dynamic binding between objects',false,'1');

Insert into ANSWER (Id, content, correct, question_id) values (5, 'Architecture Neutral',false,'2');
Insert into ANSWER (Id, content, correct, question_id) values (6, 'Use of pointers',true,'2');
Insert into ANSWER (Id, content, correct, question_id) values (7, 'Object-oriented',false,'2');


Insert into ANSWER (Id, content, correct, question_id) values (8, 'JVM',false,'3');
Insert into ANSWER (Id, content, correct, question_id) values (9, 'JRE',false,'3');
Insert into ANSWER (Id, content, correct, question_id) values (10, 'JDK',false,'3');
Insert into ANSWER (Id, content, correct, question_id) values (11, 'JDB',true,'3');

Insert into ANSWER (Id, content, correct, question_id) values (12, 'Object',false,'4');
Insert into ANSWER (Id, content, correct, question_id) values (13, 'int',true,'4');
Insert into ANSWER (Id, content, correct, question_id) values (14, 'long',false,'4');
Insert into ANSWER (Id, content, correct, question_id) values (15, 'void',false,'4');

Insert into ANSWER (Id, content, correct, question_id) values (16, 'ABH8097',false,'5');
Insert into ANSWER (Id, content, correct, question_id) values (17, 'L990023',false,'5');
Insert into ANSWER (Id, content, correct, question_id) values (18, '904423',false,'5');
Insert into ANSWER (Id, content, correct, question_id) values (19, '0xnf029L',true,'5');

Insert into ANSWER (Id, content, correct, question_id) values (20, '0',false,'6');
Insert into ANSWER (Id, content, correct, question_id) values (21, 'Not a Number',false,'6');
Insert into ANSWER (Id, content, correct, question_id) values (22, 'Infinity',true,'6');
Insert into ANSWER (Id, content, correct, question_id) values (23, 'Run time exception',false,'6');

Insert into ANSWER (Id, content, correct, question_id) values (24, '24',true,'7');
Insert into ANSWER (Id, content, correct, question_id) values (25, '23',false,'7');
Insert into ANSWER (Id, content, correct, question_id) values (26, '20',false,'7');
Insert into ANSWER (Id, content, correct, question_id) values (27, '25',false,'7');

Insert into ANSWER (Id, content, correct, question_id) values (28, 'new List(false, 3)',false,'8');
Insert into ANSWER (Id, content, correct, question_id) values (29, 'new List(3, true)',true,'8');
Insert into ANSWER (Id, content, correct, question_id) values (30, 'new List(true, 3)',false,'8');
Insert into ANSWER (Id, content, correct, question_id) values (31, 'new List(3, false)',false,'8');

Insert into ANSWER (Id, content, correct, question_id) values (32, 'Serialization',false,'9');
Insert into ANSWER (Id, content, correct, question_id) values (33, 'Variable Shadowing',true,'9');
Insert into ANSWER (Id, content, correct, question_id) values (34, 'Abstraction',false,'9');
Insert into ANSWER (Id, content, correct, question_id) values (35, 'Multi-threading',false,'9');

Insert into ANSWER (Id, content, correct, question_id) values (36, 'UTF-8',false,'10');
Insert into ANSWER (Id, content, correct, question_id) values (37, 'Default encoding of the host platform',true,'10');
Insert into ANSWER (Id, content, correct, question_id) values (38, 'UTF-12',false,'10');
Insert into ANSWER (Id, content, correct, question_id) values (39, 'None of the above',false,'10');

Insert into ANSWER (Id, content, correct, question_id) values (40, 'It releases all the locks it has.',false,'11');
Insert into ANSWER (Id, content, correct, question_id) values (41, 'It does not release any locks.',true,'11');
Insert into ANSWER (Id, content, correct, question_id) values (42, 'It releases half of its locks.',false,'11');
Insert into ANSWER (Id, content, correct, question_id) values (43, 'It releases all of its lock except one.',false,'11');

Insert into ANSWER (Id, content, correct, question_id) values (44, 'Only one thread.',false,'12');
Insert into ANSWER (Id, content, correct, question_id) values (45, 'Multiple threads',true,'12');
Insert into ANSWER (Id, content, correct, question_id) values (46, 'Only main (main() method) thread.',false,'12');
Insert into ANSWER (Id, content, correct, question_id) values (47, 'Two threads.',false,'12');

Insert into ANSWER (Id, content, correct, question_id) values (48, 'Tight Coupling',true,'13');
Insert into ANSWER (Id, content, correct, question_id) values (49, 'Cohesion',false,'13');
Insert into ANSWER (Id, content, correct, question_id) values (50, 'Loose Coupling',false,'13');
Insert into ANSWER (Id, content, correct, question_id) values (51, 'None of the above',false,'13');

Insert into ANSWER (Id, content, correct, question_id) values (52, 'Runnable interface',false,'14');
Insert into ANSWER (Id, content, correct, question_id) values (53, 'Remote interface',true,'14');
Insert into ANSWER (Id, content, correct, question_id) values (54, 'Readable interface',false,'14');
Insert into ANSWER (Id, content, correct, question_id) values (55, 'Result interface',false,'14');

Insert into ANSWER (Id, content, correct, question_id) values (56, 'Applet class',true,'15');
Insert into ANSWER (Id, content, correct, question_id) values (57, 'Window class',false,'15');
Insert into ANSWER (Id, content, correct, question_id) values (58, 'Frame class',false,'15');
Insert into ANSWER (Id, content, correct, question_id) values (59, 'Dialog class',false,'15');
