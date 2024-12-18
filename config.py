import os

class Config:
    # Azure SQL Database connection string
    SQLALCHEMY_DATABASE_URI = (
        "mssql+pyodbc://sheenacao:c19990403c@sheenacao.database.windows.net:1433/Care_Connect"
        "?driver=ODBC+Driver+17+for+SQL+Server"
    )
    SQLALCHEMY_TRACK_MODIFICATIONS = False
    SECRET_KEY = os.urandom(24)
