# первый селект
SELECT st.FIO, ob.`name` AS `Предмет`, gp.`name`, AVG(mk.mark) AS `Ср. балл`, ls.date_lesson
FROM students st JOIN marks mk ON st.id=mk.students_id
join lessons ls on mk.lessons_id=ls.id
JOIN `groups` gp ON st.groups_id=gp.id
JOIN `objects` ob ON ls.objects_id=ob.id
WHERE gp.`name`="КЭК-2020" AND ob.`name`="Математика"
AND ls.date_lesson BETWEEN '2021-01-09' AND '2021-06-20' GROUP BY FIO;

# второй селект
SELECT st.FIO, ob.`name` AS `Предмет`, gp.`name`, mk.mark, mk.date_mark 
FROM students st JOIN marks mk ON st.id=mk.students_id
JOIN `groups` gp ON st.groups_id=gp.id
JOIN `objects` ob ON mk.objects_id=ob.id
WHERE gp.`name`="КЭК" AND ob.`name`="Математика"
AND mk.date_mark LIKE "2021%"
ORDER BY mk.mark DESC;

# третий селект
SELECT teachers.`name` FROM teachers
JOIN lessons ON teachers.id=lessons.teachers_id
WHERE name_lesson IS NULL 
AND date_lesson BETWEEN "2021-01-09" AND "2021-06-10";
