UPDATE materiel
SET NB_en_pret = COUNT(reservation.ID_eqp) WHERE (reservation.End_reserve=NULL),
	NB_dispo= materiel.Quantite MINUS NB_en_pret
WHERE ID_eqp='MACHINE6';

