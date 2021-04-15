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
insert into students values ('В.П.Горохов', 'КПИ', '2019');
insert into students values ('К.А.Титов', 'КЭК', '2019');
insert into students values ('Д.Г.Лебедьев', 'КЭК', '2018');
insert into students values ('С.П.Фролов', 'КПСО', '2018');
insert into stidents values ('П.Н.Волков', 'КПСО', '2020');
insert into students values ('Д.В.Смернова', 'КЭК', '2020');
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
