CREATE DATABASE new_journal;
USE new_journal;

# таблица с группами
CREATE TABLE `groups` (
	id INT PRIMARY KEY AUTO_INCREMENT,
    `group` VARCHAR(16)
);

CREATE TABLE objects (
	id INT PRIMARY KEY AUTO_INCREMENT,
    obj VARCHAR(24)
);

# таблица преподавателей
CREATE TABLE teachers (
	id INT PRIMARY KEY AUTO_INCREMENT,
    teacher VARCHAR(64)
);

CREATE TABLE students (
	id INT PRIMARY KEY AUTO_INCREMENT,
    FIO VARCHAR(64),
    groups_id INT,
    god_postypleniya DATETIME,
    FOREIGN KEY (groups_id) REFERENCES `groups`(id)
);

CREATE TABLE marks(
	id INT PRIMARY KEY AUTO_INCREMENT,
    students_id INT,
    objects_id INT,
    teachers_id INT,
    date_mark DATETIME,
    mark VARCHAR(4),
    FOREIGN KEY (students_id) REFERENCES students(id),
    FOREIGN KEY (objects_id) REFERENCES objects(id),
    FOREIGN KEY (teachers_id) REFERENCES teachers(id)
);

CREATE TABLE lessons (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name_lesson TEXT,
    objects_id INT,
    homework TEXT,
    teachers_id INT,
    groups_id INT,
    date_lesson DATETIME,
    FOREIGN KEY (objects_id) REFERENCES `objects`(id),
    FOREIGN KEY (teachers_id) REFERENCES teachers(id),
    FOREIGN KEY (groups_id) REFERENCES `groups`(id)
);
insert into teachers values
 (null,"Оскаленко"),
 (null,"Зайцева"),
 (null,"Абрамов"),
 (null,"Краснослабодцев"),
 (null,"Поповичева"),
 (null,"Коновалов"),
 (null,"Провоторова"),
 (null,"Попова");
INSERT INTO students VALUES ('Краснов Сергей Борисович', 1, '2019-08-20');
INSERT INTO marks VALUES (7, 1, 1, '2021-04-10', '5');
INSERT INTO marks VALUES (1, 2, 2, '2021-04-10', '4');
INSERT INTO marks VALUES (8, 1, 1, '2021-04-10', '5');
INSERT INTO marks VALUES (3, 8, 2, '2021-04-10', '3');
INSERT INTO marks VALUES (4, 1, 1, '2021-04-10', '5');
INSERT INTO marks VALUES (8, 1, 1, '2021-04-11', '4');
INSERT INTO marks VALUES (2, 4, 8, '2021-04-10', '3');
INSERT INTO marks VALUES (9, 4, 8, '2021-04-10', 'Н');
INSERT INTO marks VALUES (5, 3, 7, '2021-04-10', '4');
INSERT INTO students VALUES ("А.Б Рукин", 1, "2017/09/01");#id = 1
INSERT INTO students VALUES ("В.В Гагарин", 3, "2018/09/01");#id = 2

INSERT INTO marks VALUES ('1', 1, 1, "2017/09/08", "5"); #id = 1
INSERT INTO marks VALUES ('1', 2, 2, "2017/09/05", "5"); #id = 1
INSERT INTO marks VALUES ('2', 6, 4, "2018/09/06", "4"); #id = 2
INSERT INTO marks VALUES ('2', 7, 6, "2018/09/08", "5"); #id = 2
