USE bdd_mysql;

-- Q1 --
SELECT sum(SALAIRE) AS "Somme Salaire", sum(COMMISSION) AS "Somme Commission"
FROM employes;

-- Q2 --
SELECT AVG(SALAIRE) AS "Moyenne Salaire", CAST(AVG(IFNULL(COMMISSION,0)) AS Decimal (15,2))
FROM employes;

-- Q3 --
SELECT MAX(SALAIRE) AS "Salaire maxi", MIN(COMMISSION) AS "Salaire mini"
FROM employes;

-- Q4 --
SELECT COUNT(distinct FONCTION) AS "Nombre de fonction"
FROM employes;