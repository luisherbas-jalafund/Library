SET IMPLICIT_TRANSACTIONS OFF
GO

USE master
GO

DROP DATABASE LibraryDb
GO

CREATE DATABASE LibraryDb
GO

USE LibraryDb
GO

CREATE TABLE Book(
	Id UNIQUEIDENTIFIER PRIMARY KEY default NEWID(),
	Title VARCHAR(100) NOT NULL,
	Category VARCHAR(30),
	Author VARCHAR(20)
);
GO

CREATE TABLE Sale(
	Id  UNIQUEIDENTIFIER PRIMARY KEY default NEWID(),
	IdBook UNIQUEIDENTIFIER NOT NUll FOREIGN KEY(IdBook) REFERENCES Book (Id)
);
GO

INSERT INTO Book VALUES('33c361a2-6f57-11ec-a028-9bdf8a68bac0','La semilla del diablo', 'Terror', 'Ira Levin');

INSERT INTO Book VALUES('33c362b0-6f57-11ec-a029-0bc8025cf72b', 'Dracula', 'Terror', 'Bram Stoker');
INSERT INTO Book VALUES('db28ebd5-9faa-43f7-8ab8-e963bf699cae', 'Frankesnstein', 'Terror', 'Mary Shelley');
INSERT INTO Book VALUES('635c5037-8901-4f88-ae71-b6216bde5c18', 'Misery', 'Terror', 'Stephen King');
INSERT INTO Book VALUES('c192c4fd-f4dc-4f9a-9f62-c0005bb895af', 'Carrie', 'Terror', 'Stephen King');
INSERT INTO Book VALUES('fa546efd-f6c0-4f29-b2c5-126ddd80c1b0', 'El gato Negro', 'Terror', 'Edgar Allan Poe');
INSERT INTO Book VALUES('c3d3a892-3bc0-46aa-8d17-46b843027f50', 'Vuelta de tuerca', 'Terror', 'Henry James');
INSERT INTO Book VALUES('cd05957d-cd23-45b4-9882-154abb571e40', 'El fantasma de la ópera', 'Terror', 'Gastón Leroux');
INSERT INTO Book VALUES('b715b470-7ee1-4240-8b8d-d1425c783a17', 'El exorcista', 'Terror', 'William Peter Blatty');
INSERT INTO Book VALUES('1f52a3de-1c4a-40a3-b9dd-e4de1742bf64', 'Entrevista con el vampiro', 'Terror', 'Anne Rice');
INSERT INTO Book VALUES('31695a03-a999-49b2-a61a-0034b7abaabc', 'Cementerio de animales', 'Terror', 'Stephen King');
INSERT INTO Book VALUES('5ee443d7-e624-4d4d-9e5a-d34d6cfe2a76', 'La llamada de Cthulhu', 'Terror', 'H.P. Lovecraft');
INSERT INTO Book VALUES('efde028c-c96b-4db1-a692-5ee910f0db85', 'El vampiro', 'Terror', 'John William');
INSERT INTO Book VALUES('e83a1525-c834-4ef1-a8d4-e77d3f8b61b2', 'El caso de Charles Dexter Ward', 'Terror', 'H.P. Lovecraft');
INSERT INTO Book VALUES('6314b7f3-2ec5-4fc8-81b5-343a4c0b6ea9', 'Déjame entrar', 'Terror', 'John Ajvide');
INSERT INTO Book VALUES('f9add7d7-2bf6-4ace-82e4-22a3fe476ad6', 'El resplandor', 'Terror', 'Stephen King');
INSERT INTO Book VALUES('4d74df62-4e58-44c4-bc7d-14207c544e2b', 'La máscara de la muerte roja ', 'Terror', 'Edgar Allan Poe');
INSERT INTO Book VALUES('d9df31a6-46a6-4df5-8f77-d5ddb3753479', 'La casa infernal', 'Terror', 'Richard Matheson');
INSERT INTO Book VALUES('1e20ed65-5b58-493b-9402-ad74dda38629', 'El ritual', 'Terror', 'Adam Nevill');
INSERT INTO Book VALUES('25e37d85-12d0-49b4-a6ff-997dab019330', 'Cujo', 'Terror', 'Stephen King');
GO

