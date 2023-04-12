i=1;
j=$#;
t="CREATE DATABASE IF NOT EXISTS";
c=""
while [ $i -le $j ]
do
    c="$c $t $1;";
    i=$((i + 1));
    shift 1;
done;

docker compose exec db mysql -u root -p${PASS} -e "$c";
