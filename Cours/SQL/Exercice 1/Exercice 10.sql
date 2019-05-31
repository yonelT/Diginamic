USE bdd_mysql;

-- 1. Insérez une nouvelle catégorie de produits nommée «fruits et légumes», en respectant les contraintes.
INSERT INTO categories
VALUES (9, "fruits et légumes", "Fruits, Légumes");

-- 2. Créez un nouveau fournisseur « Grandma » (no_fournisseur = 30) avec les mêmes coordonnées que le fournisseur « Grandma Kellly’s Homestead ».
INSERT INTO fournisseurs
select 30, "Grandma", ADRESSE, VILLE, CODE_POSTAL, PAYS, TELEPHONE, FAX
from fournisseurs where SOCIETE="Grandma Kelly's Homestead";


-- 3. Attribuer les produits de « Grandma Kelly’s Homestead » au nouveau fournisseur créé (« Grandma »).
UPDATE produits
SET NO_FOURNISSEUR = 30
where NO_FOURNISSEUR = 3;

-- 4. Supprimez l’ancien fournisseur «Grandma Kelly’s Homestead»
DELETE FROM fournisseurs
WHERE NO_FOURNISSEUR = 3;
