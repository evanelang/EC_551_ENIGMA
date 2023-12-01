import serial
import time
import tkinter as tk

def uart(port, baudrate, enteredtext, timeout=1):
    try:
        ser = serial.Serial(port, baudrate, timeout=timeout)
        print(f"serial port @ {port} with baudrate {baudrate}")
        
        while True:
            # rx
            data_received = ser.read().decode('utf-8').strip()
            if data_received:
                print(f"rx: {data_received}")
                ser.close()
                return data_received
            
            # tx
            data_to_send = enteredtext
            if data_to_send.lower() == 'exit':
                break
            ser.write(data_to_send.encode('utf-8'))
            time.sleep(1)

        ser.close()
        print(f"closed {port}")
        
    except serial.SerialException as e:
        print(f"e：{e}")

#baudrate and port def
def show_text():
    nonchardict = {}
    text = entry.get()
    counter = 0
    finalstring = ""
    for char in text:
        if char in 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ':
            if char in 'ABCDEFGHIJKLMNOPQRSTUVWXYZ':
                sentchar = ord(char.lower()) - 97
                nonchardict['A'] = counter
            else:
                sentchar = ord(char) - 97
        finalstring += uart(port='COM4', baudrate=9600, enteredtext=char(sentchar))
        sleep(1)
    label.config(text=text)

window = tk.Tk()
window.geometry("1920x1080")
entry = tk.Entry(window, width=83, font=("Arial", 24))
entry.pack(padx=10, pady=10)
entry.place(x=10, y=30, height=530)

button = tk.Button(window, text="Show Text", command=show_text)
button.pack()

label = tk.Label(window)
label.pack()
label.place(x=10, y=600)

window.mainloop()

uart(port='COM4', baudrate=9600)
window.mainloop()
# your port could be COM4 or something else, 
# look in Device Manager in Windows to find 
# the port number your device is connected to.


