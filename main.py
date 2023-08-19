from fastapi import FastAPI
from fastapi.responses import FileResponse
from pathlib import Path

app = FastAPI()

@app.get("/")
def read_root():
    html_path = Path("static/index.html")
    return FileResponse(html_path)
