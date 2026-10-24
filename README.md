# TP4 - AutoML (Détection de Fraude)

Ce projet compare des approches de Machine Learning traditionnelles et automatisées (AutoML avec FLAML) pour la détection de fraudes, avec suivi des expérimentations via MLflow.

## Structure du projet

- `donnees.py` : Génération du jeu de données synthétique (`data/transactions.csv`).
- `src/references.py` : Modèles de référence (Régression logistique & Forêt aléatoire).
- `src/automl.py` : Optimisation automatisée avec FLAML sous différents budgets de calcul (10s, 30s, 60s, 120s) et journalisation MLflow.
- `src/inspecter.py` : Analyse détaillée des essais journalisés par FLAML.
- `src/fuite.py` : Démonstration de fuite d'information (*data leakage*) et son impact dévastateur en production.
- `src/rendement.py` : Tracé de la courbe de rendement budget de calcul vs score F1 (`reports/rendement.png`).
- `reports/comparatif.md` : Tableau comparatif des approches et plateformes cloud (Vertex AI, SageMaker, Azure ML).
- `run_all.ps1` : Script PowerShell pour exécuter l'ensemble du pipeline.

## Démarrage rapide

### 1. Activer l'environnement virtuel
```powershell
.\.venv\Scripts\Activate.ps1
```

### 2. Lancer le serveur MLflow
```powershell
mlflow server --backend-store-uri sqlite:///mlflow.db --default-artifact-root ./mlartifacts --host 127.0.0.1 --port 5000
```
Le tableau de bord est accessible sur [http://127.0.0.1:5000](http://127.0.0.1:5000).

### 3. Exécuter le pipeline complet
```powershell
.\run_all.ps1
```
