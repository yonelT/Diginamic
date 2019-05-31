USE bdd_mysql;

-- Q1 --
SELECT * FROM employes;

-- Q2 --
SELECT CODE_CATEGORIE FROM produits; -- SELECT CODE_CATEGORIE FROM categories; --

-- Q3 --
SELECT NOM, PRENOM, DATE_NAISSANCE, IFNULL(COMMISSION,0) AS "COMMISSION" FROM employes;

-- Q4 --
SELECT distinct FONCTION FROM employes; -- distinct permet de ne pas mettre les doublons --

-- Q5 --
SELECT distinct PAYS FROM clients;

-- Q6 --
SELECT distinct VILLE FROM clients;

-- Q1 --
SELECT sum(SALAIRE) AS "Somme Salaire", sum(COMMISSION) AS "Somme Commission"FROM employes;

