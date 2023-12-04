import serial
import time
import tkinter as tk

def uart(port, baudrate, enteredtext, timeout=1):
    try:
        ser = serial.Serial(port, baudrate, timeout=timeout)
        print(f"serial port @ {port} with baudrate {baudrate}")
        outputvals = []
        data_to_send = (enteredtext[0] + 128).to_bytes(1, "big") 
        #clear = ser.readline()
        #print(clear)
        #time.sleep(1)
        ser.write(data_to_send)
        while True:
            # rx
            
            data_received = int.from_bytes(ser.readline(), "big") - 127
            if data_received:
                print(f"rx: {data_received - 1}")
                outputvals.append(data_received - 1)
                if type(enteredtext[len(outputvals)]) == int:
                    data_to_send = (enteredtext[len(outputvals)] + 128).to_bytes(1, "big")
                else:
                    data_to_send = enteredtext[len(outputvals)]
                    

            # tx
            
            print(f"tx: {data_to_send}")
            if type(data_to_send) == str:    
                if data_to_send.lower() == 'end':
                    break
            if data_to_send != "":
                ser.write(data_to_send)
            data_to_send = ""
            #time.sleep(.005)
                

        ser.close()
        print(f"closed {port}")
        return outputvals
        
    except serial.SerialException as e:
        print(f"e：{e}")

#baudrate and port def
def show_text():
    capitalarray = []
    text = entry.get()
    print(text)
    counter = 0
    valuearray = []
    spacearray = []
    finalstring = ""
    for chart in range(len(text)):
        char = text[chart]
        print(char)
        if char in 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ ':
            if char in 'ABCDEFGHIJKLMNOPQRSTUVWXYZ':
                valuearray.append((ord(char.lower()) - 97))
                capitalarray.append(counter)
            if char == ' ':
                spacearray.append(counter)           

            if char in 'abcdefghijklmnopqrstuvwxyz':
                valuearray.append((ord(char) - 97))
                
            counter += 1
    valuearray.append("END")
    finalstring = uart(port='COM4', baudrate=9600, enteredtext=valuearray)
    finaltext = ""
    for val in finalstring:
        print(val)
        finaltext += chr(val + 97)
    for space in spacearray:
        finaltext = finaltext[:space] + " " + finaltext[space:]
    for cap in capitalarray:
        finaltext = finaltext[:cap] + finaltext[cap].upper() + finaltext[cap+1:]   
    print(finaltext)
    print(spacearray)
    label.config(text=finaltext)

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

#uart(port='COM4', baudrate=9600)
window.mainloop()
# your port could be COM4 or something else, 
# look in Device Manager in Windows to find 
# the port number your device is connected to.

