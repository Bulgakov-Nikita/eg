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

# таблица с занятиями
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

# таблица с оценками
CREATE TABLE marks(
	id INT PRIMARY KEY AUTO_INCREMENT,
	students_id INT,
	objects_id INT,
	teachers_id INT,
	date_mark DATETIME,
	mark VARCHAR(4),
	lessons_id INT,
	FOREIGN KEY (students_id) REFERENCES students(id),
	FOREIGN KEY (objects_id) REFERENCES objects(id),
	FOREIGN KEY (teachers_id) REFERENCES teachers(id),
	FOREIGN KEY (lessons_id) REFERENCES lessons(id)
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
	
# добавление студентов
insert into students values (null, 'В.П.Горохов', '1', '2019-08-18');
insert into students values (null, 'К.А.Титов', '2', '2019-08-18');
insert into students values (null, 'Д.Г.Лебедьев', '2', '2018-08-18');
insert into students values (null, 'С.П.Фролов', '3', '2018-08-18');
insert into stidents values (null, 'П.Н.Волков', '3', '2020-08-18');
insert into students values (null, 'Д.В.Смернова', '2', '2020-08-18');
insert into students values (null, 'А.Н.Дынин', 3, '2020-08-12');
insert into students values (null, 'Д.В.Зайцев', 2, '2016-08-18');
insert into students values (null, 'Г.Ю.Пчелов', 3, '2019-08-18');
insert into students values (null, 'В.И.Макхов', 1, '2019-08-18');
insert into students values (null, 'К.Р.Клюев', 2, '2016-08-18');
insert into students values (null, 'О.К.Серов', 1, '2020-08-18');
INSERT INTO students VALUES (null, 'В.Д. Безруков', 3, '2019/10/02');
INSERT INTO students VALUES (null, 'К.А. Валерьев', 3, '2018/09/02');
INSERT INTO students VALUES (null, 'К.Е. Юрьевич', '1', '2017/08/25');
INSERT INTO students VALUES (null, 'У.К. Хорькова', 2, '2019/09/01');
INSERT INTO students VALUES (null, 'Краснов Сергей Борисович', 1, '2019-08-20');
INSERT INTO students VALUES (null, "А.Б Рукин", 1, "2017/09/01");#id = 1
INSERT INTO students VALUES (null, "В.В Гагарин", 3, "2018/09/01");#id = 2
