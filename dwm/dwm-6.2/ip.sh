ip=$(curl https://ipinfo.io/city)
#echo "$calendar"
prov=$(curl https://ipinfo.io/org)

dunstify "Current IP Location" "$ip, $prov" &
