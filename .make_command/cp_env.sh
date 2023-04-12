i=1;
j=$#;
while [ $i -le $j ]
do
    cp .env $1/.env
    i=$((i + 1));
    shift 1;
done
