SELECT MAX(id)
FROM public.students

DROP FUNCTION output_max_student_id()

CREATE OR REPLACE FUNCTION get_max_student_id() RETURNS int AS
$$
DECLARE
	i integer;
BEGIN
i =
	(SELECT MAX(id)
	FROM public.students);

RETURN i;
END;
$$ language plpgsql;


SELECT get_max_student_id();


CREATE OR REPLACE FUNCTION get_max_student_subject_id() RETURNS int AS
$$
DECLARE
	i integer;
BEGIN
i =
	(SELECT MAX(id)
	FROM public.student_subject);

RETURN i;
END;
$$ language plpgsql;


SELECT get_max_student_subject_id();

SELECT id FROM public.student_subject;



DROP FUNCTION test001;
CREATE OR REPLACE FUNCTION test001(a1 INTEGER, a2 INTEGER) RETURNS VARCHAR(20) AS
$$
DECLARE
	i INT;
	rez VARCHAR(10) := 'Неуспешно';
BEGIN

i = a1 + a2;

rez := 'Успешно';
RETURN rez;
END;
$$ language plpgsql;

SELECT test001(3, 4);


DROP FUNCTION make_new_student_python;
CREATE OR REPLACE FUNCTION make_new_student_python(
	st_lastname VARCHAR(30),
	st_firstname VARCHAR(30),
	st_fathername VARCHAR(30),
	st_genderismale BOOL,
	st_age INT,
	pointnumber_osnovi_0 INT,
	pointnumber_algoritmi_1 INT,
	pointnumber_git_2 INT,
	pointnumber_html5_css_3 INT,
	pointnumber_python_level1_7 INT,
	pointnumber_postgresql_level1_4 INT,
	pointnumber_python_level2_8 INT,
	pointnumber_python_level3_9 INT
) RETURNS VARCHAR(20) AS
$$
DECLARE
	rez VARCHAR(10) := 'Неуспешно';
	st_id INT = (get_max_student_id() + 1);
	st_sub_id INT = (get_max_student_subject_id() + 1);
BEGIN
	INSERT INTO public.students (id, lastname, firstname, fathername, genderismale, age, specializationid)
	VALUES (st_id, st_lastname, st_firstname, st_fathername, st_genderismale, st_age, 0);

	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 0, pointnumber_osnovi_0);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 1, pointnumber_algoritmi_1);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 2, pointnumber_git_2);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 3, pointnumber_html5_css_3);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 7, pointnumber_python_level1_7);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 4, pointnumber_postgresql_level1_4);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 8, pointnumber_python_level2_8);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 9, pointnumber_python_level3_9);
	st_sub_id = (st_sub_id + 1);

	rez := 'Успешно';
	RETURN rez;
END;
$$ language plpgsql;



DROP FUNCTION make_new_student_java;
CREATE OR REPLACE FUNCTION make_new_student_java(
	st_lastname VARCHAR(30),
	st_firstname VARCHAR(30),
	st_fathername VARCHAR(30),
	st_genderismale BOOL,
	st_age INT,
	pointnumber_osnovi_0 INT,
	pointnumber_algoritmi_1 INT,
	pointnumber_git_2 INT,
	pointnumber_c_10 INT,
	pointnumber_java_level1_11 INT,
	pointnumber_postgresql_level1_4 INT,
	pointnumber_java_level2_12 INT,
	pointnumber_spring_13 INT
) RETURNS VARCHAR(20) AS
$$
DECLARE
	rez VARCHAR(10) := 'Неуспешно';
	st_id INT = (get_max_student_id() + 1);
	st_sub_id INT = (get_max_student_subject_id() + 1);
BEGIN
	INSERT INTO public.students (id, lastname, firstname, fathername, genderismale, age, specializationid)
	VALUES (st_id, st_lastname, st_firstname, st_fathername, st_genderismale, st_age, 1);

	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 0, pointnumber_osnovi_0);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 1, pointnumber_algoritmi_1);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 2, pointnumber_git_2);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 10, pointnumber_c_10);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 11, pointnumber_java_level1_11);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 4, pointnumber_postgresql_level1_4);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 12, pointnumber_java_level2_12);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 13, pointnumber_spring_13);
	st_sub_id = (st_sub_id + 1);

	rez := 'Успешно';
	RETURN rez;
