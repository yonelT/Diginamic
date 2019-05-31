USE bdd_mysql;
-- Q1 --
SELECT distinct NOM_PRODUIT, (PRIX_UNITAIRE * UNITES_STOCK) AS "Valeur Stock" FROM produits;

-- Q2 --
SELECT NOM, PRENOM, (year(current_date()) - year(DATE_NAISSANCE)) AS "AGE", (year(current_date()) - year(DATE_EMBAUCHE)) AS "ANCIENNETE" FROM employes;

-- Q3 --
SELECT NOM AS "Employe", "gagne" AS "a un", (SALAIRE * 12) AS "gain annuel", "par an" AS "sur 12 mois" FROM employes;