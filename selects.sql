# первый селект
SELECT st.FIO, ob.obj AS `Предмет`, gp.`group`, AVG(mk.mark) AS `Ср. балл`, mk.date_mark 
FROM students st JOIN marks mk ON st.id=mk.students_id
JOIN `groups` gp ON st.groups_id=gp.id
JOIN `objects` ob ON mk.objects_id=ob.id
WHERE gp.`group`="КЭК" AND ob.obj="Математика"
AND mk.date_mark BETWEEN '2021-01-09' AND '2021-06-20' GROUP BY FIO;

# второй селект
SELECT st.FIO, ob.obj AS `Предмет`, gp.`group`, mk.mark, mk.date_mark 
FROM students st JOIN marks mk ON st.id=mk.students_id
JOIN `groups` gp ON st.groups_id=gp.id
JOIN `objects` ob ON mk.objects_id=ob.id
WHERE gp.`group`="КЭК" AND ob.obj="Математика"
AND mk.date_mark LIKE "2021%"
ORDER BY mk.mark DESC;

# третий селект
SELECT teachers.teacher FROM teachers
JOIN lessons ON teachers.id=lessons.teachers_id
WHERE name_lesson IS NULL 
AND date_lesson BETWEEN "2021-01-09" AND "2021-06-10";