-- Exercice 7

-- Afficher tous les utilisateurs ayant emprunté au moins un équipement 
SELECT DISTINCT utilisateur.Num_Etudiant, NOM, Prénom, Email FROM utilisateur
INNER JOIN reservation USING (Num_Etudiant);

-- Afficher les équipements n’ayant jamais été empruntés 
SELECT ID_eqp FROM materiel WHERE ID_eqp NOT IN (SELECT ID_eqp FROM reservation);

-- Afficher les équipements ayant été emprunté plus de 3 fois
 
SELECT ID_eqp, COUNT(*) as NB_emprunt FROM materiel INNER JOIN reservation USING (ID_eqp) 
GROUP BY ID_eqp HAVING COUNT(*)>3;

-- Afficher le nombre d’emprunt pour chaque utilisateur

SELECT utilisateur.Num_Etudiant, NOM, Prénom, Email, COUNT(reservation.Num_Etudiant) as nb_reservation
FROM utilisateur 
LEFT JOIN reservation USING (Num_Etudiant) GROUP BY utilisateur.Num_Etudiant;
