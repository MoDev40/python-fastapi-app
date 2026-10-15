from fastapi import FastAPI
from datetime import datetime

app = FastAPI()

@app.get("/")
async def read_root():
  return {"message": "Hello, World!,Test Deployment", "timestamp": datetime.now()}