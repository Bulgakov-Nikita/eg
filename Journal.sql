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

# Добавил Александр Рязанов
insert into students values ('В.П.Горохов', 'КПИ', '2019-08-18');
insert into students values ('К.А.Титов', 'КЭК', '2019-08-18');
insert into students values ('Д.Г.Лебедьев', 'КЭК', '2018-08-18');
insert into students values ('С.П.Фролов', 'КПСО', '2018-08-18');
insert into stidents values ('П.Н.Волков', 'КПСО', '2020-08-18');
insert into students values ('Д.В.Смернова', 'КЭК', '2020-08-18');
insert into marks values (1, 'Математика', 'Оскаленко', '2021/03/11', '4');
insert into marks values (2, 'Математика', 'Оскаленко', '2021/03/14', '4');
insert into marks values (3, 'Математика', 'Оскаленко', '2021/03/18', '5');
insert into marks values (4, 'Математика', 'Оскаленко', '2021/03/17', '5');
insert into marks values (5, 'Математика', 'Оскаленко', '2021/03/12', '5');
insert into marks values (6, 'Математика', 'Оскаленко', '2021/03/12', '3');
insert into marks values (1, 'Русский язык', 'Зайцева', '2021/03/15', '3');
insert into marks values (2, 'Русский язык', 'Зайцева', '2021/03/14', '4');
insert into marks values (3, 'Русский язык', 'Зайцева', '2021/03/13', '4');
insert into marks values (4, 'Русский язык', 'Зайцева', '2021/03/11', '5');
insert into marks values (5, 'Русский язык', 'Зайцева', '2021/03/18', '4');
insert into marks values (6, 'Русский язык', 'Зайцева', '2021/03/11', '4');
insert into marks values (1, 'Литература', 'Зайцева', '2021/03/12', '5');
insert into marks values (2, 'Литература', 'Зайцева', '2021/03/17', '5');
insert into marks values (3, 'Литература', 'Зайцева', '2021/03/14', '5');
insert into marks values (4, 'Литература', 'Зайцева', '2021/03/13', '4');
insert into marks values (5, 'Литература', 'Зайцева', '2021/03/11', '4');
insert into marks values (6, 'Литература', 'Зайцева', '2021/03/16', '5');
insert into marks values (1, 'Английский язык', 'Провоторова', '2021/03/12', '4');
insert into marks values (2, 'Английский язык', 'Провоторова', '2021/03/14', '4');
insert into marks values (3, 'Английский язык', 'Провоторова', '2021/03/17', '4');
insert into marks values (4, 'Английский язык', 'Провоторова', '2021/03/17', '4');
insert into marks values (5, 'Английский язык', 'Провоторова', '2021/03/18', '5');
insert into marks values (6, 'Английский язык', 'Провоторова', '2021/03/11', '4');
insert into marks values (1, 'Информатика', 'Попова', '2021/03/18', '5');
insert into marks values (2, 'Информатика', 'Попова', '2021/03/14', '5');
insert into marks values (3, 'Информатика', 'Попова', '2021/03/16', '5');
insert into marks values (4, 'Информатика', 'Попова', '2021/03/15', '4');
insert into marks values (5, 'Информатика', 'Попова', '2021/03/15', '3');
insert into marks values (6, 'Информатика', 'Попова', '2021/03/15', '4');
insert into marks values (1, 'История', 'Краснослободцев', '2021/03/15', '4');
insert into marks values (2, 'История', 'Краснослободцев', '2021/03/17', '4');
insert into marks values (3, 'История', 'Краснослободцев', '2021/03/14', '4');
insert into marks values (4, 'История', 'Краснослободцев', '2021/03/18', '5');
insert into marks values (5, 'История', 'Краснослободцев', '2021/03/16', '5');
insert into marks values (6, 'История', 'Краснослободцев', '2021/03/13', '4');

