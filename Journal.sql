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
