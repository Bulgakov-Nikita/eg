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

# Заполняем таблицу (Алексей Долгов) 
INSERT INTO students(FIO, gruppa, god_postyplenia) VALUES ("А.Б Рукин", "КПИ", "2017/09/01");#id = 1
INSERT INTO students(FIO, gruppa, god_postyplenia) VALUES ("В.В Гагарин", "КПСО", "2018/09/01");#id = 2

INSERT INTO marks VALUES ('1', "Математика", "Оскаленко", "2017/09/08", "5"); #id = 1
INSERT INTO marks VALUES ('1', "Русский язык", "Зайцева", "2017/09/05", "5"); #id = 1
INSERT INTO marks VALUES ('2', "История", "Краснослободцев", "2018/09/06", "4"); #id = 2
INSERT INTO marks VALUES ('2', "Астрономия", "Коновалов", "2018/09/08", "5"); #id = 2
