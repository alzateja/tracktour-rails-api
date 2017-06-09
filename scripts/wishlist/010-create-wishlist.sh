TOKEN="BAhJIiUzODUyYTBkMTI1MzVhYjBlNGQ1OTg4YTlkNmU3NDFmZAY6BkVG--671e90d66fa6a4a2e6c08841c82e345181d5bfbb"

curl --include --request POST http://localhost:4741/wishlists \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "wishlist": {
      "artist_id": "1",
      "wish_status": "Have Seen!"
    }
}'
