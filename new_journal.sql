CREATE DATABASE new_journal;
USE new_journal;

# таблица с группами
CREATE TABLE `groups` (
	id INT PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(16) not null
);

CREATE TABLE objects (
	id INT PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(24) not null
);

# таблица преподавателей
CREATE TABLE teachers (
	id INT PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(64) not null
);

CREATE TABLE students (
	id INT PRIMARY KEY AUTO_INCREMENT,
	FIO VARCHAR(64) not null,
	groups_id INT,
	god_postupleniya DATETIME,
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
	date_lesson DATETIME not null,
	FOREIGN KEY (objects_id) REFERENCES `objects`(id),
	FOREIGN KEY (teachers_id) REFERENCES teachers(id),
	FOREIGN KEY (groups_id) REFERENCES `groups`(id)
);

# таблица с оценками
CREATE TABLE marks(
	id INT PRIMARY KEY AUTO_INCREMENT,
	students_id INT NOT NULL,
	mark VARCHAR(4),
	lessons_id INT NOT NULL,
	FOREIGN KEY (students_id) REFERENCES students(id),
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
	(null, 'КПИ-2020'),
	(null, 'КЭК-2020'),
	(null, 'КПСО-2020');

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
insert into students values (null, 'В.П.Горохов', '1', '2020-08-18'),
	(null, 'К.А.Титов', '2', '2020-08-18'),
	(null, 'Д.Г.Лебедьев', '2', '2020-08-18'),
	(null, 'С.П.Фролов', '3', '2020-08-18'),
	(null, 'П.Н.Волков', '3', '2020-08-18'),
	(null, 'Д.В.Смернова', '2', '2020-08-18'),
	(null, 'А.Н.Дынин', 3, '2020-08-12'),
	(null, 'Д.В.Зайцев', 2, '2020-08-18'),
	(null, 'Г.Ю.Пчелов', 3, '2020-08-18'),
	(null, 'В.И.Макхов', 1, '2020-08-18'),
	(null, 'К.Р.Клюев', 2, '2020-08-18'),
	(null, 'О.К.Серов', 1, '2020-08-18'),
	(null, 'В.Д. Безруков', 3, '2020/10/02'),
	(null, 'К.А. Валерьев', 3, '2020/09/02'),
	(null, 'К.Е. Юрьевич', '1', '2020/08/25'),
	(null, 'У.К. Хорькова', 2, '2020/09/01'),
	(null, 'Краснов Сергей Борисович', 1, '2020-08-20'),
	(null, "А.Б Рукин", 1, "2020/09/01"),
	(null, "В.В Гагарин", 3, "2020/09/01");

# добавление занятий
INSERT INTO lessons VALUES (null, "Контрольная по математике", 1, "Без Д\З", 1, 2, '2021-03-12'),
    	(null, null, 1, null, 1, 2, '2021-04-18'),
    	(null, "Контрольная", 4, "Упр. 243", 8, 2, '2021-06-03'),
    	(null, "Тема 6.25", 2, "Пример в тетради", 2, 1, '2021-02-26'),
    	(null, "Новая тема", 4, "Создать таблиу", 8, 3, '2021-01-22'),
    	(null, "Разбор прошлой темы", 3, "Без Д\З", 7, 1, '2021-05-10'),
    	(null, null, 3, null, 7, 1, '2021-05-10'),
    	(null, "Интегралы", 1, "Задание в тетради", 1, 1, '2021-04-10'),
    	(null, "Тема 12.2", 5, "Без Д\З", 3, 2, '2021-05-22'),
    	(null, "Тургенев. Муму", 8, "Читать произведение", 2, 3, '2021-04-10'),
    	(null, 'Интегралы', 1, 'Формулы', 1,  1, '2021-03-11'),
	(null, 'Интегралы', 1, 'Формулы', 1,  2, '2021-03-14'),
	(null, 'Интегралы', 1, 'Формулы', 1,  2, '2021-03-18'),
	(null, 'Уравнения', 1, 'Формулы', 1,  3, '2021-03-17'),
	(null, 'Триганометрия', 1, 'Формулы', 1,  3, '2021-03-12'),
	(null, 'Триганометрия', 1, 'Формулы', 1,  2, '2021-03-12'),
	(null, 'Имена прилагательных', 2, 'Правило', 2,  1, '2021-03-15'),
	(null, 'Имена прилагательных', 2, 'Правила', 2,  2, '2021-03-14'),
	(null, 'Морфологический разбор прилагательных', 2, 'Правила', 2,  2, '2021-03-13'),
	(null, 'Глагол', 2, 'Правила', 2,  3, '2021-03-11'),
	(null, 'Морфологический разбор глагола', 2, 'Правила', 2,  3, '2021-03-18'),
	(null, 'Синтаксический разбор предложения', 2, 'Правила', 2,  2, '2021-03-11'),
	(null, 'Биография Пушкина', 8, 'Стихи Пушкина', 2,  1, '2021-03-12'),
	(null, 'Стихи Пушкина', 8, 'Анализ стихов', 2,  2, '2021-03-17'),
	(null, 'Романы Пушкина', 8, 'Капитанская дочка', 2,  2, '2021-03-14'),
	(null, 'Сочинение рассуждение на тему дружба', 8, null, 2,  3, '2021-03-13'),
	(null, 'Биография Лермонтова', 8, 'Сообщение на тему творчества Лермонтова', 2,  3, '2021-03-11'),
	(null, 'Стихи Лермонтова', 8, 'Стихи Лермонтова', 2,  2, '2021-03-16'),
	(null, 'Настояшее время', 3, 'Правила', 7,  1, '2021-03-12'),
	(null, 'Самостоятельнная работа на тему Настояшее время', 3, 'Правила', 7,  2, '2021-03-14'),
	(null, 'Интегралы', 3, 'Формулы', 7, 2, '2021/03/17'),
	(null, 'Интегралы', 3, 'Формулы', 7, 3, '2021/03/17'),
	(null, 'Уравнения', 3, 'Задачи', 7, 3, '2021/03/18'),
	(null, 'Уравнения', 3, 'Формулы', 7, 2, '2021/03/11'),
	(null, 'Интегралы', 4, 'Задачи', 8, 1, '2021/03/18'),
	(null, 'Тригонометрия', 4, 'Формулы', 7, 2, '2021/03/14'),
	(null, 'Имена прилагательные', 4, 'Правило', 7, 2, '2021/03/16'),
	(null, 'Имена прилагательные', 4, 'Правила', 7, 3, '2021/03/15'),
	(null, 'Морфологический разбор прилагательных', 4, 'Правила', 7, 3, '2021/03/15'),
	(null, 'Excel', 4, 'Правила', 7, 2, '2021/03/15'),
	(null, 'Морфологический разбор глаголов', 6, 'Правило', 6, 1, '2021/03/15'),
	(null, 'Синтаксический разбор предложения', 6, 'Правила', 6, 2, '2021/03/17'),
	(null, 'Северная война', 6, 'Причины Северной войны', 6, 2, '2021/03/14'),
	(null, 'Русско-французская война', 6, 'Причины и итоги русско-французской войны', 6, 3, '2021/03/18'),
	(null, 'Восстание Пугачёва', 6, 'Причины восстания и итоги', 6, 3, '2021/03/16'),
	(null, 'Русско-турецкая война', 6, 'Причины,последствия и итоги', 6, 2, '2021/03/13'),
	(null, 'Логорифмы', 1, 'Самостоятельная работа', 1, 1, '2021/06/09'),
	(null, 'Логорифмы', 1, 'Самостоятельная работа', 1, 2, '2021/06/09'),
	(null, 'Интегралы', 1, 'Формулы', 1, 2, '2021/06/10'),
	(null, 'Интегралы', 1, 'Контрольная работа', 1, 3, '2021/06/07'),
	(null, 'Контрольная', 1, null, 1, 3, '2021/03/14'),
	(null, 'Массивы', 4, 'Выучить тему "Массивы"', 6, 1, '2021/03/14'),
	(null, null, 5, null, 3, 2, '2021/03/14'),
	(null, 'Чтение текста', 3, 'Пересказ текста', 5, 3, '2021/03/14'),
	(null, 'Контрольная', 6, 'Повторение прошлой темы', 4, 3, '2021/03/14'),
	(null, null, 1, null, 1, 2, '2021/03/14'),
	(null, 'Переменные', 6, 'Чтение материала по теме', 4, 3, '2021/03/14'),
	(null, 'Открытый урок', 5, null, 3, 2, '2021/03/14'),
	(null, 'Война и мир', 8, 'Пересказ', 2, 3, '2021/03/14'),
	(null, null, 1, null, 1, 1, '2021/03/14'),
	(null, 'Тема 13', 5, null, 3, 2, '2021/03/14'),
	(null, 'Семинар', 1, null, 1, 2, '2021/03/14'),
	(null, null, 1, null, 1, 1, '2021/03/14'),
	(null, null, 1, null, 1, 3, '2021/03/14'),
	(null, 'Контрольная', 2, null, 2, 1, '2021/03/14'),
	(null, 'Подготовка к контрольной', 6, 'Повторить все прошлые темы', 5, 2, '2021/03/14'),
	(null, 'Подготовить курсовую', 4, 'Найти материал', 8, 1, '2021/03/14'),
	(null, 'Лекция', 3, null, 7, 2, '2021/03/14'),
	(null, null, 1, null, 1, 3, '2021/03/14'),
	(null, null, 5, null, 3, 1, '2021/03/14'),
	(null,'Систематичческое угнететие женщин в середине XX века',6,'Крещение Руси',5,2,'2021-03-8'),
	(null,'Рак лёгких , или как выйти покурить 3 раза за пару',7,'Выучить скорость свободного подения',6,1,'2021-03-15'),
	(null,'Как прогулять больше 5ти пар и не писать курсовую',3,'Кто придёт на митинг, исключу !111 (с)Наш директор',5,1,'2021-04-21'),
	(null,'Смута',6,'История киноиндустрии ',5,2,'2021-04-8'),
	(null,'Древняя Греция',6,'Распад СССР',5,2,'2021-03-17'),
	(null,'Гороскопы для близнецов на 21-04-15',7,null,6,1,'2021-04-15'),
	(null,'Лекции 50-52',4,'Лекции 53-55',6,1,'2021-04-8'),
	(null,'Лекции 56-58',4,'Лекции 59-61',6,1,'2021-04-9'),
	(null,'Лекции 62-65',4,'Лекции 66-68',6,1,'2021-04-10'),
	(null,'Лекции 69-72',4,'Лекции 73-80',6,1,'2021-04-11'),
	(null,'zxc ,как смысл жизни',4,'Лекции 81-92',6,1,'2021-04-12'),
	(null,'Контрольная работа',3,null,5,2,'2021-04-20'),
	(null,null,2,null,3,1,'2021-04-8'),
	(null,'Внешняя политики СССР 1923-1953',6,'Холодная война',5,1,'2021-04-13'),
	(null,'Л.Н. Толстой ',2,'Война и мир',8,1,'2021-04-11'),
	(null,'Внутрення политика СССР 60х годов',6,'Внутрення политика СССР 50х годов',5,1,'2021-04-3'),
	(null,'Контрольная ',2,null,8,1,'2021-04-12'),
	(null,null,1,null,1,1,'2021-04-11'),
	(null,'Застой',6,null,5,1,'2021-04-17'),
	(null,null,2,null,3,1,'2021-04-20'), 
	(null, "Тема 14.2", 2, "изучить самостоятельно тему", 1, 3, '2021-03-12'), # добавил Алексей Длогов
	(null, null, 1, null, 1, 2, '2021-04-18'),
	(null, 'Синтаксический разбор предложения', 2, 'Правила', 2,  3, '2021-03-12'),
	(null, 'Биография Пушкина', 8, 'Стихи Пушкина', 2,  2, '2021-04-12'),
	(null, 'Стихи Пушкина', 8, 'Анализ стихов', 2,  3, '2021-03-20'),
	(null, 'Романы Пушкина', 8, 'Капитанская дочка', 2,  1, '2021-05-14'),
	(null, 'Сочинение рассуждение на тему дружба', 8, null, 2,  1, '2021-04-17'),
	(null, 'Биография Лермонтова', 8, 'Сообщение на тему творчества Лермонтова', 2,  2, '2021-04-20'),
	(null, 'тема 6.7', 7, 'повторить пройденную тему', 3,  3, '2021-03-16'),
	(null, 'Настояшее время', 3, 'Правила', 7,  1, '2021-03-12'),
	(null, 'Самостоятельнная работа на любую тему', 3, 'Правила', 7,  2, '2021-03-14'),
	(null, 'тема 5.4', 3, 'Формулы', 7, 2, '2021/03/17'),
	(null, 'Интегралы', 3, 'Формулы', 7, 1, '2021/03/18'),
	(null, 'Уравнения', 3, 'Задачи', 7, 2, '2021/05/10'),
	(null, 'Уравнения', 3, 'Формулы', 7, 1, '2021/04/11'),
	(null, 'Интегралы', 4, 'Самостоятельная работа', 8, 1, '2021/04/18'),
	(null, 'Тригонометрия', 4, 'Формулы', 7, 1, '2021/03/17'),
	(null, 'Глагол', 4, 'Правило', 7, 1, '2021/09/20'),
	(null, 'Повторение', 5, 'Правила', 5, 2, '2021/05/15'),
	(null, 'Тема 6.6', 4, 'упр 130', 7, 2, '2021/05/15');

# Добавление оценок
INSERT INTO marks VALUES (null, 1, '4', 12),
	(null,2, '4', 43),
	(null,3, '5', 12),
	(null,4, '5', 65),
	(null,5, '5', 12),
	(null, 6, '3', 18),
	(null, 1, '3', 63),
	(null, 2, '4', 54),
	(null, 3, '4', 37),
	(null, 4, '5', 26),
	(null, 5, '4', 37),
	(null, 6, '4', 42),
	(null, 1, '5', 21),
	(null, 2, '5', 23),
	(null, 3, '5', 45),
	(null, 4, '4', 54),
	(null, 5, '4', 34),
	(null, 6, '5', 1),
	(null, 1, '4', 2),
	(null, 2, '4', 4),
	(null, 3, '4', 7),
	(null, 4, '4', 8),
	(null, 5, '5', 34),
	(null, 6, '4', 3),
	(null, 1, '5', 23),
	(null, 2, '5', 65),
	(null, 3, '5', 66),
	(null, 4, '4', 23),
	(null, 5, '3', 59),
	(null, 6, '4', 19),
	(null, 1, '4', 28),
	(null, 2, '4', 20),
	(null, 3, '4', 30),
	(null, 4, '5', 31),
	(null, 5, '5', 32),
	(null, 6, '4', 40),
	(null, 1, '5', 45),
	(null, 2, '4', 47),
	(null, 3, '4', 23),
	(null, 4, '5', 43),
	(null, 5, '3', 46),
	(null, 6, '5', 32),
	(null, 1, '5', 62),
	(null, 2, '3', 60),
	(null, 3, '5', 31),
	(null, 4, '5', 21),
	(null, 5, '4', 53),
	(null, 6, '4', 43),
	(null, 1, '4', 62),
	(null, 2, '5', 23),
	(null, 3, '3', 32),
	(null, 4, '3', 36),
	(null, 5, '5', 37),
	(null, 6, '4', 39),
	(null, 1, '5', 45),
	(null, 2, '5', 63),
	(null, 3, '5', 22),
	(null, 4, '4', 21),
	(null, 5, '5', 14),
	(null, 6, '4', 12),
	(null, 1, '4', 9),
	(null, 2, '5', 51),
	(null, 3, '3', 43),
	(null, 4, '5', 21),
	(null, 5, '5', 34),
	(null, 6, '4', 63),
	(null, 1, '4', 34),
	(null, 2, '5', 34),
	(null, 3, '5', 12),
	(null, 4, '5', 5),
	(null, 5, '4', 6),
	(null, 6, '3', 12),
	(null, 1, '4', 29),
	(null, 1, '3', 22),
	(null, 2, '4', 22),
	(null, 3, '5', 22),
	(null, 4, '5', 53),
	(null, 7, '5', 12),
	(null, 1, '4', 60),
	(null, 8, '5', 1),
	(null, 3, '3', 1),
	(null, 4, '5', 23),
	(null, 8, '4', 14),
	(null, 2, '3', 33),
	(null, 9, '4', 14),
	(null, 5, '4', 8);

