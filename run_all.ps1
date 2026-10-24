# Script d'exécution automatique du pipeline TP4 - AutoML
Write-Host "=== Démarrage du pipeline MLOps TP4 AutoML ===" -ForegroundColor Cyan

$env:PYTHONIOENCODING = "utf-8"
$env:PYTHONUTF8 = "1"
$PYTHON = ".\.venv\Scripts\python.exe"

# 1. Générer les données
Write-Host "`n[1/5] Génération des données..." -ForegroundColor Yellow
& $PYTHON donnees.py

# 2. Modèles de référence
Write-Host "`n[2/5] Entraînement des modèles de référence (scikit-learn)..." -ForegroundColor Yellow
& $PYTHON src/references.py

# 3. Exécution FLAML AutoML (10s, 30s, 60s)
Write-Host "`n[3/5] Recherche AutoML avec FLAML (10s, 30s, 60s)..." -ForegroundColor Yellow
& $PYTHON src/automl.py 10
& $PYTHON src/automl.py 30
& $PYTHON src/automl.py 60

# 4. Démonstration de fuite de données
Write-Host "`n[4/5] Démonstration fuite de données (data leakage)..." -ForegroundColor Yellow
& $PYTHON src/fuite.py

# 5. Inspection et courbe de rendement
Write-Host "`n[5/5] Inspection et génération de la courbe de rendement..." -ForegroundColor Yellow
& $PYTHON src/inspecter.py reports/flaml_60s.log
& $PYTHON src/rendement.py

Write-Host "`n=== Pipeline terminé avec succès ! ===" -ForegroundColor Green
Write-Host "Interface MLflow consultable sur : http://127.0.0.1:5000" -ForegroundColor Cyan
Write-Host "Graphique généré : reports/rendement.png" -ForegroundColor Cyan
