use master
drop database bdHospedagem

create database bdHospedagem
use bdHospedagem

create table tbTipoApto(
     codTipoApto int primary key identity (1,1)
    ,descricaoTipoApto varchar (30) not null
)
select * from tbTipoApto


create table tbCliente(
     codCliente int primary key identity (1,1)
    ,nomeCliente varchar (30) not null
    ,dataNasctoCliente date not null
    ,cpfCliente int not null
)
select * from tbCliente


create table tbFormaPagto(
     codFormaPagto int primary key identity (1,1)
    ,descricaoFormaPagto varchar (30) not null
)
select * from tbFormaPagto


create table tbServico( 
     codServico  int primary key identity (1,1)
    ,descricaoServico varchar (30) not null
    ,valorServico money not null
)
select * from tbServico


create table tbProduto(
     codProduto int primary key identity (1,1)
    ,descricaoProduto varchar (30) not null
    ,valorProduto money not null
    ,quantidadeProduto int not null
)
select * from tbProduto


create table tbHospede(
     codHospede int primary key identity (1,1)
    ,nomeHospede varchar (30) not null
    ,dataNasctoHospede date not null
    ,emailHospede varchar (30)
)
select * from tbHospede


create table tbApto(
    codApto int primary key identity (1,1)
    ,descricaoApto varchar (30) not null
    ,andarApto int not null
    ,codTipoApto int foreign key references tbTipoApto (codTipoApto)
)
select * from tbApto


create table tbReserva(
     codReserva int primary key identity (1,1)
    ,dataReserva date not null
    ,horaReserva time not null
    ,codCliente int foreign key references tbCliente (codCliente)
    ,dataPrevistaCheckIn datetime not null
    ,dataPrevistaCheckOut datetime not null
    ,qtdeHospedes int not null
    ,qtdeAptos int not null
    ,valorReserva money not null
    ,valorEntrada money not null
)
select * from tbReserva


create table tbHospedagem(
     codHospedagem int primary key identity (1,1)
    ,codApto int foreign key references tbApto (codApto)
    ,codReserva int foreign key references tbReserva (codReserva)
)
select * from tbHospedagem


create table tbCheckIn(
     codCheckIn int primary key identity (1,1)
    ,dataHoraCheckIn datetime not null
    ,dataHoraCheckOut datetime not null
    ,codHospede int foreign key references tbHospede (codHospede)
    ,codHospedagem int foreign key references tbHospedagem (codHospedagem)
)
select * from tbCheckIn


create table tbConta(
     codConta int primary key identity (1,1)
    ,dataAberturaConta date not null
    ,codHospedagem int foreign key references tbHospedagem (codHospedagem)
    ,valorTotalConta money not null
    ,dataFechamentoConta datetime not null
)
select * from tbConta


create table tbParcela(
     codParcela int primary key identity (1,1)
    ,valorParcela money not null
    ,codFormaPagto int foreign key references tbFormaPagto (codFormaPagto)
    ,codConta int foreign key references tbConta (codConta)
)
select * from tbParcela


create table tbContaServico(
     codContaServico int primary key identity (1,1)
    ,codConta int foreign key references tbConta (codConta)
    ,codServico int foreign key references tbServico (codServico)
    ,quantidade int not null
    ,subTotalContaServico money not null
)
select * from tbContaServico


create table tbContaProduto(
     codContaProduto int primary key identity (1,1)
    ,codConta int foreign key references tbConta (codConta)
    ,codProduto int foreign key references tbProduto (codProduto)
    ,quantidade int not null
    ,subTotalContaProduto money not null
)
select * from tbContaProduto


create table tbReservaApto(
     codReservaApto int primary key identity (1,1)
    ,codReserva int foreign key references tbReserva (codReserva)
    ,codTipoApto int foreign key references tbTipoApto (codTipoApto)
)
select * from tbReservaApto



