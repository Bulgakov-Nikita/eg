CREATE DATABASE Journal;
USE Journal;

#СОЗДАЁМ ТАБЛИЦУ СО ВСЕМИ СТУДЕНТАМИ ИЗ ВСЕХ ГРУПП
CREATE TABLE students (
	id INT PRIMARY KEY AUTO_INCREMENT,
	FIO VARCHAR(255) NOT NULL,
	gruppa VARCHAR(32) NOT NULL,
	god_postyplenia date NOT NULL
);

#СОЗДАЁМ ТАБЛИЦУ ЖУРНАЛ, КОТОРАЯ ХРАНИТ ОЦЕНКИ ВСЕХ СТУДЕНТОВ ИЗ ВСЕХ ГРУПП
CREATE TABLE marks (
    id_stud INT,
    object VARCHAR(64),
    teacher VARCHAR(64),
    data_mark date,
    mark VARCHAR(4),
    CONSTRAINT pk PRIMARY KEY (id_stud, object, teacher, data_mark),
    FOREIGN KEY (id_stud) REFERENCES students(id) ON DELETE CASCADE
);

# Добавил Александр Рязанов, Гасанов
insert into students values (null, 'В.П.Горохов', '1', '2019-08-18');#передал в 1 атрибут null(Кошелев)
insert into students values (null, 'К.А.Титов', '2', '2019-08-18');
insert into students values (null, 'Д.Г.Лебедьев', '2', '2018-08-18');
insert into students values (null, 'С.П.Фролов', '3', '2018-08-18');
insert into stidents values (null, 'П.Н.Волков', '3', '2020-08-18');
insert into students values (null, 'Д.В.Смернова', '2', '2020-08-18');#END передал в 1 атрибут null(Кошелев)
insert into marks values (1, '1', 1, '2021/03/11', '4');
insert into marks values (2, '1', 1, '2021/03/14', '4');
insert into marks values (3, '1', 1, '2021/03/18', '5');
insert into marks values (4, '1', 1, '2021/03/17', '5');
insert into marks values (5, '1', 1, '2021/03/12', '5');
insert into marks values (6, '1', 1, '2021/03/12', '3');
insert into marks values (1, 2, 2, '2021/03/15', '3');
insert into marks values (2, 2, 2, '2021/03/14', '4');
insert into marks values (3, 2, 2, '2021/03/13', '4');
insert into marks values (4, 2, 2, '2021/03/11', '5');
insert into marks values (5, 2, 2, '2021/03/18', '4');
insert into marks values (6, 2, 2, '2021/03/11', '4');
insert into marks values (1, 8, 2, '2021/03/12', '5');
insert into marks values (2, 8, 2, '2021/03/17', '5');
insert into marks values (3, 8, 2, '2021/03/14', '5');
insert into marks values (4, 8, 2, '2021/03/13', '4');
insert into marks values (5, 8, 2, '2021/03/11', '4');
insert into marks values (6, 8, 2, '2021/03/16', '5');
insert into marks values (1, 3, 7, '2021/03/12', '4');
insert into marks values (2, 3, 7, '2021/03/14', '4');
insert into marks values (3, 3, 7, '2021/03/17', '4');
insert into marks values (4, 3, 7, '2021/03/17', '4');
insert into marks values (5, 3, 7, '2021/03/18', '5');
insert into marks values (6, 3, 7, '2021/03/11', '4');
insert into marks values (1, 4, 8, '2021/03/18', '5');#Гасанов
insert into marks values (2, 4, 7, '2021/03/14', '5'); #Рязанов Александр
insert into marks values (3, 4, 7, '2021/03/16', '5');
insert into marks values (4, 4, 7, '2021/03/15', '4');
insert into marks values (5, 4, 7, '2021/03/15', '3');
insert into marks values (6, 4, 7, '2021/03/15', '4');
insert into marks values (1, 6, 6, '2021/03/15', '4');
insert into marks values (2, 6, 6, '2021/03/17', '4');
insert into marks values (3, 6, 6, '2021/03/14', '4');
insert into marks values (4, 6, 6, '2021/03/18', '5');
insert into marks values (5, 6, 6, '2021/03/16', '5');
insert into marks values (6, 6, 6, '2021/03/13', '4');

