--8.4



CREATE TRIGGER check_insert_reservation BEFORE INSERT ON reservation FOR EACH ROW BEGIN
   DECLARE id_disponibilite INT;

   SET id_disponibilite = (SELECT id_disponibilite FROM disponibilite WHERE date_debut => NEW.date_debut AND date_fin<= NEW.date_fin AND id_materiel = NEW.id_materiel);

   IF id_disponibilite IS NOT NULL THEN

      INSERT INTO disponibilite (date_debut, date_fin, id_materiel) VALUES (NEW.date_debut, NEW.date_fin, NEW.id_materiel);
      SET id_disponibilite = LAST_INSERT_ID();
   ELSE
	SELECT "Il n'y a aucune disponibilité sur cette période";

   END IF;

   SET NEW.id_disponibilite = id_disponibilite;

END;