USE bdd_mysql;

-- Q1 --
SELECT NOM FROM employes
ORDER BY NOM DESC; -- OU: ORDER BY 1 DESC;

-- Q2 --
SELECT * FROM clients
ORDER BY PAYS DESC;

-- Q3 --
SELECT * FROM clients
ORDER BY PAYS, VILLE;