# Analyse de corrélation Jeux Olympiques & Performance Socio‑Économique
## 🎯 Objectif du projet
Ce projet vise à analyser la relation entre la *performance sportive des pays aux Jeux Olympiques* (médailles) et leurs *indicateurs socio-économiques* (PIB, population, urbanisation, etc.) à l’aide des données de la *World Bank (WDI)*.

Le projet génère :
- Des données nettoyées
- Des KPI de performance
- Des fichiers exploitables pour la visualisation et l’analyse

## 📥 Sources de Données

### Fichier : `athlete_events.csv`

#### Description générale
Ce dataset contient les informations biographiques des athlètes et leurs résultats aux Jeux Olympiques modernes, de **Athènes 1896 à Rio 2016**.

- **Nombre de lignes :** 271 116 (une ligne par participation d’un athlète à un événement)  
- **Nombre de colonnes :** 15  
- **Remarques importantes :**  
  - Jusqu’en 1992, les Jeux d’été et d’hiver se tenaient la même année.  
  - Depuis 1994, les Jeux d’hiver et d’été sont alternés tous les 2 ans (Winter 1994, Summer 1996, etc.).  
  - Ne pas supposer que les Jeux d’été et d’hiver ont toujours été décalés.

#### Colonnes

| Colonne | Description |
|---------|------------|
| `ID` | Numéro unique identifiant chaque athlète. |
| `Name` | Nom complet de l’athlète. |
| `Sex` | Sexe de l’athlète (`M` pour masculin, `F` pour féminin). |
| `Age` | Âge de l’athlète en années. |
| `Height` | Taille de l’athlète en centimètres. |
| `Weight` | Poids de l’athlète en kilogrammes. |
| `Team` | Nom de l’équipe ou du pays représenté par l’athlète. |
| `NOC` | Code à 3 lettres du Comité National Olympique associé au pays. |
| `Games` | Année et saison des Jeux (ex. `1992 Summer`). |
| `Year` | Année des Jeux. |
| `Season` | Saison des Jeux (`Summer` ou `Winter`). |
| `City` | Ville hôte des Jeux. |
| `Sport` | Discipline sportive. |
| `Event` | Événement précis (discipline + catégorie). |
| `Medal` | Type de médaille remportée (`Gold`, `Silver`, `Bronze`) ou `NA` si aucune médaille. |


### Fichier : `noc_regions.csv`

#### Description générale
Ce dataset fournit une correspondance entre les codes NOC et les pays/régions pour faciliter la visualisation et l’analyse géographique.

- **Taille :** 3 colonnes, 230 lignes
- **Utilité :** Permet de relier les données olympiques à des informations pays/région pour code NOC.

#### Colonnes

| Colonne | Description |
|---------|------------|
| `NOC` | Code à 3 lettres du Comité National Olympique. |
| `region` | Nom du pays ou de la région correspondante au NOC. |
| `notes` | Informations complémentaires ou remarques sur le NOC. |


### API World Bank — World Development Indicators (WDI)

L’API **World Bank** (https://api.worldbank.org/V2) fournit un accès direct aux indicateurs socio-économiques et démographiques de tous les pays, tels que le PIB, la population, l’espérance de vie, le taux de scolarisation, l’accès à l’électricité, etc.  
Ces données peuvent être téléchargées au format CSV/Excel ou récupérées via l’API pour des analyses automatisées.




## KPI actionnables:

| Indicateur | Répond à la question |
|------------|---------------------|
| Médailles totales | Combien de médailles ce pays a-t-il remportées ? |
| Médaille-score pondéré | Quelle est la qualité globale des médailles (or/argent/bronze) de ce pays ? |
| Médaille-score pondéré / million habitants (Score pondéré / (Population / 1 000 000)) | Est-ce que ce pays gagne plus ou moins de médailles que ce qu’on aurait prédit simplement avec sa population ? |
| Ratio médailles / urbanisation (Médailles ÷ % population urbaine) | Les pays plus urbanisés sont-ils plus performants aux Jeux ? |
| Ratio sportivité / densité (Médailles ÷ densite)) | La densité de population influence-t-elle la performance sportive ? |
| Médailles / PIB | Est ce que un pays “utilise bien” sa richesse pour produire de la performance olympique (sans prendre en compte la qualité des médailles ?) |
| Score pondéré / PIB_en_milliards (Médailles ÷ (PIB / 1e9)) | Ce pays obtient-il des médailles de grande valeur malgré un PIB limité ? |
| Taux participation aux JO par habitant (Athlètes ÷ population 15–64 ans)| Quelle proportion de la population active participe réellement aux Jeux ? |
| Score efficacité composite (Score pondéré ÷ population × PIB per capita)| Ce pays est-il performant malgré sa taille et son niveau de richesse ? |
| Médailles / PIB par habitant| Les pays riches par habitant sont-ils plus efficaces sportivement ? |
| Ratio médailles / population active (Médailles ÷ population 15–64 ans)| La population active (en âge de travailler) contribue-t-elle à de meilleures performances ? |
| Médailles / croissance PIB annuelle| La dynamique économique (croissance) influence-t-elle la performance aux Jeux ? |
| Ratio participation / femmes (Athlètes femmes ÷ population femmes 15–64 ans)| Les femmes sont-elles proportionnellement bien représentées parmi les athlètes ? |
| Ratio médaille / densité urbaine (Médailles ÷ (Population urbaine ÷ Superficie urbaine))| Est-ce qu’un pays très urbanisé produit plus ou moins de médailles qu’on ne le penserait ? |



## Codes WDI nécessaires pour les KPI actionnables :

| Nom | Code WDI |
|------------|---------------------|
|Population totale|SP.POP.TOTL|
|Population 65–UP ans|SP.POP.65UP.TO|
|Population 15–64 ans|SP.POP.1564.TO|
|Population urbaine (%)|SP.URB.TOTL.IN.ZS|
|PIB total (US$)|NY.GDP.MKTP.CD|
|PIB par habitant|NY.GDP.PCAP.CD|
|Croissance annuelle du PIB (%)|NY.GDP.MKTP.KD.ZG|
|Taux de participation des femmes à la population active (%)|SL.TLF.CACT.FE.ZS|
|densite|EN.POP.DNST|
|densite urbaine|EN.URB.LCTY|






<img width="1037" height="497" alt="image" src="https://github.com/user-attachments/assets/00370bbc-6516-4f2d-a289-6ecb6a296d13" />









