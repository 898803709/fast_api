from fastapi import APIRouter

router = APIRouter()


@router.get("/products")
async def list_products():
    pass


@router.post("/products")
async def create_product():
    pass


@router.put("/products/{product_id}")
async def update_product(product_id: int):
    pass


@router.delete("/products/{product_id}")
async def delete_product():
    pass