--10 La llamada de Cthulhu--
INSERT INTO Sale(IdBook) VALUES('5ee443d7-e624-4d4d-9e5a-d34d6cfe2a76');
INSERT INTO Sale(IdBook) VALUES('5ee443d7-e624-4d4d-9e5a-d34d6cfe2a76');
INSERT INTO Sale(IdBook) VALUES('5ee443d7-e624-4d4d-9e5a-d34d6cfe2a76');
INSERT INTO Sale(IdBook) VALUES('5ee443d7-e624-4d4d-9e5a-d34d6cfe2a76');
INSERT INTO Sale(IdBook) VALUES('5ee443d7-e624-4d4d-9e5a-d34d6cfe2a76');
INSERT INTO Sale(IdBook) VALUES('5ee443d7-e624-4d4d-9e5a-d34d6cfe2a76');
INSERT INTO Sale(IdBook) VALUES('5ee443d7-e624-4d4d-9e5a-d34d6cfe2a76');
INSERT INTO Sale(IdBook) VALUES('5ee443d7-e624-4d4d-9e5a-d34d6cfe2a76');
INSERT INTO Sale(IdBook) VALUES('5ee443d7-e624-4d4d-9e5a-d34d6cfe2a76');
INSERT INTO Sale(IdBook) VALUES('5ee443d7-e624-4d4d-9e5a-d34d6cfe2a76');
INSERT INTO Sale(IdBook) VALUES('5ee443d7-e624-4d4d-9e5a-d34d6cfe2a76');
INSERT INTO Sale(IdBook) VALUES('5ee443d7-e624-4d4d-9e5a-d34d6cfe2a76');
GO
--9 El resplandor--
INSERT INTO Sale(IdBook) VALUES('f9add7d7-2bf6-4ace-82e4-22a3fe476ad6');
INSERT INTO Sale(IdBook) VALUES('f9add7d7-2bf6-4ace-82e4-22a3fe476ad6');
INSERT INTO Sale(IdBook) VALUES('f9add7d7-2bf6-4ace-82e4-22a3fe476ad6');
INSERT INTO Sale(IdBook) VALUES('f9add7d7-2bf6-4ace-82e4-22a3fe476ad6');
INSERT INTO Sale(IdBook) VALUES('f9add7d7-2bf6-4ace-82e4-22a3fe476ad6');
INSERT INTO Sale(IdBook) VALUES('f9add7d7-2bf6-4ace-82e4-22a3fe476ad6');
INSERT INTO Sale(IdBook) VALUES('f9add7d7-2bf6-4ace-82e4-22a3fe476ad6');
INSERT INTO Sale(IdBook) VALUES('f9add7d7-2bf6-4ace-82e4-22a3fe476ad6');
INSERT INTO Sale(IdBook) VALUES('f9add7d7-2bf6-4ace-82e4-22a3fe476ad6');
GO
--8 Misery--
INSERT INTO Sale(IdBook) VALUES('635c5037-8901-4f88-ae71-b6216bde5c18');
INSERT INTO Sale(IdBook) VALUES('635c5037-8901-4f88-ae71-b6216bde5c18');
INSERT INTO Sale(IdBook) VALUES('635c5037-8901-4f88-ae71-b6216bde5c18');
INSERT INTO Sale(IdBook) VALUES('635c5037-8901-4f88-ae71-b6216bde5c18');
INSERT INTO Sale(IdBook) VALUES('635c5037-8901-4f88-ae71-b6216bde5c18');
INSERT INTO Sale(IdBook) VALUES('635c5037-8901-4f88-ae71-b6216bde5c18');
INSERT INTO Sale(IdBook) VALUES('635c5037-8901-4f88-ae71-b6216bde5c18');
INSERT INTO Sale(IdBook) VALUES('635c5037-8901-4f88-ae71-b6216bde5c18');
GO

