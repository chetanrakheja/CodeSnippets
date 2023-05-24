cat $1 | grep -i $2 | grep -v '#' | cut -d'=' -f2
