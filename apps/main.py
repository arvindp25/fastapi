from fastapi import FastAPI
from apps.routers import status

app = FastAPI()

# @app.get("/")
# async def root():
#     return {"message": "Hello World"}

app.include_router(status.router)