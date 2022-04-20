# melt_pour_Pierre_prepas_filles

Passer de large en long avec la fonction "melt", appliqué aux effectifs féminins en prépa scientifique

Il s'agit d'appliquer la fonction "melt" de data.table dans R, expliquée dans cette <a href="https://raw.githubusercontent.com/rstudio/cheatsheets/master/datatable.pdf">cheatsheet</a>, à un <a href="https://data.enseignementsup-recherche.gouv.fr/explore/dataset/fr-esr-parcoursup/information/">jeu de données du MESRI </a> relatif à **Parcoursup 2021 - vœux de poursuite d'études et de réorientation dans l'enseignement supérieur et réponses des établissements** 

J'avais besoin de créer une seule colonne avec des effectifs de bacheliers, qu'ils s'agisse de candidats sur Parcoursup à une CPGE scientifique ou d'admis dans ces formations.

Objectif : ensuite, dans le logiciel de dataviz Tableau, glisser la variable "type bacheliers" sur la couleur, afin de faire des courbes de la part des filles parmi les candidats ou parmi les admis, dans chaque prépa scientifique de France et de Navarre en 2021. 

Il a d'abord fallu créer un fichier csv où j'avais au préalable renommé les colonnes par un nom du type "Total_admis", "Total_candidats", "Filles_admis", "Filles_candidats".

Le melt fonctionne et crée bien une colonne "type de bacheliers", néanmoins les années "admis" et "candidats" sont remplacés par 1, 2. Je n'ai pour l'instant pas automatisé cet aspect-là et remplacé à la main. 

