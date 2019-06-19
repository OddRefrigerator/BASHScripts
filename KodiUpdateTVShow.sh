#!/bin/sh

UserPassword="kodi:TheFlyingFish"
Host=http://192.168.1.2:2020/jsonrpc

x=431

while [ $x -le 490 ]
do
  echo "Welcome $x times"
  x=$(( $x + 1 ))

GenerateJsonData()
{
  cat <<EOF
{
   "id":1,
   "jsonrpc":"2.0",
   "method":"VideoLibrary.RefreshTVShow",
   "params":{
     "tvshowid": $x,
     "ignorenfo": true,
     "refreshepisodes": true
    }
}
EOF
}

curl -v -X POST \
-H "Content-Type:application/json" \
-d "$(GenerateJsonData)" \
-u $UserPassword $Host

done

echo "\n"
echo "First arg. is" $x
