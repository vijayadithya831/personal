import mysql.connector as mc

mydb = mc.connect(
    user = "root",
    password = "VijaySql831!",
    database = "pdbc001"
)

mycursor = mydb.cursor()

query = "select * from customer;"

mycursor.execute(query)

for i in mycursor:
    print(i)