from typing import List
from fastapi import APIRouter, Depends, status, HTTPException
from sqlalchemy.orm import Session

router = APIRouter(prefix = "/v1/status", tags=['Status'])

@router.get('/')
def status_check():
    return {'Server is Running'}
