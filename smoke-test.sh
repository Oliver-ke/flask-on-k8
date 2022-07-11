export TOKEN=`curl --data '{"email":"abc@xyz.com","password":"WindowsPwd"}' --header "Content-Type: application/json" -X POST localhost:80/auth  | jq -r '.token'`

echo $TOKEN

curl --request GET 'http://localhost:80/contents' -H "Authorization: Bearer ${TOKEN}" | jq .