# Analyse de corrélation Jeux Olympiques & Performance Socio‑Économique

## KPI actionnables:

| Indicateur | Répond à la question |
|------------|---------------------|
| Médailles totales | Combien de médailles ce pays a-t-il remportées ? |
| Médaille-score pondéré | Quelle est la qualité globale des médailles (or/argent/bronze) de ce pays ? |
| Médaille-score pondéré / million habitants (Score pondéré / (Population / 1 000 000)) | Est-ce que ce pays gagne plus ou moins de médailles que ce qu’on aurait prédit simplement avec sa population ? |
| Ratio médailles / taux alphabétisation | La performance sportive est-elle liée au niveau d’éducation du pays ?|
| Ratio médailles / urbanisation (Médailles ÷ % population urbaine) | Les pays plus urbanisés sont-ils plus performants aux Jeux ? |
| Ratio sportivité / densité (Médailles ÷ (Population ÷ Superficie)) | La densité de population influence-t-elle la performance sportive ? |
| Médailles / PIB | Est ce que un pays “utilise bien” sa richesse pour produire de la performance olympique (sans prendre en compte la qualité des médailles ?) |
| Score pondéré / PIB_en_milliards (Médailles ÷ (PIB / 1e9)) | Ce pays obtient-il des médailles de grande valeur malgré un PIB limité ? |
| Taux participation aux JO par habitant (Athlètes ÷ population 15–64 ans)| Quelle proportion de la population active participe réellement aux Jeux ? |
| Ratio médaille / accès électricité| Le niveau d’accès aux infrastructures de base influence-t-il la performance sportive ? |
| Score efficacité composite (Score pondéré ÷ population × PIB per capita)| Ce pays est-il performant malgré sa taille et son niveau de richesse ? |
| Médailles / PIB par habitant| Les pays riches par habitant sont-ils plus efficaces sportivement ? |
| Ratio médailles / population jeune (Médailles ÷ population 0–14 ans)| La taille de la population jeune explique-t-elle la performance sportive ? |
| Ratio médailles / population active (Médailles ÷ population 15–64 ans)| La population active (en âge de travailler) contribue-t-elle à de meilleures performances ? |
| Médailles / croissance PIB annuelle| La dynamique économique (croissance) influence-t-elle la performance aux Jeux ? |
| Ratio participation / femmes (Athlètes femmes ÷ population femmes 15–64 ans)| Les femmes sont-elles proportionnellement bien représentées parmi les athlètes ? |
| Ratio médailles / superficie cultivable| Quel est l’impact du poids du monde rural agricole sur le niveau sportif ? |
| Ratio médaille / densité urbaine (Médailles ÷ (Population urbaine ÷ Superficie urbaine))| Est-ce qu’un pays très urbanisé produit plus ou moins de médailles qu’on ne le penserait ? |



## Codes WDI nécessaires pour les KPI actionnables :

| Nom | Code WDI |
|------------|---------------------|
|Taux d’alphabétisation adulte|SE.ADT.LITR.ZS|
|Population totale|SP.POP.TOTL|
|Population 0–14 ans|SP.POP.0014.TO|
|Population 15–64 ans|SP.POP.1564.TO|
|Population urbaine (%)|SP.URB.TOTL.IN.ZS|
|PIB total (US$)|NY.GDP.MKTP.CD|
|PIB par habitant|NY.GDP.PCAP.CD|
|Croissance annuelle du PIB (%)|NY.GDP.MKTP.KD.ZG|
|Accès à l'électricité (%)|EG.ELC.ACCS.ZS|
|Taux de participation des femmes à la population active (%)|SL.TLF.CACT.FE.ZS|
|superficie totale (km²)|AG.LND.TOTL.K2|
|% de superficie urbaine|EN.URB.LAND.ZS|
|% de superficie cultivable|AG.LND.ARBL.ZS|

*N.B:*

Superficie_urbaine = (% urban land / 100) × Superficie_totale

Population_urbaine = Population_totale × (Population_urbaine_% / 100)










