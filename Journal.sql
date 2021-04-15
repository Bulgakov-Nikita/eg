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
	object VARCHAR(64) PRIMARY KEY,
    teacher VARCHAR(64) PRIMARY KEY,
    data_mark date PRIMARY KEY,
    mark VARCHAR(4),
    FOREIGN KEY (id_stud) REFERENCES students(id) ON DELETE CASCADE
);

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
	VALUES (8, 'Математека', 'Оскаленко', '2021-04-10', '4');
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