# Добавил Гасанов Элвин
insert into students values ('А.Н.Дынин', 'КПСО', '2020-08-12');
insert into students values ('Д.В.Зайцев', 'КЭК', '2016-08-18');
insert into students values ('Г.Ю.Пчелов', 'КПСО', '2019-08-18');
insert into students values ('В.И.Макхов', 'КПИ', '2019-08-18');
insert into students values ('К.Р.Клюев', 'КЭК', '2016-08-18');
insert into students values ('О.К.Серов', 'КПИ', '2020-08-18');
insert into marks values (1, 'Математика', 'Оскаленко', '2021/06/09', '5');
insert into marks values (2, 'Математика', 'Оскаленко', '2021/06/09', '4');
insert into marks values (3, 'Математика', 'Оскаленко', '2021/06/10', '4');
insert into marks values (4, 'Математика', 'Оскаленко', '2021/06/07', '5');
insert into marks values (5, 'Математика', 'Оскаленко', '2021/06/05', '3');
insert into marks values (6, 'Математика', 'Оскаленко', '2021/06/12', '5');
insert into marks values (1, 'Русский язык', 'Зайцева', '2021/06/09', '5');
insert into marks values (2, 'Русский язык', 'Зайцева', '2021/06/07', '3');
insert into marks values (3, 'Русский язык', 'Зайцева', '2021/06/11', '5');
insert into marks values (4, 'Русский язык', 'Зайцева', '2021/06/08', '5');
insert into marks values (5, 'Русский язык', 'Зайцева', '2021/06/12', '4');
insert into marks values (6, 'Русский язык', 'Зайцева', '2021/06/13', '4');
insert into marks values (1, 'Литература', 'Зайцева', '2021/06/09', '4');
insert into marks values (2, 'Литература', 'Зайцева', '2021/06/09', '5');
insert into marks values (3, 'Литература', 'Зайцева', '2021/06/11', '3');
insert into marks values (4, 'Литература', 'Зайцева', '2021/06/07', '3');
insert into marks values (5, 'Литература', 'Зайцева', '2021/06/08', '5');
insert into marks values (6, 'Литература', 'Зайцева', '2021/06/12', '4');
insert into marks values (1, 'Английский язык', 'Провоторова', '2021/06/09', '5');
insert into marks values (2, 'Английский язык', 'Провоторова', '2021/06/12', '5');
insert into marks values (3, 'Английский язык', 'Провоторова', '2021/06/07', '5');
insert into marks values (4, 'Английский язык', 'Провоторова', '2021/06/13', '4');
insert into marks values (5, 'Английский язык', 'Провоторова', '2021/06/09', '5');
insert into marks values (6, 'Английский язык', 'Провоторова', '2021/06/17', '4');
insert into marks values (1, 'Информатика', 'Попова', '2021/06/17', '4');
insert into marks values (2, 'Информатика', 'Попова', '2021/06/11', '5');
insert into marks values (3, 'Информатика', 'Попова', '2021/06/11', '3');
insert into marks values (4, 'Информатика', 'Попова', '2021/06/14', '5');
insert into marks values (5, 'Информатика', 'Попова', '2021/06/15', '5');
insert into marks values (6, 'Информатика', 'Попова', '2021/06/06', '4');
insert into marks values (1, 'История', 'Краснослободцев', '2021/06/19', '4');
insert into marks values (2, 'История', 'Краснослободцев', '2021/06/21', '5');
insert into marks values (3, 'История', 'Краснослободцев', '2021/06/13', '5');
insert into marks values (4, 'История', 'Краснослободцев', '2021/06/14', '5');
insert into marks values (5, 'История', 'Краснослободцев', '2021/06/10', '4');
insert into marks values (6, 'История', 'Краснослободцев', '2021/06/08', '3');

#Добавление данных в таблицу (Дмитрий Кошелев)
INSERT INTO students(FIO, gruppa, god_postyplenia) VALUES ('В.Д. Безруков', 'КПСО', '2019/10/02');#id = 1
INSERT INTO students(FIO, gruppa, god_postyplenia) VALUES ('К.А. Валерьев', 'КПСО', '2018/09/02');#id = 2
INSERT INTO students(FIO, gruppa, god_postyplenia) VALUES ('К.Е. Юрьевич', 'КПИ', '2017/08/25');#id = 3
INSERT INTO students(FIO, gruppa, god_postyplenia) VALUES ('У.К. Хорькова', 'КЭК', '2019/09/01');#id = 4

INSERT INTO marks VALUES ('1', 'Математика', 'Попова', '2020/09/12', '4');
INSERT INTO marks VALUES ('1', 'Литература', 'Зайцева', '2021/01/30', '3');
INSERT INTO marks VALUES ('2', 'История', 'Краснослободцев', '2019/09/05', '4');
INSERT INTO marks VALUES ('3', 'Математика', 'Осколенко', '2018/10/12', '5');
INSERT INTO marks VALUES ('4', 'Экономика', 'Абрамов', '2020/09/12', '5');

# Заполнение таблицы (Булгаков Никита)
INSERT INTO students(FIO, gruppa, god_postyplenia) 
	VALUES ('Попов Анатолий Григорьевич', 'КЭК', '2020-08-19');
INSERT INTO students(FIO, gruppa, god_postyplenia) 
	 VALUES ('Татанов Борис Иванович', 'КЭК', '2020-08-28');
INSERT INTO students(FIO, gruppa, god_postyplenia) 
	VALUES ('Смирнов Павел Анатольевич', 'КПСО', '2020-08-24');
INSERT INTO students(FIO, gruppa, god_postyplenia) 
	VALUES ('Титов Григорий Павлович', 'КПИ', '2019-08-26');
INSERT INTO students(FIO, gruppa, god_postyplenia) 
	VALUES ('Остапов Анатолий Владимирович', 'КЭК', '2019-08-26');
INSERT INTO students(FIO, gruppa, god_postyplenia) 
	VALUES ('Павленко Иван Григорьевич', 'КПИ', '2019-08-07');
INSERT INTO students(FIO, gruppa, god_postyplenia) 
	VALUES ('Сидоров Анатолий Русланович', 'КПСО', '2019-08-16');
INSERT INTO students(FIO, gruppa, god_postyplenia) 
	VALUES ('Юсупов Никита Рудольфович', 'КПСО', '2019-08-15');
INSERT INTO students(FIO, gruppa, god_postyplenia) 
	VALUES ('Сомов Владимир Григорьевич', 'КЭК', '2019-08-18');
INSERT INTO students(FIO, gruppa, god_postyplenia) 
	VALUES ('Стоянов Павел Анатольевич', 'КПИ', '2019-08-21');
INSERT INTO students(FIO, gruppa, god_postyplenia) 
	VALUES ('Гриднев Егор Данилович', 'КЭК', '2019-08-22');
INSERT INTO students(FIO, gruppa, god_postyplenia) 
	VALUES ('Краснов Сергей Борисович', 'КПИ', '2019-08-20');
	
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
