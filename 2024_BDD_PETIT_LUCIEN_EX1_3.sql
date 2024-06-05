CREATE TABLE Réservation(
   ID_reservation VARCHAR(50),
   Start_reserve DATETIME,
   End_reserve DATETIME,
   Num_Etudiant VARCHAR(50) NOT NULL,
   ID_eqp VARCHAR(50) NOT NULL,
   PRIMARY KEY(ID_reservation),
   FOREIGN KEY(Num_Etudiant) REFERENCES Utilisateur(Num_Etudiant),
   FOREIGN KEY(ID_eqp) REFERENCES Matériel(ID_eqp)
);

INSERT INTO Réservation(ID_reservation,Start_reserve,End_reserve,Num_Etudiant,ID_eqp)
VALUES(Reserv0,"2016-06-01T14:41:36-08:00","","12345678t","MACHINE1");

INSERT INTO Réservation(ID_reservation,Start_reserve,End_reserve,Num_Etudiant,ID_eqp)
VALUES(Reserv1,"2016-06-01T14:41:36-08:00","","02345678t","MACHINE2");

INSERT INTO Réservation(ID_reservation,Start_reserve,End_reserve,Num_Etudiant,ID_eqp)
VALUES(Reserv2,"2016-06-01T14:41:36-08:00","","62345678t","MACHINE3");

INSERT INTO Réservation(ID_reservation,Start_reserve,End_reserve,Num_Etudiant,ID_eqp)
VALUES(Reserv3,"2016-06-01T14:41:36-08:00","","82345678t","MACHINE4");

INSERT INTO Réservation(ID_reservation,Start_reserve,End_reserve,Num_Etudiant,ID_eqp)
VALUES(Reserv4,"2016-06-01T14:41:36-08:00","","32345678t","MACHINE5");