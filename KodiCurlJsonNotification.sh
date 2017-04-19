#!/bin/sh

UserPassword="User:Password"
Host=http://127.0.0.1:2020/jsonrpc

GenerateJsonData()
{
  cat <<EOF
{
   "id":1,
   "jsonrpc":"2.0",
   "method":"GUI.ShowNotification",
   "params":{
     "title":"test1",
     "message":"Test message using curl and json"
    }
}
EOF
}

curl -v -X POST \
-H "Content-Type:application/json" \
-d "$(GenerateJsonData)" \
-u $UserPassword $Host
