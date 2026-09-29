#!/usr/bin/env bash
# Salir en caso de error
set -o errexit 

# Modifique esta línea según sea necesario para su gestor de paquetes (pip, poetry, etc.)
pip install -r requirements.txt 

# Convertir archivos de recursos estáticos
python manage.py collectstatic --no-input

# Aplicar las migraciones de base de datos pendientes
python manage.py migrate