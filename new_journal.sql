CREATE DATABASE new_journal;
USE new_journal;

# таблица с группами
CREATE TABLE `groups` (
	id INT PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(16)
);

CREATE TABLE objects (
	id INT PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(24)
);

# таблица преподавателей
CREATE TABLE teachers (
	id INT PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(64)
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

# заполнение преподавателей
INSERT INTO teachers VALUES
	(null,"Оскаленко"),
	(null,"Зайцева"),
	(null,"Абрамов"),
	(null,"Краснослабодцев"),
	(null,"Поповичева"),
	(null,"Коновалов"),
	(null,"Провоторова"),
	(null,"Попова");
 
#Заполнение таблицы с группами
insert into `groups` values
	(1, 'КПИ'),
	(2, 'КЭК'),
	(3, 'КПСО');

#Заполнение таблицы с предметами(Кошелев)
INSERT INTO objects VALUES
	(null, 'Математика'),
	(null, 'Русский язык'),
	(null, 'Английский язык'),
	(null, 'Информатика'),
	(null, 'Экономика'),
	(null, 'История'),
	(null, 'Астраномия'),
	(null, 'Литература');
