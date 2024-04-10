from tkinter import *

window = Tk()

window.title("Simple Calculator")
window.iconbitmap("D:/Personal/Full Stack/Python/GUI/calculator.ico")

entry = Entry(width = 60, borderwidth = 5)
entry.grid()

btnOne = Button(window, text = "1", padx = 30, pady = 30)
btnOne.grid(row = 0, column = 0)

btnTwo = Button(window, text = "2", padx = 30, pady = 30)
btnTwo.grid(row = 0, column = 1)

btnThree = Button(window, text = "3", padx = 30, pady = 30)
btnThree.grid(row = 0, column = 2)

btnFour = Button(window, text = "4", padx = 30, pady = 30)
btnFour.grid(row = 0, column = 3)

btnFive = Button(window, text = "5", padx = 30, pady = 30)
btnFive.grid(row = 1, column = 0)

btnSix = Button(window, text = "6", padx = 30, pady = 30)
btnSix.grid(row = 1, column = 1)

btnSeven = Button(window, text = "7", padx = 30, pady = 30)
btnSeven.grid(row = 1, column = 2)

btnEight = Button(window, text = "8", padx = 30, pady = 30)
btnEight.grid(row = 1, column = 3)

btnNine = Button(window, text = "9", padx = 30, pady = 30)
btnNine.grid(row = 2, column = 0)

btnZero = Button(window, text = "0", padx = 30, pady = 30)
btnZero.grid(row = 2, column = 1)

btnPlus = Button(window, text = "+", padx = 30, pady = 30)
btnOne.grid(row = 2, column = 2)

btnMinus = Button(window, text = "-", padx = 30, pady = 30)
btnMinus.grid(row = 2, column = 3)

btnStar = Button(window, text = "*", padx = 30, pady = 30)
btnStar.grid(row = 3, column = 0)

btnSlash = Button(window, text = "/", padx = 30, pady = 30)
btnSlash.grid(row = 3, column = 1)

btnEqual = Button(window, text = "=", padx = 30, pady = 30)
btnEqual.grid(row = 3, column = 2)

btnPercent = Button(window, text = "%", padx = 30, pady = 30)
btnPercent.grid(row = 3, column = 3)

window.mainloop()