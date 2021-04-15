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
insert into students values (null, 'В.П.Горохов', 'КПИ', '2019');
insert into students values (null, 'К.А.Титов', 'КЭК', '2019');
insert into students values (null, 'Д.Г.Лебедьев', 'КЭК', '2018');
insert into students values (null, 'С.П.Фролов', 'КПСО', '2018');
insert into stidents values (null, 'П.Н.Волков', 'КПСО', '2020');
insert into students values (null, 'Д.В.Смернова', 'КЭК', '2020');
insert into marks values (1, 'Математика', '4', 'Оскаленко', '2021/03/11');
insert into marks values (2, 'Математика', '4', 'Оскаленко', '2021/03/14');
insert into marks values (3, 'Математика', '5', 'Оскаленко', '2021/03/18');
insert into marks values (4, 'Математика', '5', 'Оскаленко', '2021/03/17');
insert into marks values (5, 'Математика', '5', 'Оскаленко', '2021/03/12');
insert into marks values (6, 'Математика', '3', 'Оскаленко', '2021/03/12');
insert into marks values (1, 'Русский язык', '4', 'Зайцева', '2021/03/15');
insert into marks values (2, 'Русский язык', '4', 'Зайцева', '2021/03/14');
insert into marks values (3, 'Русский язык', '4', 'Зайцева', '2021/03/13');
insert into marks values (4, 'Русский язык', '5', 'Зайцева', '2021/03/11');
insert into marks values (5, 'Русский язык', '4', 'Зайцева', '2021/03/18');
insert into marks values (6, 'Русский язык', '4', 'Зайцева', '2021/03/11');
insert into marks values (1, 'Литература', '5', 'Зайцева', '2021/03/12');
insert into marks values (2, 'Литература', '5', 'Зайцева', '2021/03/17');
insert into marks values (3, 'Литература', '5', 'Зайцева', '2021/03/14');
insert into marks values (4, 'Литература', '4', 'Зайцева', '2021/03/13');
insert into marks values (5, 'Литература', '4', 'Зайцева', '2021/03/11');
insert into marks values (6, 'Литература', '5', 'Зайцева', '2021/03/16');
insert into marks values (1, 'Английский язык', '4', 'Провоторова', '2021/03/12');
insert into marks values (2, 'Английский язык', '4', 'Провоторова', '2021/03/14');
insert into marks values (3, 'Английский язык', '4', 'Провоторова', '2021/03/17');
insert into marks values (4, 'Английский язык', '3', 'Провоторова', '2021/03/17');
insert into marks values (5, 'Английский язык', '5', 'Провоторова', '2021/03/18');
insert into marks values (6, 'Английский язык', '4', 'Провоторова', '2021/03/11');
insert into marks values (1, 'Информатика', '5', 'Попова', '2021/03/18');
insert into marks values (2, 'Информатика', '5', 'Попова', '2021/03/14');
insert into marks values (3, 'Информатика', '5', 'Попова', '2021/03/16');
insert into marks values (4, 'Информатика', '4', 'Попова', '2021/03/15');
insert into marks values (5, 'Информатика', '3', 'Попова', '2021/03/15');
insert into marks values (6, 'Информатика', '5', 'Попова', '2021/03/15');
insert into marks values (1, 'История', '4', 'Краснослободцев', '2021/03/15');
insert into marks values (2, 'История', '4', 'Краснослободцев', '2021/03/17');
insert into marks values (3, 'История', '4', 'Краснослободцев', '2021/03/14');
insert into marks values (4, 'История', '5', 'Краснослободцев', '2021/03/18');
insert into marks values (5, 'История', '4', 'Краснослободцев', '2021/03/16');
insert into marks values (6, 'История', '4', 'Краснослободцев', '2021/03/13');
