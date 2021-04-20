# первый селект
SELECT st.FIO, ob.`name` AS `Предмет`, gp.`name`, AVG(mk.mark) AS `Ср. балл`, ls.date_lesson
FROM students st JOIN marks mk ON st.id=mk.students_id
join lessons ls on mk.lessons_id=ls.id
JOIN `groups` gp ON st.groups_id=gp.id
JOIN `objects` ob ON ls.objects_id=ob.id
WHERE gp.`name`="КЭК-2020" AND ob.`name`="Математика"
AND ls.date_lesson BETWEEN '2021-01-09' AND '2021-06-20' GROUP BY FIO;

# второй селект
SELECT mark AS `Оценки`, date_lesson AS `Дата урока`, objects.`name` AS `Предмет`, `groups`.`name` AS `Группа`, FIO AS `ФИО` FROM marks 
JOIN lessons ON marks.lessons_id = lessons.id
JOIN objects ON lessons.objects_id = objects.id
JOIN `groups` ON lessons.groups_id = `groups`.id
JOIN students ON marks.students_id = students.id
WHERE objects.`name` = 'Литература' AND `groups`.`name` = 'КПИ-2020' AND date_lesson BETWEEN '2021/03/11' AND '2021/03/18'
ORDER BY mark DESC;

# третий селект  
SELECT DISTINCT teachers.`name` FROM teachers
JOIN lessons ON teachers.id=lessons.teachers_id
WHERE name_lesson IS NULL 
AND date_lesson BETWEEN "2021-01-09" AND "2021-06-10";

# четвёртый запрос
SELECT ob.`name`, gp.`name`, COUNT(ob.id) AS `Кол-во пар` FROM teachers
JOIN lessons ON teachers.id=lessons.teachers_id
JOIN objects ob ON ob.id=lessons.objects_id
JOIN `groups` gp ON gp.id=lessons.groups_id
AND date_lesson BETWEEN "2021-01-09" AND "2021-06-10"
GROUP BY ob.id, gp.id;
