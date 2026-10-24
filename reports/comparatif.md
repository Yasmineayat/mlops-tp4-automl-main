# Comparatif des approches - projet fraude (TP04)

| Approche | F1 test | Temps humain | Temps machine | Cout estime (source, date) | Explicabilite | Export / reversibilite |
|---|---:|---|---|---|---|---|
| Logistique (ref.) | 0.7407 | Non mesure | Non mesure | 0 euro supplementaire, poste local | Bonne | Totale |
| Manuel (TP2) | 0.8669 | Non mesure | Non mesure | 0 euro supplementaire, poste local | Moyenne/bonne | Totale |
| FLAML 60 s | 0.8582 | Non mesure | 60 secondes de budget | 0 euro supplementaire, poste local | Moyenne | Totale |
| Vertex AI AutoML | Non mesure | Non mesure | Non mesure | Variable, tarif Google Cloud consulte le 22/10/2026 | Bonne | Depend du modele et du format |
| SageMaker Autopilot | Non mesure | Non mesure | Non mesure | Variable, tarif AWS consulte le 22/10/2026 | Bonne | Depend du modele et du format |
| Azure Automated ML | Non mesure | Non mesure | Non mesure | Variable, tarif Azure consulte le 22/10/2026 | Bonne | Depend du modele et du format |

## Commentaire

- La regression logistique convient comme reference simple et interpretable.
- Le modele manuel convient lorsqu'on veut controler l'entrainement et obtenir de bonnes performances.
- FLAML convient pour automatiser la recherche de modeles avec un budget limite.
- Les plateformes cloud conviennent aux projets necessitant une infrastructure managee et evolutive.
- Le choix depend des performances, du cout, de l'explicabilite et de la facilite d'export.
