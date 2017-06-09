TOKEN="BAhJIiUzODUyYTBkMTI1MzVhYjBlNGQ1OTg4YTlkNmU3NDFmZAY6BkVG--671e90d66fa6a4a2e6c08841c82e345181d5bfbb"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/wishlists/36"
curl "${API}${URL_PATH}" \
  --include \
  --header "Authorization: Token token=$TOKEN" \
  --request GET


echo
