-- 8.2

ALTER TABLE reservation 
ADD COLUMN id_disponibilite INT NOT NULL,
ADD FOREIGN KEY (id_disponibilite) REFERENCES disponibilite(id_disponibilite);

