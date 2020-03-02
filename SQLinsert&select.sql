use master
use bdHospedagem

insert into tbCliente(nomeCliente,dataNasctoCliente,cpfCliente)
values 
     ('Karla De Carvalho Leite','28/01/1999',464752760)
    ,('Bruno Romero Alvez','22/08/1978',720377590)
    ,('Laura Germano','24/04/1997',051545490)
select * from tbCliente

insert into tbHospede(nomeHospede,dataNasctoHospede,emailHospede)
values 
     ('Karla De Carvalho Leite','28/01/1999','Kahtapimbas@gmail.com')
    ,('Bruno Romero Alvez','22/08/1978','brunao157crimin@gmail.com')
    ,('Alana de Rodriguez Leite','04/01/2005','AlanaRodriguez168@etec.com.')
    ,('José Mojica leite','27/04/1946','zuouosql@etec.com.br')
    ,('Laura Germano Alvez','24/04/1997','L.Germano1997@hotmail.com')
select * from tbHospede

insert into tbFormaPagto(descricaoFormaPagto)
values
     ('Dinheiro')
    ,('Cartão de crédito')
    ,('Cheque')
select * from tbFormaPagto

insert into tbTipoApto(descricaoTipoApto)
values
     ('Single')
    ,('Medium') 
    ,('Master') 
select * from tbTipoApto

insert into tbApto(descricaoApto,andarApto,codTipoApto)
values
     ('1',1,1) 
    ,('2',1,2) 
    ,('3',1,3) 
    ,('4',2,1)
    ,('5',2,2) 
    ,('6',2,3) 
select * from tbApto

insert into tbServico(descricaoServico,valorServico)
values
     ('Lavanderia',25.00)
    ,('Internet',35.00)
select * from tbServico

insert into tbProduto(descricaoProduto,valorProduto,quantidadeProduto)
values
     ('Suco ADES uva 350ml',6.00,30)
    ,('Espulmante SANTTANA 1L',40.00,12)
    ,('Refrigerante COCA-COLA cola 1L',8.50,24)
    ,('Vinho OLODUNT seco 1L',37.00,12)
select * from tbProduto

insert into tbReserva (dataReserva,horaReserva,codCliente,dataPrevistaCheckIn,dataPrevistaCheckOut,qtdeHospedes,qtdeAptos,valorReserva,valorEntrada)
values
     ('18/05/2019','16:33',1,'15/06/2019','20/06/2019',2,1,1500,875)
    ,('20/12/2019','09:46',1,'20/02/2020','25/02/2020',2,2,2250,1400)
    ,('27/12/2019','12:36',2,'22/01/2020','24/01/2020',1,1,600,150)
    ,('25/02/2020','03:03',3,'26/03/2020','28/03/2020',1,1,900,900)
    ,('27/09/2019','17:51',3,'27/01/2019','28/01/2019',2,1,900,750)
    ,('25/03/2019','21:18',3,'26/05/2019','27/05/2019',2,1,300,250)
    ,('27/12/2018','14:20',2,'31/12/2018','04/01/2019',2,1,1500,800)
    ,('12/05/2018','17:44',1,'10/06/2018','15/06/2018',2,2,2250,1400)
    ,('22/01/2019','01:27',3,'18/01/2019','23/01/2019',1,1,750,600)
    ,('27/03/2018','03:03',3,'22/04/2018','25/04/2018',2,1,1350,900)
select * from tbReserva

insert into tbReservaApto(codReserva,codTipoApto)
values
     (1,2)
    ,(2,1)
    ,(2,2)
    ,(3,2)
    ,(4,3)
    ,(5,3)
    ,(6,2)
    ,(7,2)
    ,(8,1)
    ,(8,2)
    ,(9,1)
    ,(10,3)
select * from tbReservaApto

insert into tbHospedagem(codReserva,codApto)
values
     (1,2)
    ,(2,1)
    ,(2,5)
    ,(3,5)
    ,(4,6)
    ,(5,3)
    ,(6,2)
    ,(7,2)
    ,(8,1)
    ,(8,2)
    ,(9,4)
    ,(10,6)
select * from tbHospedagem

