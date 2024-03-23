from typing import List

from fastapi import APIRouter
import api.schemas.products as products_schema 
router = APIRouter()


@router.get("/products", response_model=List[products_schema.Product])
async def list_products():
    return [products_schema.Product(id=1)]


@router.post("/products")
async def create_product():
    pass


@router.put("/products/{product_id}")
async def update_product(product_id: int):
    pass


@router.delete("/products/{product_id}")
async def delete_product():
    pass
