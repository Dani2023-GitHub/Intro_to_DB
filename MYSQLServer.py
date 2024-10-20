import mysql.connector
import os

mydb = mysql.connector.connect(
        host = "localhost",
        user = "root",
        password = os.environ.get("db_passw")
        )

try:
    with mydb.cursor() as mycursor:
        mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully!")
        mydb.commit()

except mysql.connector.error as e:
    print(f"Error occured: {e}")
