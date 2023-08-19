#!/bin/bash

Green='\033[0;32m'
Def='\033[m'

echo -e "${Green}MainApp:${Def}"
git pull
echo ---

for f in *; do
    if [ -d "$f" ]; then
        echo -e "${Green}$f:${Def}"
        cd "$f"
        git pull
        echo ---
        cd ..
    fi
done