END;
$$ language plpgsql;




DROP FUNCTION make_new_student_c_sharp;
CREATE OR REPLACE FUNCTION make_new_student_c_sharp(
	st_lastname VARCHAR(30),
	st_firstname VARCHAR(30),
	st_fathername VARCHAR(30),
	st_genderismale BOOL,
	st_age INT,
	pointnumber_osnovi_0 INT,
	pointnumber_algoritmi_1 INT,
	pointnumber_git_2 INT,
	pointnumber_c_10 INT,
	pointnumber_c_sharp_level1_14 INT,
	pointnumber_c_sharp_level2_15 INT,
	pointnumber_postgresql_level1_4 INT,
	pointnumber_c_sharp_level3_16 INT,
	pointnumber_html5_css_3 INT,
	pointnumber_c_sharp_level4_17 INT,
	pointnumber_javascript_level1_18 INT,
	pointnumber_javascript_level2_19 INT
) RETURNS VARCHAR(20) AS
$$
DECLARE
	rez VARCHAR(10) := 'Неуспешно';
	st_id INT = (get_max_student_id() + 1);
	st_sub_id INT = (get_max_student_subject_id() + 1);
BEGIN
	INSERT INTO public.students (id, lastname, firstname, fathername, genderismale, age, specializationid)
	VALUES (st_id, st_lastname, st_firstname, st_fathername, st_genderismale, st_age, 2);

	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 0, pointnumber_osnovi_0);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 1, pointnumber_algoritmi_1);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 2, pointnumber_git_2);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 10, pointnumber_c_10);
	st_sub_id = (st_sub_id + 1);

	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 14, pointnumber_c_sharp_level1_14);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 15, pointnumber_c_sharp_level2_15);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 4, pointnumber_postgresql_level1_4);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 16, pointnumber_c_sharp_level3_16);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 3, pointnumber_html5_css_3);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 17, pointnumber_c_sharp_level4_17);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 18, pointnumber_javascript_level1_18);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 19, pointnumber_javascript_level2_19);
	st_sub_id = (st_sub_id + 1);

	rez := 'Успешно';
	RETURN rez;
END;
$$ language plpgsql;




DROP FUNCTION make_new_student_admin;
CREATE OR REPLACE FUNCTION make_new_student_admin(
	st_lastname VARCHAR(30),
	st_firstname VARCHAR(30),
	st_fathername VARCHAR(30),
	st_genderismale BOOL,
	st_age INT,
	pointnumber_osnovi_0 INT,
	pointnumber_osnovi_setey_20 INT,
	pointnumber_linux_level1_21 INT,
	pointnumber_data_analiz_22 INT,
	pointnumber_postgresql_level1_4 INT,
	pointnumber_postgresql_level2_5 INT,
	pointnumber_postgresql_level3_6 INT,
	pointnumber_qpt_23 INT
) RETURNS VARCHAR(20) AS
$$
DECLARE
	rez VARCHAR(10) := 'Неуспешно';
	st_id INT = (get_max_student_id() + 1);
	st_sub_id INT = (get_max_student_subject_id() + 1);
BEGIN
	INSERT INTO public.students (id, lastname, firstname, fathername, genderismale, age, specializationid)
	VALUES (st_id, st_lastname, st_firstname, st_fathername, st_genderismale, st_age, 3);

	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 0, pointnumber_osnovi_0);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 20, pointnumber_osnovi_setey_20);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 21, pointnumber_linux_level1_21);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 22, pointnumber_data_analiz_22);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 4, pointnumber_postgresql_level1_4);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 5, pointnumber_postgresql_level2_5);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 6, pointnumber_postgresql_level3_6);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 23, pointnumber_qpt_23);
	st_sub_id = (st_sub_id + 1);

	rez := 'Успешно';
	RETURN rez;
END;
$$ language plpgsql;




