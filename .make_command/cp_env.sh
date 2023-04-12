i=1;
j=$#;
while [ $i -le $j ]
do
    cp .env $1/.env
    if [ -f "$1/.env.example" ]; then
        echo -e "\n" >> $1/.env;
        cat $1/.env.example >> $1/.env;
    fi;
    i=$((i + 1));
    shift 1;
done
