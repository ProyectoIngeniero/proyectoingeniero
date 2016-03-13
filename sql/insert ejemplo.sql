insert into ComunidadAutonoma(CA_ID, CA_Nombre)
values(1, 'Cataluya')

insert into ComunidadAutonoma(CA_ID, CA_Nombre)
values(2, 'Madrid')

insert into ComunidadAutonoma
values(3, 'Andalucia')

insert into Provincia
values( 1, 2,'Madrid')

insert into Provincia
values (2, 1, 'Barcelona')

insert into Cliente
values( '11384H', 'Juan Jose', 'Martinez', 'C/Bernardino 2', '28021', 1, '913382888', '12888271777')
insert into Cliente
values('11383K', 'Alfonso', 'Loira', 'C/Apache 34', '28023', 1, '913334888', '123423471777')
insert into Cliente
values('123454L', 'Amadeo', 'Lerra', 'C/Portugal 4', '08021', 2, '933485888', '1282344777')

insert into TipoBien
values(1, 'Piso')
insert into TipoBien
values(2,'chalet')
insert into TipoBien
values(3, 'solar')

insert into Comercial
values('113384H', 'Juan Alberto', 'Espado', 'C/Alcala 321', '28038', 1, '914538288', '1')
insert into Comercial
values('11323K', 'Luis', 'Canto', 'C/Esplandiu 4', '28033', 1, '913379888', '2')
insert into Comercial
values('22354L', 'Pedro', 'Alcantara', 'C/Portugal 4', '08021', 2, '933485875', '3')

insert into Oferta
values(1, 1, 'C/Samba, 4', 1, 'v', 100000, '11323K', '11384H')
insert into Oferta
values(2, 2, 'C/Salca, 34', 2, 'A', 1000, '113384H', '11383K')
insert into Oferta
values(3, 1, 'C/Sabueso, 83', 1, 'v',100000, '11323K', '11383K')
insert into Oferta
values(4, 2, 'C/Llobregat, 34', 2, 'v', 100000, '11323K', '11384H')
insert into Oferta
values(5, 1, 'C/Alcala, 197', 1, 'A', 500, '113384H', '11384H')
insert into Oferta
values(6, 2, 'C/Alquimia, 34', 2, 'v', 100000, '22354L', '123454L')
insert into Oferta
values(7, 1, 'C/Alcosta, 867', 1, 'v', 100000, '11323K', '123454L')
insert into Oferta
values(8, 1, 'C/Lorca, 33', 1, 'v', 100000, '22354L', '11384H')
insert into Oferta
values(9, 1, 'C/Arboleda, 32', 1, 'v', 100000, '11323K', '11384H')
insert into Oferta
values(10, 1, 'C/Arboleda, 32', 1, 'V', 100000, '11323K', '11384H')
INSERT INTO Oferta
VALUES (11, 1, 'C/Simbiosis, 32', 1, 'V', 100000, '11323K', '11384H')

INSERT INTO TipoTransporte
VALUES (1, 'Metro')
INSERT INTO TipoTransporte
VALUES (2, 'Cercanias')
INSERT INTO TipoTransporte
VALUES (3, 'Bus')

INSERT INTO Transporte
VALUES (1, 'Sol', 1)
INSERT INTO Transporte
VALUES (2, 'La Musas', 1)
INSERT INTO Transporte
VALUES (3, 'Alvarado', 1)
INSERT INTO Transporte
VALUES (4, 'Pacífico', 1)
INSERT INTO Transporte
VALUES (5, 'Sants', 1)
INSERT INTO Transporte
VALUES (6, 'Atocha', 2)
INSERT INTO Transporte
VALUES (7, 'Chamartin', 2)
INSERT INTO Transporte
VALUES (8, '12', 3)
INSERT INTO Transporte
VALUES (9, '24', 3)
INSERT INTO Transporte
VALUES (10, '2', 3)
INSERT INTO Transporte
VALUES (11, '123', 3)
INSERT INTO Transporte
VALUES (12, '56', 3)
INSERT INTO Transporte
VALUES (13, '34', 3)
INSERT INTO Transporte
VALUES (14, '5', 3)
INSERT INTO OfertaTransporte
VALUES (1, 1)
INSERT INTO OfertaTransporte
VALUES (1, 2)
INSERT INTO OfertaTransporte
VALUES (1, 3)
INSERT INTO OfertaTransporte
VALUES (3, 1)
INSERT INTO OfertaTransporte
VALUES (4, 4)
INSERT INTO OfertaTransporte
VALUES (4, 5)
INSERT INTO OfertaTransporte
VALUES (6, 1)
INSERT INTO OfertaTransporte
VALUES (6, 2)
INSERT INTO OfertaTransporte
VALUES (6, 6)
INSERT INTO OfertaTransporte
VALUES (8, 8)
INSERT INTO OfertaTransporte
VALUES (8, 9)
INSERT INTO OfertaTransporte
VALUES (8, 10)
INSERT INTO OfertaTransporte
VALUES (8, 11)
INSERT INTO OfertaTransporte
VALUES (9, 1)
INSERT INTO OfertaTransporte
VALUES (9, 8)
INSERT INTO OfertaTransporte
VALUES (10, 3)
INSERT INTO OfertaTransporte
VALUES (10, 10)
INSERT INTO OfertaTransporte
VALUES (10, 11)
INSERT INTO OfertaTransporte
VALUES (10, 12)
INSERT INTO OfertaTransporte
VALUES (10, 5)