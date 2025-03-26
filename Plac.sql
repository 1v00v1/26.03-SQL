CREATE DATABASE Plac
GO
USE Plac
GO

CREATE TABLE Voce(
IDVoce int CONSTRAINT PK_Voce PRIMARY KEY IDENTITY,
Naziv nvarchar(50)
)

CREATE TABLE Dobavljac(
IDDobavljac int CONSTRAINT PK_Dobavljac PRIMARY KEY IDENTITY,
Ime nvarchar(50),
Prezime nvarchar(50),
Adresa nvarchar(50),
BrojMobitela nvarchar(50)
)

CREATE TABLE Sorta (
IDSorta int CONSTRAINT PK_Sorta PRIMARY KEY IDENTITY,
Naziv nvarchar(50),
MinimalnaKolicina int,
TrenutnaKolicina int,
NabavnaCijena float,
prodajnaCijena float,
VoceID int  CONSTRAINT FK_Voce_Sorta FOREIGN KEY REFERENCES Voce(IDVoce) NOT NULL
)

CREATE TABLE DobavljacSorta(
IDDobSorta int CONSTRAINT PK_DobSorta PRIMARY KEY IDENTITY,
DobavljacID int CONSTRAINT FK_Dob FOREIGN KEY REFERENCES Dobavljac(IDDobavljac) NOT NULL,
SortaID int CONSTRAINT FK_Sorta FOREIGN KEY REFERENCES Sorta(IDSorta) NOT NULL
)