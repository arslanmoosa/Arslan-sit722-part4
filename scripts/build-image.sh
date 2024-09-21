# Your Solution

set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"

docker build -t ampart4.azurecr.io/book-catalog-service:latest ./book_catalog
docker build -t ampart4.azurecr.io/inventory-management-service:latest ./inventory_management