# melt_pour_Pierre_prepas_filles

Passer de large en long avec la fonction "melt", appliqué aux effectifs féminins en prépa scientifique

Il s'agit d'appliquer la fonction "melt" de data.table dans R, expliquée dans cette <a href="https://raw.githubusercontent.com/rstudio/cheatsheets/master/datatable.pdf">cheatsheet</a>, à un <a href="https://data.enseignementsup-recherche.gouv.fr/explore/dataset/fr-esr-parcoursup/information/">jeu de données du MESRI </a> relatif à **Parcoursup 2021 - vœux de poursuite d'études et de réorientation dans l'enseignement supérieur et réponses des établissements**, et aux jeux de données équivalents pour 2018, 2019 et 2020 fusionnés par Pierre.

Dans un extrait des données focalisé sur les prépas scientifiques 2018-2021, j'avais besoin de réunir deux colonnes (effectifs de candidats, effectifs d'admis) en une seule colonne avec des effectifs de bacheliers. Qu'ils s'agisse de candidats sur Parcoursup à une CPGE scientifique ou d'admis dans ces formations, spécifiés dans une variable "type de bacheliers" (candidats ou admis). Et de même avec deux colonnes (dont filles candidates, dont filles admises).

Objectif : ensuite, dans le logiciel de dataviz Tableau, glisser la variable "type bacheliers" sur la couleur, afin de faire des courbes montrant la part des filles parmi les candidats ou parmi les admis, dans chaque prépa scientifique de France et de Navarre en 2021. 

Il a d'abord fallu créer un fichier csv où j'avais au préalable renommé les colonnes par un nom du type "Total_admis", "Total_candidats", "Filles_admis", "Filles_candidats".

Le melt fonctionne et crée bien une colonne "type de bacheliers", néanmoins les valeurs "admis" et "candidats" sont remplacées par 1, 2. Je n'ai pour l'instant pas automatisé cet aspect-là et remplacé à la main. 

