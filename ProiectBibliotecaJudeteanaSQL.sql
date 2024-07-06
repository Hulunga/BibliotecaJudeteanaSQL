create database BibliotecaJudeteana;
use BibliotecaJudeteana;

CREATE TABLE AUTOR (
	ID INT PRIMARY KEY,
	NumeLiteral NVARCHAR(50),
	NumeReal NVARCHAR(50) NOT NULL,
	DataNasterii DATE,
	DataDeces Date
	);

CREATE TABLE CATEGORII (
	ID INT PRIMARY KEY,
	DenumireCategorie NVARCHAR(50) NOT NULL
	);

CREATE TABLE CARTE (
	ID INT PRIMARY KEY,
	Titlu NVARCHAR(100) NOT NULL,
	IdAutor INT,
	IdCategorie INT,
	NumeSerie NVARCHAR(100),
	NrVolum INT,
	DataPrimeiPublicari DATE,
	FOREIGN KEY (IdAutor) REFERENCES AUTOR(ID),
	FOREIGN KEY (IdCategorie) REFERENCES CATEGORII(ID)
	);

CREATE TABLE INVENTAR (
	ID INT PRIMARY KEY,
	IdCarte INT,
	Total INT NOT NULL,
	NrDisponibilPentruImprumut INT NOT NULL,
	NrImprumutat INT NOT NULL,
	FOREIGN KEY (IdCarte) REFERENCES CARTE(ID)
	);

create TABLE ABONAT (
	ID INT PRIMARY KEY,
	Nume NVARCHAR(100) NOT NULL,
	Adresa NVARCHAR(200) NOT NULL,
	DataNasterii DATE
	);

create TABLE IMPRUMUT (
	ID INT PRIMARY KEY,
	IdAbonat INT,
	IdCarte INT,
	DataImprumut DATE,
	DataRealaRetur DATE,
	NrNotificari INT,
	FOREIGN KEY (IdAbonat) REFERENCES ABONAT(ID),
	FOREIGN KEY (IdCarte) REFERENCES CARTE(ID)
	);
INSERT INTO AUTOR (ID, NumeLiteral, NumeReal, DataNasterii, DataDeces) VALUES
(1,'Dante','Dante Alighieri', '1265-05-21', '1321-09-14'),
(2, 'Shakespeare', 'William Shakespeare', '1564-04-23','1616-04-23'),
(3, 'Dumas', 'Alexandre Dumas', '1802-07-24', '1870-12-05'),
(4, 'Eliot', 'George Eliot', '1819-11-22', '1880-12-22'),
(5, 'Camus', 'Albert Camus', '1913-11-07', '1960-01-04'),
(6, 'Assata', 'Assata Shakur', '1947-07-16', NULL),
(7, 'Obama', 'Barack Obama', '1961-08-04', NULL);

INSERT INTO CATEGORII (ID, DenumireCategorie) VALUES
(1, 'Fictiune'),
(2, 'Biografii si memorii'),
(3, 'Istorie'),
(4, 'Roman Istoric'),
(5, 'Poezie');

INSErT INTO ABONAT (ID, Nume, Adresa, DataNasterii) VALUES
(1, 'Hulunga Madalin', 'Ale. Arh. Duiliu Marcu, Craiova', '2002-05-24'),
(2, 'Constantin Marius', 'Str. Victoriei 22, Slatina', '1998-05-02'),
(3, 'Buda Adrian Silviu', 'Calea Bucuresti, Craiova', '1998-11-17'),
(4, 'Radulescu Ana', 'Bd. Unirii nr. 30, Iasi', '1990-05-25'),
(5, 'Constantinescu Elena', 'Str. Victoriei nr. 25, Brasov', '1995-11-12'); 

