USE bdd_mysql;

-- Q1 --
SELECT NOM, PRENOM, FONCTION, SALAIRE FROM employes
WHERE SALAIRE >= 2500 AND SALAIRE <= 3500;

-- Q2 --
SELECT p.NOM_PRODUIT, SOCIETE, NOM_CATEGORIE, p.QUANTITE
FROM produits p INNER JOIN fournisseurs f ON p.NO_FOURNISSEUR=f.NO_FOURNISSEUR INNER JOIN categories c ON p.CODE_CATEGORIE=c.CODE_CATEGORIE
WHERE c.CODE_CATEGORIE NOT IN (1, 3, 5, 7);

-- Q3 --


-- Q4 -- Écrivez la requête qui permet d’afficher le nom des employés qui ont effectué au moins une vente pour un client parisien.
-- SELECT employes.NOM from employes INNER JOIN 
-- WHERE  
-- details_commandes
-- clients.VILLE = 'Paris';
