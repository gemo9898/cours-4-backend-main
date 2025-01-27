#!/bin/bash

# Exécuter les tests unitaires normaux
echo "Exécution des tests unitaires..."
vendor/bin/phpunit

# Exécuter les tests avec rapport de couverture
echo -e "\nGénération du rapport de couverture..."
XDEBUG_MODE=coverage vendor/bin/phpunit --coverage-html /var/www/html/coverage

echo -e "\nTests terminés ! Consultez le rapport dans le dossier coverage/"