DROP FUNCTION make_new_student_ingener;
CREATE OR REPLACE FUNCTION make_new_student_ingener(
	st_lastname VARCHAR(30),
	st_firstname VARCHAR(30),
	st_fathername VARCHAR(30),
	st_genderismale BOOL,
	st_age INT,
	pointnumber_osnovi_0 INT,
	pointnumber_algoritmi_1 INT,
	pointnumber_git_2 INT,
	pointnumber_postgresql_level1_4 INT,
	pointnumber_c_sharp_level1_14 INT,
	pointnumber_c_sharp_level2_15 INT,
	pointnumber_html_xml_24 INT,
	pointnumber_c_sharp_level3_16 INT,
	pointnumber_c_sharp_level4_17 INT,
	pointnumber_java_level1_11 INT,
	pointnumber_python_level1_7 INT,
	pointnumber_oracle_25 INT,
	pointnumber_c_plus_plus_26 INT,
	pointnumber_html5_css_3 INT,
	pointnumber_javascript_level1_18 INT
) RETURNS VARCHAR(20) AS
$$
DECLARE
	rez VARCHAR(10) := 'Неуспешно';
	st_id INT = (get_max_student_id() + 1);
	st_sub_id INT = (get_max_student_subject_id() + 1);
BEGIN
	INSERT INTO public.students (id, lastname, firstname, fathername, genderismale, age, specializationid)
	VALUES (st_id, st_lastname, st_firstname, st_fathername, st_genderismale, st_age, 4);

	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 0, pointnumber_osnovi_0);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 1, pointnumber_algoritmi_1);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 2, pointnumber_git_2);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 4, pointnumber_postgresql_level1_4);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 14, pointnumber_c_sharp_level1_14);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 15, pointnumber_c_sharp_level2_15);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 24, pointnumber_html_xml_24);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 16, pointnumber_c_sharp_level3_16);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 17, pointnumber_c_sharp_level4_17);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 11, pointnumber_java_level1_11);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 7, pointnumber_python_level1_7);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 25, pointnumber_oracle_25);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 26, pointnumber_c_plus_plus_26);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 3, pointnumber_html5_css_3);
	st_sub_id = (st_sub_id + 1);
	
	INSERT INTO public.student_subject (id, student_id, subject_id, pointnumber)
	VALUES (st_sub_id, st_id, 18, pointnumber_javascript_level1_18);
	st_sub_id = (st_sub_id + 1);

	rez := 'Успешно';
	RETURN rez;
END;
$$ language plpgsql;




DROP FUNCTION delete_student_by_id;
CREATE OR REPLACE FUNCTION delete_student_by_id(st_id INT) RETURNS VARCHAR(20) AS
$$
DECLARE
	rez VARCHAR(10) := 'Неуспешно';
BEGIN
	DELETE FROM public.student_subject
	WHERE student_id = st_id;
	DELETE FROM public.students
	WHERE id = st_id;

	rez := 'Успешно';
	RETURN rez;
END;
$$ language plpgsql;





SELECT make_new_student_python(
	'Пушкин',
	'Александр',
	'Сергеевич',
	TRUE,
	35,
	5,
	5,
	4,
	4,
	4,
	3,
	5,
	4
);

SELECT make_new_student_java(
	'Лермонтов',
	'Михаил',
	'Юрьевич',
	TRUE,
	26,
	5,
	4,
	4,
	3,
	5,
	4,
	5,
	5
);

SELECT make_new_student_c_sharp(
	'Гоголь',
	'Николай',
	'Васильевич',
	TRUE,
	36,
	5,
	5,
	3,
	4,
	5,
	4,
	4,
	5,
	5,
	5,
	4,
	4
);

SELECT make_new_student_admin(
	'Толстой',
	'Лев',
	'Николаевич',
	TRUE,
	76,
	5,
	4,
	4,
	4,
	5,
	4,
	3,
	5
);

SELECT make_new_student_ingener(
	'Шолохов',
	'Михаил',
	'Александрович',
	TRUE,
	49,
	5,
	4,
	4,
	5,
	5,
	4,
	3,
	4,
	4,
	5,
	4,
	4,
	4,
	5,
	5
);

SELECT delete_student_by_id(54);

DELETE FROM public.student_subject
WHERE student_id = 52;
DELETE FROM public.students
WHERE id = 52;