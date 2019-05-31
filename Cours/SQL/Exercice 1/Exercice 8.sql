USE bdd_mysql;

-- 1.Affichez la société, adresse et ville de résidence pour tous les tiers de l’entreprise.

SELECT clients.SOCIETE, clients.ADRESSE, clients.VILLE FROM CLIENTS UNION SELECT fournisseurs.SOCIETE, fournisseurs.ADRESSE, fournisseurs.VILLE FROM FOURNISSEURS;

-- 2.Affichez toutes les commandes qui comportent en même temps des produits de catégorie 1 du fournisseur 1 et des produits de catégorie 2 du fournisseur 2.

select * from produits where CODE_CATEGORIE = 1 AND NO_FOURNISSEUR = 1;
select * from produits where CODE_CATEGORIE = 2 AND NO_FOURNISSEUR = 2;

select * from produits INNER JOIN details_commandes ON produits.REF_PRODUIT=details_commandes.REF_PRODUIT
where CODE_CATEGORIE = 1 AND NO_FOURNISSEUR = 1;

-- 3.Affichez la liste des produits que les clients parisiens ne commandent pas.

select * from clients where PRODUITS.UNITES_COMMANDEES;

-- detail commande commandes produits