insert into tbCheckIn(dataHoraCheckIn,dataHoraCheckOut,codHospede,codHospedagem)
values
	 ('15/05/2019 20:04','20/06/2019 15:25',1,1)
	,('15/05/2019 20:04','20/06/2019 15:35',2,1)
	,('20/02/2019 16:36','25/02/2019 17:55',2,2)
	,('20/02/2019 16:39','25/02/2019 23:55',3,2)
	,('22/01/2020 15:20','24/01/2020 13:25',2,3)
	,('26/01/2020 17:48','28/01/2020 14:05',3,4)
	,('27/01/2019 04:32','28/01/2019 11:50',3,5)
	,('27/01/2019 04:07','28/01/2019 11:33',5,5)
	,('26/05/2019 14:40','27/05/2019 22:53',4,6)
	,('26/05/2019 23:54','27/05/2019 10:57',2,6)
	,('31/12/2018 13:56','04/01/2019 18:22',5,7)
	,('31/12/2018 13:59','04/01/2019 18:25',1,7)
	,('10/06/2018 23:21','15/06/2018 16:46',5,8)
	,('10/06/2018 22:58','15/06/2018 18:53',3,8)
	,('18/01/2019 19:47','23/01/2019 15:26',4,9)
	,('22/04/2018 10:12','25/04/2018 18:53',4,10)
	,('22/04/2018 10:17','25/04/2018 18:58',3,10)
select * from tbCheckIn

insert into tbConta(dataAberturaConta,codHospedagem,valorTotalConta,dataFechamentoConta)
values
	('15/06/2019',1,'2000.00','20/06/2019')
	,('20/02/2020',2,'2750.00','25/02/2020')
	,('22/01/2020',3,'670.00','24/01/2020')
	,('26/01/2020',4,'1200.00','28/01/2020')
	,('27/01/2019',5,'1050.00','28/01/2019')
	,('26/05/2019',6,'885.00','27/05/2019')
	,('31/12/2018',7,'1225.00','04/01/2019')
	,('10/06/2018',8,'2750.00','15/12/2018')
	,('18/01/2019',9,'890.00','23/01/2019')
	,('22/04/2018',10,'1885.00','25/04/2018')
select * from tbConta


insert into tbParcela(valorParcela,codFormaPagto,codConta)
values
	 ('2000.00',2,1)
	,('1375.00',2,2)
	,('1375.00',2,2)
	,('670.00',1,3)
	,('400.00',1,4)
	,('400.00',2,4)
	,('400.00',2,4)
	,('1050.00',1,5)
	,('885.00',3,7)
	,('1225.00',3,8)
	,('2750.00',1,9)
	,('890.00',2,10)
select * from tbParcela

insert into tbContaServico(codConta,codServico,quantidade,subTotalContaServico)
values
	(1,1,1,'25.00')
	,(1,2,3,'105.00')
	,(2,1,3,'75.00')
	,(2,2,1,'35.00')
	,(3,1,5,'125.00')
	,(3,2,1,'35.00')
	,(4,1,1,'25.00')
	,(4,2,1,'35.00')
	,(5,1,7,'175.00')
	,(6,2,1,'35.00')
	,(6,1,1,'25.00')
	,(7,2,1,'35.00')
	,(8,1,3,'75.00')
	,(8,2,1,'35.00')
	,(9,1,3,'75.00')
	,(10,2,1,'35.00')
	,(10,1,1,'25.00')
select * from tbContaServico

insert into tbContaProduto(codConta,codProduto,quantidade,subTotalContaProduto)
values
	(1,2,4,'160.00')
	,(2,4,2,'74.00')
	,(2,1,3,'18.00')
	,(4,3,1,'8.50')
	,(6,1,1,'25.00')
select * from tbContaProduto

select count(codApto) from tbHospedagem
where codApto=1

select count(codReserva) from tbReserva
where datepart(MONTH,dataPrevistaCheckIn)=3

select max(valorTotalConta) from tbConta

select min(valorTotalConta) from tbConta

select count(codParcela) from tbParcela
where codFormaPagto=1

select sum(valorParcela) from tbParcela
where codFormaPagto=1 

select avg(valorParcela) from tbParcela
where codFormaPagto=2

select count(codCheckIn) from tbCheckIn
where datepart(YEAR,dataHoraCheckIn)=2019

select count(codCheckIn) from tbCheckIn
where codHospede=1

select count(codContaServico) from tbContaServico
where codServico=2

select avg(valorServico) from tbServico
