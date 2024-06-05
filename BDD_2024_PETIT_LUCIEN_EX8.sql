-- EXERCICE 8

-- 8.1
-- Creation d'une table puis ajout de la clé étrangère

CREATE TABLE `bdd_tp_s6`.`disponibilite` (
`id_disponibilite` INT NOT NULL AUTO_INCREMENT, 
`id_materiel` VARCHAR(50) NOT NULL , 
`date_debut` DATETIME NOT NULL , 
`date_fin` DATETIME NOT NULL , 
PRIMARY KEY (`id_disponibilite`)
) ENGINE = InnoDB;

ALTER TABLE disponibilite 
ADD FOREIGN KEY (id_materiel) REFERENCES materiel(ID_eqp);

