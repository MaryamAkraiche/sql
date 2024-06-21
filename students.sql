--Affiche toutes les données.--
SELECT * 
FROM students;
--Affiche uniquement les prénoms.--
SELECT prenom
FROM students;
--Affiche les prénoms, les dates de naissance et l’école de chacun.--
SELECT prenom, datenaissance, school
FROM students;
--Affiche uniquement les élèves qui sont de sexe féminin.--
SELECT nom, prenom, genre
FROM students
WHERE genre = 'F';
--Affiche uniquement les élèves qui font partie de l’école d'Addy.--
SELECT * 
FROM students 
WHERE School = (SELECT School FROM students WHERE Nom = 'Addy');
--Affiche uniquement les prénoms des étudiants, par ordre inverse à l’alphabet (DESC).--
SELECT prenom
FROM students
ORDER BY prenom DESC;
--Ajoute Ginette Dalor, née le 01/01/1930 et affecte-la à Bruxelles, toujours en SQL.--
INSERT INTO students (nom, prenom, datenaissance, school, genre) 
VALUES('Ginette','Dalor','1930-01-01','2','F');
--Modifie Ginette (toujours en SQL) et change son sexe et son prénom en “Omer”.--
UPDATE students
SET prenom = 'Omer', genre = 'M'
WHERE idStudent = 31;
--Supprimer la personne dont l’ID est 3.--
DELETE FROM students WHERE students.idStudent = 3;
--Modifier le contenu de la colonne School de sorte que "1" soit remplacé par "Liege" et "2" soit remplacé par "Gent". (attention au type de la colonne !)--
UPDATE school
SET School = CASE
    WHEN idschool = '1' THEN 'Liege'
    WHEN idschool = '2' THEN 'Gent'
    ELSE School
END;