USE bdd_mysql;

-- 1. Affichez tous les produits pour lesquels la quantité en stock est inférieur à la moyenne des quantités en stock.
SELECT UNITES_STOCK FROM PRODUITS
WHERE UNITES_STOCK < (SELECT AVG(UNITES_STOCK) FROM PRODUITS);

-- 2. Affichez toutes les commandes pour lesquelles les frais de ports dépassent la moyenne des frais de ports pour ce client.
SELECT * FROM COMMANDES t1
WHERE t1.PORT > (SELECT AVG(t2.PORT) FROM COMMANDES t2 WHERE t2.CODE_CLIENT=t1.CODE_CLIENT);

-- 3. Affichez les produits pour lesquels la quantité en stock est supérieure à la quantité en stock de chacun des produits de catégorie 3. 

SELECT UNITES_STOCK FROM PRODUITS
WHERE UNITES_STOCK > ALL (SELECT UNITES_STOCK FROM PRODUITS WHERE CODE_CATEGORIE = 3);