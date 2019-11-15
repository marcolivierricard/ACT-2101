# ACT-2101



# Utilisation du Makefile
Le Makefile que j'ai ajouté permet de gérer ton *workflow* du projet. Tu va voir que j'ai séparé tes chapitres en différents fichiers. Ça permet de mieux séparer les éléments de ton rapport, et de ne pas avoir à compiler ton code R (de ta section sur les données réelles) à chaque fois que tu veux modifier ton Introduction par exemple ...

Un avantage du Makefile que je t'ai mis, c'est qu'il va compiler un fichier (.Rnw ou .tex) seulement *si il a besoin*, c'est-à-dire que la dernière date de modification a changé. Il est donc possible qu'au moment où tu essaie de tout compiler (avec un simple `make` dans ton répertoire), tu aie le message suivant : 
```
copie_report_folder_gcc[master]$ make
make: Nothing to be done for `all'.
```

Pour forcer ton rapport à compiler, supprime le pdf main.pdf

# Commandes du fichier make
Pour utiliser ton fichier Make, tu dois d'abord aller dans le dossier de ton rapport (pour les tests que j'ai fait, j'ai changé le nom du dossier, mais tu pourra le rechanger sans problème) : 
```
cd copie_report_folder_gcc
make
```
`make` est un alias pour `make pdf`. Il y a aussi la commande `make tex` qui va seulement essayer de compiler des fichiers .Rnw vers .tex

`make clean` : supprime tous les fichiers de crap qui apparaissent lorsqu'on compile.

`make view` : pour ouvrir le PDF dans aperçu de Mac (de mémoire, t'as un Mac donc cette commande devrait être fonctionnelle pour toi aussi!)




# Option Sweave
Assez pratique, pour que les figures générées dans ton fichier .Rnw aille dans ton dossier images automatiquement : 
```
\SweaveOpts{prefix.string=figures/fig}
```
P.S Tu pourrais configurer d'autres éléments comme `width`, `height`, etc... c'est un peu comme Rmarkdown pour ça.





# dossier Chapters
Je te suggère de laisser tes fichiers `.tex` séparés par chapitre, dans le même répertoire que ton fichier `main.tex`. J'en ai profité pour enlever le dossier `Chapters`, mais il est encore dans ton répertoire initial.