from tkinter import *

window = Tk()

window.title("Simple Calculator")
window.iconbitmap("D:/Personal/Full Stack/Python/GUI/calculator.ico")

entry = Entry(width=50, borderwidth=5, font=("Times New Roman", 12), justify=CENTER)
entry.grid(row=0, column=0, columnspan=4)

def btnClick(number):
    current = entry.get()
    entry.delete(0, END)
    entry.insert(0, str(current) + str(number))

def btnAdd():
    global fnum, math
    math = 1
    first_number = entry.get()
    entry.delete(0, END)
    fnum = float(first_number)

def btnSub():
    global fnum, math
    math = 2
    first_number = entry.get()
    entry.delete(0, END)
    fnum = float(first_number)

def btnMul():
    global fnum, math
    math = 3
    first_number = entry.get()
    entry.delete(0, END)
    fnum = float(first_number)

def btnDiv():
    global fnum, math
    math = 4
    first_number = entry.get()
    entry.delete(0, END)
    fnum = float(first_number)

def btnEqual():
    second_number = entry.get()
    entry.delete(0, END)
    snum = float(second_number)

    if math == 1:
        entry.insert(0, fnum + snum)
    elif math == 2:
        entry.insert(0, fnum - snum)
    elif math == 3:
        entry.insert(0, fnum * snum)
    elif math == 4:
        entry.insert(0, fnum / snum)

def btnClr():
    entry.delete(0, END)

btn1 = Button(text="1", padx=35, pady=30, command=lambda: btnClick(1))
btn1.grid(row=1, column=0)
btn2 = Button(text="2", padx=35, pady=30, command=lambda: btnClick(2))
btn2.grid(row=1, column=1)
btn3 = Button(text="3", padx=35, pady=30, command=lambda: btnClick(3))
btn3.grid(row=1, column=2)

btn4 = Button(text="4", padx=35, pady=30, command=lambda: btnClick(4))
btn4.grid(row=2, column=0)
btn5 = Button(text="5", padx=35, pady=30, command=lambda: btnClick(5))
btn5.grid(row=2, column=1)
btn6 = Button(text="6", padx=35, pady=30, command=lambda: btnClick(6))
btn6.grid(row=2, column=2)

btn7 = Button(text="7", padx=35, pady=30, command=lambda: btnClick(7))
btn7.grid(row=3, column=0)
btn8 = Button(text="8", padx=35, pady=30, command=lambda: btnClick(8))
btn8.grid(row=3, column=1)
btn9 = Button(text="9", padx=35, pady=30, command=lambda: btnClick(9))
btn9.grid(row=3, column=2)

btn0 = Button(text="0", padx=35, pady=30, command=lambda: btnClick(0))
btn0.grid(row=4, column=0)

btnClear = Button(text="Clear", padx=30, pady=30, command=btnClr)
btnClear.grid(row=1, column=3)
btnPlus = Button(text="+", padx=35, pady=30, command=btnAdd)
btnPlus.grid(row=2, column=3)
btnMinus = Button(text="-", padx=35, pady=30, command=btnSub)
btnMinus.grid(row=3, column=3)
btnStar = Button(text="*", padx=35, pady=30, command=btnMul)
btnStar.grid(row=4, column=3)
btnSlash = Button(text="/", padx=35, pady=30, command=btnDiv)
btnSlash.grid(row=4, column=2)
btnPoint = Button(text=".", padx=35, pady=30, command=lambda: btnClick("."))
btnPoint.grid(row=4, column=1)
btnEql = Button(text="=", width=50, padx=30, pady=30, command=btnEqual)
btnEql.grid(row=5, columnspan=4)

window.mainloop()