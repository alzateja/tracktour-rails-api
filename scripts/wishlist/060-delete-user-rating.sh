TOKEN="BAhJIiUzODUyYTBkMTI1MzVhYjBlNGQ1OTg4YTlkNmU3NDFmZAY6BkVG--671e90d66fa6a4a2e6c08841c82e345181d5bfbb"

ID="36"
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/wishlists"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
