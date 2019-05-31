USE bdd_mysql;

-- 1. Créez une table pays avec 2 champs : code pays (4 caractères, clé primaire), nom pays (40 caractères maximum)
CREATE TABLE T_PAYS (
CODE_PAYS VARCHAR(4) PRIMARY KEY,
NOM_PAYS VARCHAR(40) NOT NULL
);

-- 2. Ajoutez une colonne courriel (75 caractères possibles) à la table CLIENTS. Puis modifiez la pour passer à 60 caractères. Pour finir, supprimez cette colonne.
ALTER TABLE clients
ADD COURRIEL VARCHAR(75);

ALTER TABLE clients
MODIFY COURRIEL VARCHAR(60);

ALTER TABLE clients
DROP COURRIEL;

-- 3. Créez une vue qui affiche le nom de la société, l’adresse, le téléphone et la ville des clients qui habitent à Toulouse, Strasbourg, Nantes ou Marseille.
CREATE VIEW maVue (SOCIETE, ADRESSE, TELEPHONE, VILLE)
AS select SOCIETE, ADRESSE, TELEPHONE, VILLE
from clients
where clients.VILLE IN ("Toulouse", "Strasbourg", "Nantes", "Marseille")
