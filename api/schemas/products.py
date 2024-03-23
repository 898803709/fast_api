from typing import List

from pydantic import BaseModel


# iPhoneモデル
class IPhone(BaseModel):
    model: str
    color: str
    storage_capacity_gb: int
    price: float


# iPadモデル
class IPad(BaseModel):
    model: str
    generation: int
    color: str
    storage_capacity_gb: int
    price: float


# Macモデル
class Mac(BaseModel):
    model: str
    year: int
    color: str
    storage_capacity_gb: int
    price: float


# Productモデル
class Product(BaseModel):
    # サブモデルのリスト
    iphones: List[IPhone] = []
    ipads: List[IPad] = []
    macs: List[Mac] = []