INSERT INTO CARTE (ID, Titlu, IdAutor, IdCategorie, NumeSerie, NrVolum, DataPrimeiPublicari) Values
(1, 'Divina Comedie', 1, 1, NULL, NULL, '1320-01-01'),
(2,'Hamlet',2,1,NULL,NULL, '1603-01-01'),
(3, 'Contele de Monte Cristo', 3, 1, NULL, NULL, '1844-01-01'),
(4, 'Middlemarch', 4, 1, NULL, NULL, '1871-01-01'),
(5, 'Strainul', 5, 1, NULL, NULL, '1942-01-01'),
(6, 'Infernul', 1, 1, 'Divina Comedie', 1, '1320-01-01'),
(7, 'Romeo si Julieta', 2, 1, NULL, NULL, '1597-01-01'),
(8, 'Cei trei muschetari', 3, 1, 'DArtagnan Romanele', 1, '1844-01-01'),
(9, 'Mill on the Floss', 4, 1, NULL, NULL, '1860-01-01'),
(10, 'Ciuma', 5, 1, NULL, NULL, '1947-01-01'),
(11, 'Paradisul', 1, 1, 'Divina Comedie', 2, '1320-01-01'),
(12, 'Macbeth', 2, 1, NULL, NULL, '1623-01-01'),
(13, 'Dama cu Camelii', 3, 1, NULL, NULL, '1848-01-01'),
(14, 'Middlemarch', 4, 1, NULL, NULL, '1871-01-01'),
(15, 'Caderea in timp', 5, 1, NULL, NULL, '1956-01-01'),
(16, 'Paradisul', 1, 1, 'Divina Comedie', 3, '1320-01-01'),
(17, 'Regele Lear', 2, 1, NULL, NULL, '1608-01-01'),
(18, 'Contele de Monte Cristo', 3, 1, NULL, NULL, '1844-01-01'),
(19, 'Middlemarch', 4, 1, NULL, NULL, '1871-01-01'),
(20, 'Mitul lui Sisif', 5, 1, NULL, NULL, '1942-01-01'),
(21, 'Assata: An Autobiography', 6, 2, NULL, NULL, '1995-01-01'),
(22, 'Dreams from My Father: A Story of Race and Inheritance', 7, 2, NULL, NULL, '1995-01-01'),
(23, 'The Audacity of Hope: Thoughts on Reclaiming the American Dream', 7, 2, NULL, NULL, '1995-01-01');


INSERT INTO INVENTAR (ID, IdCarte, Total, NrDisponibilPentruImprumut, NrImprumutat) VALUES
(1, 1,10, 8, 2),
(2, 2, 15, 12, 3),
(3, 3, 20, 18, 2),
(4, 4, 10, 7, 3),
(5, 5, 10, 9, 1),
(6, 6,5, 3, 2),
(7, 7, 10, 6, 4),
(8, 8, 15, 11, 4),
(9, 9, 20, 16, 4),
(10, 10, 5, 4, 1),
(11, 11, 10, 8, 2),
(12, 12, 15,13, 2),
(13, 13, 20, 17, 3),
(14, 14, 10, 9, 1),
(15, 15, 10, 7, 3),
(16, 16, 5, 3, 2),
(17, 17, 10, 6, 4),
(18, 18, 15, 11, 4),
(19, 19, 20, 16, 4),
(20, 20,5, 4, 1);

