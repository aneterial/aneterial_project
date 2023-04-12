i=1;
j=$#;
while [ $i -le $j ]
do
    docker compose exec db mysql -u root -p${PASS} -e "CREATE DATABASE IF NOT EXISTS $1";
    i=$((i + 1));
    shift 1;
done