# Добавил Гасанов Элвин
insert into students values (null, 'А.Н.Дынин', 3, '2020-08-12');
insert into students values (null, 'Д.В.Зайцев', 2, '2016-08-18');
insert into students values (null, 'Г.Ю.Пчелов', 3, '2019-08-18');
insert into students values (null, 'В.И.Макхов', 1, '2019-08-18');
insert into students values (null, 'К.Р.Клюев', 2, '2016-08-18');
insert into students values (null, 'О.К.Серов', 1, '2020-08-18');
insert into marks values (1, 1, 1, '2021/06/09', '5');
insert into marks values (2, 1, 1, '2021/06/09', '4');
insert into marks values (3, 1, 1, '2021/06/10', '4');
insert into marks values (4, 1, 1, '2021/06/07', '5');
insert into marks values (5, 1, 1, '2021/06/05', '3');
insert into marks values (6, 1, 1, '2021/06/12', '5');
insert into marks values (1, 2, 2, '2021/06/09', '5');
insert into marks values (2, 2, 2, '2021/06/07', '3');
insert into marks values (3, 2, 2, '2021/06/11', '5');
insert into marks values (4, 2, 2, '2021/06/08', '5');
insert into marks values (5, 2, 2, '2021/06/12', '4');
insert into marks values (6, 2, 2, '2021/06/13', '4'); # Заменил Рязвнов Адександр
insert into marks values (1, 8, 3, '2021/06/09', '4'); # Заменил предметы на id (Долгов Алексей)
insert into marks values (2, 8, 3, '2021/06/09', '5');
insert into marks values (3, 8, 3, '2021/06/11', '3');
insert into marks values (4, 8, 3, '2021/06/07', '3');
insert into marks values (5, 8, 3, '2021/06/08', '5');
insert into marks values (6, 8, 3, '2021/06/12', '4');
insert into marks values (1, 2, 7, '2021/06/09', '5');
insert into marks values (2, 2, 7, '2021/06/12', '5');
insert into marks values (3, 2, 7, '2021/06/07', '5');
insert into marks values (4, 2, 7, '2021/06/13', '4');
insert into marks values (5, 2, 7, '2021/06/09', '5');
insert into marks values (6, 2, 7, '2021/06/17', '4');
insert into marks values (1, 4, 8, '2021/06/17', '4');
insert into marks values (2, 4, 8, '2021/06/11', '5');
insert into marks values (3, 4, 8, '2021/06/11', '3');
insert into marks values (4, 4, 8, '2021/06/14', '5');
insert into marks values (5, 4, 8, '2021/06/15', '5');
insert into marks values (6, 4, 8, '2021/06/06', '4');
insert into marks values (1, 6, 4, '2021/06/19', '4');
insert into marks values (2, 6, 4, '2021/06/21', '5');
insert into marks values (3, 6, 4, '2021/06/13', '5');
insert into marks values (4, 6, 4, '2021/06/14', '5');
insert into marks values (5, 6, 4, '2021/06/10', '4');
insert into marks values (6, 6, 4, '2021/06/08', '3'); 

#Добавление данных в таблицу (Дмитрий Кошелев), Измениил Максим с 112 по 147
INSERT INTO students VALUES (null, 'В.Д. Безруков', 3, '2019/10/02');#id = 1
INSERT INTO students VALUES (null, 'К.А. Валерьев', 3, '2018/09/02');#id = 2
INSERT INTO students VALUES (null, 'К.Е. Юрьевич', '1', '2017/08/25');#id = 3
INSERT INTO students VALUES (null, 'У.К. Хорькова', 2, '2019/09/01');#id = 4

