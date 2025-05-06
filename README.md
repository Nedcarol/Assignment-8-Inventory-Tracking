# 📦 Inventory Tracking API

A simple inventory tracking system built using **FastAPI** and **MySQL**, created as part of Assignment 8 for the DATABASE course.

---

## 🔧 Tech Stack

- **Backend:** FastAPI (Python)
- **Database:** MySQL
- **ORM:** SQLAlchemy
- **Environment Variables:** Python `dotenv`
- **API Server:** Uvicorn

---

## 📁 Project Structure

Assignment-8-Inventory-Tracking/
├── main.py # Entry point for FastAPI
├── models/ # SQLAlchemy models
│ └── inventory.py
├── routes/ # API route handlers
│ └── items.py
├── database/ # DB connection config
│ └── config.py
├── .env # Environment variables
├── requirements.txt # Python dependencies
└── inventory_schema.sql # SQL script to create the DB

---

## ▶️ Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/Nedcarol/Assignment-8-Inventory-Tracking.git
cd Assignment-8-Inventory-Tracking

2. Set up a virtual environment
bash
python -m venv venv
.\venv\Scripts\activate


3. Install dependencies
bash
pip install -r requirements.txt

4. Set up the MySQL database
Create a MySQL database (e.g., inventory_db)

Use the provided inventory_schema.sql to create tables.

5. Configure environment variables
Create a .env file in the root directory:

env
DB_HOST=localhost
DB_PORT=3306
DB_USER=root
DB_PASSWORD=your_password
DB_NAME=inventory_db

6. Run the FastAPI server
bash
uvicorn main:app --reload
Visit the API at: http://127.0.0.1:8000
View API docs at: http://127.0.0.1:8000/docs

🧪 Sample Endpoints
GET /items – Fetch all inventory items

POST /items – Add a new item

PUT /items/{id} – Update item details

DELETE /items/{id} – Remove an item

👩‍💻 Author
Made by Neddy Sigey
🔗 GitHub Profile

