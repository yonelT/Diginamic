USE bdd_mysql;

-- Q1 --
SELECT SOCIETE, PAYS FROM clients
WHERE VILLE='Toulouse';

-- Q2 --
SELECT NOM, PRENOM, FONCTION FROM employes
WHERE REND_COMPTE='2';

-- Q3 --
SELECT NOM, PRENOM, FONCTION FROM employes
WHERE FONCTION !='Représentant(e)';

-- Q4 --
SELECT NOM, PRENOM, FONCTION, SALAIRE FROM employes
WHERE SALAIRE < 3500;

-- Q5 --
SELECT SOCIETE, VILLE, PAYS FROM clients
WHERE FAX = ''; -- WHERE FAX IS NULL; ? //MySQL fait la distinction entre le vide et le null. Dans ce cas il y a du vide.

-- Q6 --
SELECT NOM, PRENOM, FONCTION FROM employes
WHERE REND_COMPTE = NO_EMPLOYE;
