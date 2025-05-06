from pydantic import BaseModel

class Product(BaseModel):
    name: str
    sku: str
    supplier_id: int
    quantity_in_stock: int
    price: float
