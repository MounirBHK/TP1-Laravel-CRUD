# TP1-Laravel-CRUD
> TP1 Laravel application des méthodes CRUD


> Créer un site web dynamique en utilisant le cadriciel Laravel.

    Félicitations, vous avez reçu un nouveau mandat et vous souhaitez impliquer toutes les connaissances que vous avez acquises dans le cours Cadriciel Web.

Le mandat est de créer un site Internet pour recueillir de l'information auprés des étudiants du Collége Maisonneuve, et possiblement à l'avenir, de construire un réseau
social pour eux.

La premiére étape consiste à rassembler les informations, remplir la base de données avec des données aléatoires et créer les interfaces fonctionnelles pour visualiser, saisir,
mettre à jour et supprimer les étudiants.

Votre base de données initiale aura 2 tables : étudient (id, nom, adresse, phone, email, date de naissance, villeId) et ville (id, nom).

1. En utilisant les lignes de commande, créer un nouveau projet Laravel nommée Maisonneuve{votre matricule} (1 pt)

2. En utilisant les lignes de commande, créer les modéles (2 pts)

3. En utilisant les lignes de commande, créer les tables (2 pts)

4. En utilisant les lignes de commande, saisir 15 nouvelles villes (1 pts)

5. En utilisant les lignes de commande, saisir 100 nouveaux étudient (1 pts)

        Pour les questions 5 et 6, effectuez une recherche des propriétés de "Factory" pour remplir des valeurs telles que des noms, des adresses, des téléphones, etc. (pas de phrases ou de texte aléatoires).

6. En utilisant les lignes de commande, créer les contréleurs (2 pts)

7. Créez votre layout.blade avec vous CSS, vous devez importer bootstrap et le concevoir selon vos préférences. (2 pts)

8. Travailler avec bootstrap pour respecter les concepts d'ergonomie, soyez
créatif (2pts).

9. Créer un contréleur “index” et une vue, pour afficher tous les étudiants, avec un lien pour sélectionner l'étudiant et le mettre é jour. (2 pts)

10. Créer un contréleur “create” et une vue, pour saisir un nouvel étudiant. Le formulaire doit avoir un champ “select” avec toutes les villes qui viennent de la base de données. (2 pts)

11. Créer un contréleur “show” et une vue, pour afficher un étudiant sélectionné. (2 pts)

12. Créer un contréleur “edit” et une vue, pour afficher un étudiant sélectionné dans un formulaire et le mettre é jour. (2 pts)

13. Créer un contréleur “destroy” pour supprimer un étudiant sélectionné. (1 pt)

14. Publier votre projet dans GitHub (publique) et envoyer le lien dans la documentation. (2 pts)

15. Enregistrez le projet avec une extension ZIP et ajouter la documentation dans la racine (1pt)

Déposez le fichier ZIP, sur Léa - Onmivox.
Vous devez m'envoyer sur Mio :

● La documentation avec les lignes de commandes utilisées pendant le projet :
Créer le projet, les modéles, les contréleurs, les tables, les données, etc.

● Le lien pour accéder à votre site sur webdev et/ou server et GitHub

● Un fichier compressé avec l'ensemble de votre projet Laravel.

● Si vous avez toujours des problèmes pour publier le projet dans webdev. Vous devez faire une vidéo enregistrant l’écran pour montrer que les opérations CRUD marchent bien dans votre projet, (1 - 2 min video).
Pénalité pour retard.

● Jusqu'à 24 heures : réduction de 1.5 point sur la note finale sur 25.

● Entre 24 et 48 heures : réduction de 3 points sur la note finale sur 25.

● Après 48 heures de retard, le projet ne serait pas accepté et la note zéro serait accordée.
 
> Notes pour le webdev tp1.

Certains étudiants ont eu une erreur de version lors de la migration du projet vers webdev. Composer sur webdev utilise la version de PHP 7.3. Ma suggestion est donc de mettre à niveau la version PHP de votre serveur local - WAMP / MAMP / XAMP (uniquement si vous avez une erreur lors de l'exportation du projet).

> Les étapes à suivre pour publier un projet sur webwev.

1) Transférez les fichiers dans votre dossier public sur webdev (www), utilisez un seul dossier /www/myproject et dans ce dossier vous devez avoir la structure de niveau supérieur (app/config/ressourses/vendeurs) comme nous l'avons fait pendant le cours.

2) Faites glisser le fichier .hatccess (n'oubliez pas le point) é la racine du projet (www/myproject).

3) Exportez votre table et vos données locales vers un fichier SQL avec phpmyadmin ou workbench

4) sur webdev phpmyadmin importer le fichier SQL.
* Si vous étes é l'aise avec SSH webdev, vous pouvez, aux étapes 3 et 4, exécuter la migration artisanale et l'usine.

5) Le chemin (action, href) dans vos doit étre la route sans la / : Ex. : blog ou ./blog - Non /blog