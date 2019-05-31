USE bdd_mysql;

-- 1. Écrivez la requête qui permet d’afficher la masse salariale des employés par fonction.
-- SELECT SUM(SALAIRE) FROM employes GROUP BY FONCTION

-- 2. Affichez le numéro de commande de celles qui comportent plus de 5 références de produit.
SELECT NO_COMMANDE, count(NO_COMMANDE) FROM details_commandes
group by NO_COMMANDE
having count(NO_COMMANDE) > 5;

-- 3. Afficher la valeur des produits en stock et la valeur des produits commandés par fournisseur, pour les fournisseurs qui ont un numéro compris entre 3 et 6.
SELECT SUM(UNITES_STOCK)*PRIX_UNITAIRE, SUM(UNITES_COMMANDEES)*PRIX_UNITAIRE FROM produits
GROUP BY NO_FOURNISSEUR
HAVING NO_FOURNISSEUR BETWEEN 3 AND 6

-- 4. Quelle date sera t-il dans 3 mois?
SELECT current_date() + INTERVAL '3' MONTH;

-- 5. Afficher le nom et le prénom des employés ayant fait plus de 100 commandes
SELECT NOM, PRENOM, COUNT(employes.NO_EMPLOYE) FROM employes INNER JOIN commandes ON commandes.NO_EMPLOYE=employes.NO_EMPLOYE
GROUP BY NOM, PRENOM
HAVING COUNT(employes.NO_EMPLOYE) > 100;

-- 5 bis. Afficher la société qui a fait plus de 30 commandes
SELECT clients.SOCIETE FROM clients
INNER JOIN commandes ON commandes.CODE_CLIENT=clients.CODE_CLIENT
GROUP BY SOCIETE
HAVING COUNT(clients.SOCIETE) > 30;