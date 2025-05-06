from fastapi import FastAPI, HTTPException
from db import conn, cursor
from models import Product

app = FastAPI()

@app.get("/")
def root():
    return {"message": "Inventory API is running"}

@app.get("/products")
def get_products():
    cursor.execute("SELECT * FROM products")
    return cursor.fetchall()

@app.get("/products/{product_id}")
def get_product(product_id: int):
    cursor.execute("SELECT * FROM products WHERE product_id = %s", (product_id,))
    product = cursor.fetchone()
    if not product:
        raise HTTPException(status_code=404, detail="Product not found")
    return product

@app.post("/products")
def create_product(product: Product):
    cursor.execute(
        "INSERT INTO products (name, sku, supplier_id, quantity_in_stock, price) VALUES (%s, %s, %s, %s, %s)",
        (product.name, product.sku, product.supplier_id, product.quantity_in_stock, product.price)
    )
    conn.commit()
    return {"message": "Product added successfully"}

@app.put("/products/{product_id}")
def update_product(product_id: int, product: Product):
    cursor.execute(
        "UPDATE products SET name=%s, sku=%s, supplier_id=%s, quantity_in_stock=%s, price=%s WHERE product_id=%s",
        (product.name, product.sku, product.supplier_id, product.quantity_in_stock, product.price, product_id)
    )
    conn.commit()
    return {"message": "Product updated successfully"}

@app.delete("/products/{product_id}")
def delete_product(product_id: int):
    cursor.execute("DELETE FROM products WHERE product_id=%s", (product_id,))
    conn.commit()
    return {"message": "Product deleted successfully"}
