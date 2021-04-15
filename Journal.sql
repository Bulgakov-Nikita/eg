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
insert into students values ('А.Н.Дынин', 'КПСО', '2020');
insert into students values ('Д.В.Зайцев', 'КЭК', '2016');
insert into students values ('Г.Ю.Пчелов', 'КПСО', '2019');
insert into students values ('В.И.Макхов', 'КПИ', '2019');
insert into students values ('К.Р.Клюев', 'КЭК', '2016');
insert into students values ('О.К.Серов', 'КПИ', '2020');
insert into marks values (1, 'Математика', 'Оскаленко', '2021/06/09', '5');
insert into marks values (2, 'Математика', '4', 'Оскаленко', '2021/06/09');
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
