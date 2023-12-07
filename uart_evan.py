import serial
import time
import tkinter as tk

def uart(port, baudrate, enteredtext, timeout=1):
    #This function takes open a serial port and sends the text to the enigma machine. It then returns the output from the enigma machine
    #The text is sent as integers, one at a time to prevent race conditions that may taint the output
    try:
        ser = serial.Serial(port, baudrate, timeout=None)
        print(f"serial port @ {port} with baudrate {baudrate}")
        outputvals = []
        #The initial value is sent outside of the loop, all values are loaded with 128 added to them to prevent the enigma from sending a 0
        # which would fail to trigger the if statement that saves any received data

        data_to_send = (enteredtext[0] + 128).to_bytes(1, "big") 
        ser.write(data_to_send)
        
        while True:
            # rx
            #This reads the data from the enigma machine and converts it to an integer
            #Since a is treated as a zero within the enigma machine, we subtract 127 from the value to prevent a failure to trigger the if statement
            
            data_received = int.from_bytes(ser.readline(), "big") - 127
            if data_received:
                print(f"rx: {data_received - 1}")
                outputvals.append(data_received - 1)
                #Due to the "END" string being sent, we must make sure we are not accidentally adding it to the output, or attempting to send it to the enigma machine
                if type(enteredtext[len(outputvals)]) == int:
                    data_to_send = (enteredtext[len(outputvals)] + 128).to_bytes(1, "big")
                else:
                    data_to_send = enteredtext[len(outputvals)]
                    

            #This transmits the data to the enigma machine, and prints it to the console for debugging purposes
            
            print(f"tx: {data_to_send}")
            if type(data_to_send) == str:    
                if data_to_send.lower() == 'end':
                    break
            
            #If the enigma machine is not ready to transmit data, we wait a short time before trying again
            if data_to_send != "":
                ser.write(data_to_send)
            data_to_send = ""
            
                
        #Once all communication is complete, we close the serial connection to the machine and return the output to the show text function for retranslation and display
        ser.close()
        print(f"closed {port}")
        return outputvals
        
    except serial.SerialException as e:
        print(f"e：{e}")

#This function is called when the button is pressed. It takes the text from the textbox, converts it into an array
# of integer values each representing a letter, and sends it to the enigma. It then takes the output from the enigma and displays it on the GUI
# The enigma machine cannot handle capital letters or spaces, so this function also converts the text to lowercase and rembebrs the locations of spaces and capital letters
# In a real enigma machine, the spaces and capital letters would not be remembered to maintain security
def show_text():
    #This grabs the text from the textbox and saves it as a string

    text = entry.get()
    #First the arrays are created to contain the values of the letters, the locations of spaces, and the locations of capital letters
    capitalarray = []
    print(text)
    counter = 0
    valuearray = []
    spacearray = []
    finalstring = ""
    #This loop goes through each character in the string and converts it to a number, then adds it to the array, it also fills the capital and space arrays
    for chart in range(len(text)):
        char = text[chart]
        print(char)
        if char in 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ ':
            #For capital letters
            if char in 'ABCDEFGHIJKLMNOPQRSTUVWXYZ':
                valuearray.append((ord(char.lower()) - 97))
                capitalarray.append(counter)
            #For spaces
            if char == ' ':
                spacearray.append(counter)           
            #For lowercase letters
            if char in 'abcdefghijklmnopqrstuvwxyz':
                valuearray.append((ord(char) - 97))
                
            counter += 1
    #This adds the end string to the end of the array to tell the UART communication to stop
    valuearray.append("END")
    #Finally we send the array to the enigma and get the output
    finalstring = uart(port='COM4', baudrate=9600, enteredtext=valuearray)
    finaltext = ""
    #This retranslates the output from the enigma back into a string, and adds the spaces and capital letters back in
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

#This is the GUI

window = tk.Tk()
window.geometry("1920x1080")
#This creates the textbox that users can enter text into
entry = tk.Entry(window, width=83, font=("Arial", 24))
entry.pack(padx=10, pady=10)
entry.place(x=10, y=30, height=530)
#This is the button on the gui, when you press it, it sends the text to the enigma and displays the output. This is all performed by the show_text function
button = tk.Button(window, text="Send Message to Enigma", command=show_text)
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

