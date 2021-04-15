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




