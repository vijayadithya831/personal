from mysql.connector import *

mydb = connect(
    user = "root",
    password = "admin"
)

if mydb.is_connected():
    print("DBMS is connected")
else:
    print("DBMS is not connected")