INSERT INTO IMPRUMUT (ID, IdAbonat, IdCarte, DataImprumut, DataRealaRetur, NrNotificari) VALUES
(1, 1, 1, '2023-04-10', '2023-05-10', 0),
(2, 2, 2, '2023-04-15', '2023-05-15', 0),
(3, 3, 3, '2023-04-20', '2024-05-20', 1),
(4, 4, 4, '2022-04-25', '2022-05-25', 2),
(5, 5, 5, '2024-04-30', '2024-05-30', 0),
(6, 1, 6, '2023-05-05', '2024-06-05', 0),
(7, 2, 7, '2024-05-10', '2024-06-10', 1),
(8, 3, 8, '2021-05-15', '2021-06-15', 2),
(9, 4, 9, '2024-05-20', '2024-06-20', 0),
(10, 5, 10, '2024-05-25', '2024-06-25', 0),
(11, 1, 11, '2024-06-01', '2024-07-01', 0),
(12, 2, 12, '2022-06-05', '2022-07-05', 1),
(13, 3, 13, '2024-06-10', '2024-07-10', 2),
(14, 4, 14, '2024-06-15', '2024-07-15', 0),
(15, 5, 15, '2021-06-20', '2022-07-20', 0),
(16, 1, 16, '2024-06-25', '2024-07-25', 0),
(17, 2, 17, '2024-07-01', '2024-08-01', 1),
(18, 3, 18, '2023-07-05', '2024-08-05', 2),
(19, 4, 19, '2024-07-10', '2024-08-10', 0),
(20, 5, 20, '2021-07-15', '2021-08-15', 0);

select * from ABONAT

--2.
SELECT TOP 3 c.*
FROM CARTE c
JOIN CATEGORII cat ON c.IdCategorie = cat.ID
JOIN ABONAT a ON YEAR(c.DataPrimeiPublicari) = YEAR(a.DataNasterii)
WHERE cat.DenumireCategorie = 'Biografii si memorii'
  AND a.ID = 5
ORDER BY c.DataPrimeiPublicari;

--3.
CREATE VIEW RaportBiblioteca AS
SELECT 
    a.NumeLiteral AS 'Numele sub care autorul a publicat carti',
    a.NumeReal AS 'Numele real al autorului',
    c.Titlu AS 'Titlul cartii scrise',
    c.NumeSerie AS 'Numele seriei din care face parte cartea',
    cat.DenumireCategorie AS 'Categoria cartii'
FROM 
    CARTE c
JOIN 
    AUTOR a ON c.IdAutor = a.ID
JOIN 
    CATEGORII cat ON c.IdCategorie = cat.ID;

SELECT * FROM RaportBiblioteca;

--4;
CREATE PROCEDURE AbonatiIntarziati
AS
BEGIN
    SELECT 
        a.ID AS 'ID Abonat',
        a.Nume AS 'Nume Abonat',
        a.Adresa AS 'Adresa',
        i.ID AS 'ID Imprumut',
        i.DataImprumut AS 'Data Imprumutului',
        i.DataRealaRetur AS 'Data Reala a Returului'
    FROM 
        IMPRUMUT i
    JOIN 
        ABONAT a ON i.IdAbonat = a.ID
    WHERE 
        i.DataRealaRetur > DATEADD(day, 30, i.DataImprumut)
    ORDER BY 
        a.ID;
END;


EXEC AbonatiIntarziati;


--5.
CREATE TRIGGER ActualizareImprumutate
ON IMPRUMUT
AFTER INSERT
AS
BEGIN
    UPDATE Inventar
    SET NrImprumutat = NrImprumutat + 1
    WHERE IdCarte IN (SELECT IdCarte FROM inserted);
	Print 'S-a imprumutat o noua carte.'
END;


--test
INSERT INTO IMPRUMUT (ID,IdAbonat, IdCarte, DataImprumut, DataRealaRetur, NrNotificari)
VALUES (21,1, 1, '2024-05-10', NULL, 0);

INSERT INTO IMPRUMUT (ID, IdAbonat, IdCarte, DataImprumut, DataRealaRetur, NrNotificari)
VALUES (22,2, 3, '2024-05-11', NULL, 0);

INSERT INTO IMPRUMUT (ID, IdAbonat, IdCarte, DataImprumut, DataRealaRetur, NrNotificari)
VALUES (23,3, 5, '2024-05-12', NULL, 0);


SELECT top(5) IdCarte, NrImprumutat
FROM Inventar
WHERE IdCarte IN (SELECT IdCarte FROM IMPRUMUT);