--7 Dracula--
INSERT INTO Sale(IdBook) VALUES('33c362b0-6f57-11ec-a029-0bc8025cf72b');
INSERT INTO Sale(IdBook) VALUES('33c362b0-6f57-11ec-a029-0bc8025cf72b');
INSERT INTO Sale(IdBook) VALUES('33c362b0-6f57-11ec-a029-0bc8025cf72b');
INSERT INTO Sale(IdBook) VALUES('33c362b0-6f57-11ec-a029-0bc8025cf72b');
INSERT INTO Sale(IdBook) VALUES('33c362b0-6f57-11ec-a029-0bc8025cf72b');
INSERT INTO Sale(IdBook) VALUES('33c362b0-6f57-11ec-a029-0bc8025cf72b');
INSERT INTO Sale(IdBook) VALUES('33c362b0-6f57-11ec-a029-0bc8025cf72b');
GO

--6 Carrie--
INSERT INTO Sale(IdBook) VALUES('c192c4fd-f4dc-4f9a-9f62-c0005bb895af');
INSERT INTO Sale(IdBook) VALUES('c192c4fd-f4dc-4f9a-9f62-c0005bb895af');
INSERT INTO Sale(IdBook) VALUES('c192c4fd-f4dc-4f9a-9f62-c0005bb895af');
INSERT INTO Sale(IdBook) VALUES('c192c4fd-f4dc-4f9a-9f62-c0005bb895af');
INSERT INTO Sale(IdBook) VALUES('c192c4fd-f4dc-4f9a-9f62-c0005bb895af');
INSERT INTO Sale(IdBook) VALUES('c192c4fd-f4dc-4f9a-9f62-c0005bb895af');
GO
--5 El exorcista--
INSERT INTO Sale(IdBook) VALUES('b715b470-7ee1-4240-8b8d-d1425c783a17');
INSERT INTO Sale(IdBook) VALUES('b715b470-7ee1-4240-8b8d-d1425c783a17');
INSERT INTO Sale(IdBook) VALUES('b715b470-7ee1-4240-8b8d-d1425c783a17');
INSERT INTO Sale(IdBook) VALUES('b715b470-7ee1-4240-8b8d-d1425c783a17');
INSERT INTO Sale(IdBook) VALUES('b715b470-7ee1-4240-8b8d-d1425c783a17');
GO
--4 El fantasma de la ópera--
INSERT INTO Sale(IdBook) VALUES('cd05957d-cd23-45b4-9882-154abb571e40');
INSERT INTO Sale(IdBook) VALUES('cd05957d-cd23-45b4-9882-154abb571e40');
INSERT INTO Sale(IdBook) VALUES('cd05957d-cd23-45b4-9882-154abb571e40');
INSERT INTO Sale(IdBook) VALUES('cd05957d-cd23-45b4-9882-154abb571e40');
GO
--3 Déjame entrar--
INSERT INTO Sale(IdBook) VALUES('6314b7f3-2ec5-4fc8-81b5-343a4c0b6ea9');
INSERT INTO Sale(IdBook) VALUES('6314b7f3-2ec5-4fc8-81b5-343a4c0b6ea9');
INSERT INTO Sale(IdBook) VALUES('6314b7f3-2ec5-4fc8-81b5-343a4c0b6ea9');
GO
--2 El gato Negro --
INSERT INTO Sale(IdBook) VALUES('fa546efd-f6c0-4f29-b2c5-126ddd80c1b0');
INSERT INTO Sale(IdBook) VALUES('fa546efd-f6c0-4f29-b2c5-126ddd80c1b0');
GO
-- 1 El ritual--
INSERT INTO Sale(IdBook) VALUES('1e20ed65-5b58-493b-9402-ad74dda38629');
GO


--SELECT Title from Book  INNER JOIN  Sale ON Book.Id = Sale.IdBook  GROUP BY Book.Title ORDER BY COUNT(*) DESC
--SELECT TOP(10) IdBook, Title  , COUNT(IdBook) AS VENTAS from Book  INNER JOIN  Sale  ON Book.Id = Sale.IdBook GROUP BY IdBook, Title ORDER BY VENTAS DESC
--SELECT * FROM Book WHERE Id IN (SELECT TOP(10) IdBook from Book  INNER JOIN  Sale  ON Book.Id = Sale.IdBook GROUP BY IdBook, Title ORDER BY COUNT(IdBook) DESC)

