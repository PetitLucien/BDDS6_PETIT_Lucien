SELECT Prénom FROM utilisateur
INNER JOIN réservation ON utilisateur.Num_Etudiant = réservation.Num_Etudiant;




-- Une requête de jointure pour récupérer les informations
-- sur le matériel emprunté par un utilisateur donné
SELECT * FROM matériel
INNER JOIN réservation ON matériel.ID_eqp=réservation.ID_eqp WHERE Réservation.Num_Etudiant="02345678t";