INSERT INTO marks VALUES ('1', 1 , 8 , '2020/09/12', '4');
INSERT INTO marks VALUES ('1', 8 , 2, '2021/01/30', '3');
INSERT INTO marks VALUES ('2', 6, 4 , '2019/09/05', '4');
INSERT INTO marks VALUES ('3', 1 , 1 , '2018/10/12', '5');
INSERT INTO marks VALUES ('4', 5 , 3, '2020/09/12', '5');

# Заполнение таблицы (Булгаков Никита)
INSERT INTO students 
	VALUES (null, 'Попов Анатолий Григорьевич', 2, '2020-08-19');
INSERT INTO students
	 VALUES (null, 'Татанов Борис Иванович', 2, '2020-08-28');
INSERT INTO students
	VALUES (null, 'Смирнов Павел Анатольевич', 3, '2020-08-24');
INSERT INTO students
	VALUES (null, 'Титов Григорий Павлович', 1, '2019-08-26');
INSERT INTO students
	VALUES (null, 'Остапов Анатолий Владимирович', 2, '2019-08-26');
INSERT INTO students
	VALUES (null, 'Павленко Иван Григорьевич', 1, '2019-08-07');
INSERT INTO students
	VALUES (null, 'Сидоров Анатолий Русланович', 3, '2019-08-16');
INSERT INTO students
	VALUES (null, 'Юсупов Никита Рудольфович', 3, '2019-08-15');
INSERT INTO students
	VALUES (null, 'Сомов Владимир Григорьевич', 2, '2019-08-18');
INSERT INTO students
	VALUES (null, 'Стоянов Павел Анатольевич', 1, '2019-08-21');
INSERT INTO students
	VALUES (null, 'Гриднев Егор Данилович', 2, '2019-08-22');
INSERT INTO students
	VALUES (null, 'Краснов Сергей Борисович', 1, '2019-08-20');
	
INSERT INTO marks(id_stud, object, teacher, data_mark, mark) 
	VALUES (7, 'Математека', 'Оскаленко', '2021-04-10', '5');
INSERT INTO marks(id_stud, object, teacher, data_mark, mark) 
	VALUES (1, 'Русский язык', 'Зайцева', '2021-04-10', '4');
INSERT INTO marks(id_stud, object, teacher, data_mark, mark) 
	VALUES (8, 'Математека', 'Оскаленко', '2021-04-10', '5');
INSERT INTO marks(id_stud, object, teacher, data_mark, mark) 
	VALUES (3, 'Литература', 'Зайцева', '2021-04-10', '3');
INSERT INTO marks(id_stud, object, teacher, data_mark, mark) 
	VALUES (4, 'Математека', 'Оскаленко', '2021-04-10', '5');
INSERT INTO marks(id_stud, object, teacher, data_mark, mark) 
	VALUES (8, 'Математека', 'Оскаленко', '2021-04-11', '4');
INSERT INTO marks(id_stud, object, teacher, data_mark, mark) 
	VALUES (2, 'Информатика', 'Попова', '2021-04-10', '3');
INSERT INTO marks(id_stud, object, teacher, data_mark, mark) 
	VALUES (9, 'Информатика', 'Попова', '2021-04-10', 'Н');
INSERT INTO marks(id_stud, object, teacher, data_mark, mark) 
	VALUES (5, 'Английский', 'Провоторова', '2021-04-10', '4');


# Заполняем таблицу (Алексей Долгов) 
INSERT INTO students(FIO, gruppa, god_postyplenia) VALUES ("А.Б Рукин", "КПИ", "2017/09/01");#id = 1
INSERT INTO students(FIO, gruppa, god_postyplenia) VALUES ("В.В Гагарин", "КПСО", "2018/09/01");#id = 2

INSERT INTO marks VALUES ('1', "Математика", "Оскаленко", "2017/09/08", "5"); #id = 1
INSERT INTO marks VALUES ('1', "Русский язык", "Зайцева", "2017/09/05", "5"); #id = 1
INSERT INTO marks VALUES ('2', "История", "Краснослободцев", "2018/09/06", "4"); #id = 2
INSERT INTO marks VALUES ('2', "Астрономия", "Коновалов", "2018/09/08", "5"); #id = 2

#перенос
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
