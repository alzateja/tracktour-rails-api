TOKEN="BAhJIiU3YTljYjE1MTkxYzg0ZmI2MDJjNzIyZjM3OGZiOTUwNQY6BkVG--4def82b626fa145e3a0482c5cd892ccb11a25520"

curl --include --request POST http://localhost:4741/artists \
  --header "Content-Type: application/json" \
  --data '{
    "artist": {
      "artist_name": "Jay-Z"
    }
}'
