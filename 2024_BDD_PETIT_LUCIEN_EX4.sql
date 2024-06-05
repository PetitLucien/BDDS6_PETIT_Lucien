SELECT COUNT(*) AS Total_reserve 
FROM reservation 
WHERE ((reservation.Start_reserve BETWEEN '2016-05-01' AND '2016-06-01') AND
(reservation.End_reserve BETWEEN '2016-06-01' AND '2016-08-01'));


SELECT COUNT(DISTINCT reservation.Num_Etudiant) AS Nombre_Utilisateur FROM reservation ;