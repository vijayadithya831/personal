from tkinter import *

window = Tk()

window.title("Simple Calculator")
window.iconbitmap("D:/Personal/Full Stack/Python/GUI/calculator.ico")

def btnClick(number):
    current = entry.get()
    entry.delete(0, END)
    entry.insert(0, str(current) + str(number))

def btnAdd():
    global fnum, math
    math =1
    first_number = entry.get()
    entry.delete(0, END)
    fnum = int(first_number)

def btnSub():
    global fnum, math
    math =1
    first_number = entry.get()
    entry.delete(0, END)
    fnum = int(first_number)

def btnMul():
    global fnum, math
    math =1
    first_number = entry.get()
    entry.delete(0, END)
    fnum = int(first_number)

def btnDiv():
    global fnum, math
    math =1
    first_number = entry.get()
    entry.delete(0, END)
    fnum = int(first_number)

def btnEqual():
    second_number = entry.get()
    entry.delete(0, END)
    snum = int(second_number)

    if math == 1:
        entry.insert(fnum + snum)  
    elif math == 2:
        entry.insert(fnum - snum)
    elif math == 3:
        entry.insert(fnum * snum)
    elif math == 4:
        entry.insert(fnum / snum)

def btnClr():
    entry.delete(0, END)

entry = Entry(width = 35, borderwidth = 5).grid(row = 0, column = 0, columnspan = 4)

btn1 = Button(window, text = 1, padx = 30, pady = 30, command = lambda: btnClick(1)).grid(row = 1, column = 0)
btn2 = Button(window, text = 2, padx = 30, pady = 30, command = lambda: btnClick(2)).grid(row = 1, column = 1)
btn3 = Button(window, text = 3, padx = 30, pady = 30, command = lambda: btnClick(3)).grid(row = 1, column = 2)

btn4 = Button(window, text = 4, padx = 30, pady = 30, command = lambda: btnClick(4)).grid(row = 2, column = 0)
btn5 = Button(window, text = 5, padx = 30, pady = 30, command = lambda: btnClick(5)).grid(row = 2, column = 1)
btn6 = Button(window, text = 6, padx = 30, pady = 30, command = lambda: btnClick(6)).grid(row = 2, column = 2)

btn7 = Button(window, text = 7, padx = 30, pady = 30, command = lambda: btnClick(7)).grid(row = 3, column = 0)
btn8 = Button(window, text = 8, padx = 30, pady = 30, command = lambda: btnClick(8)).grid(row = 3, column = 1)
btn9 = Button(window, text = 9, padx = 30, pady = 30, command = lambda: btnClick(9)).grid(row = 3, column = 2)
btn0 = Button(window, text = 0, padx = 30, pady = 30, command = lambda: btnClick(0)).grid(row = 4, column = 0)

btnClear = Button(window, text = "Clear", padx = 30, pady = 30).grid(row = 1, column = 4)
btnPoint = Button(window, text = ".", padx = 31, pady = 30).grid()


window.mainloop()