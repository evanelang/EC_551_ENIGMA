import serial
import time

def uart(port, baudrate, timeout=1):
    try:
        ser = serial.Serial(port, baudrate, timeout=timeout)
        print(f"serial port @ {port} with baudrate {baudrate}")
        
        while True:
            # rx
            data_received = ser.readline().decode('utf-8').strip()
            if data_received:
                print(f"rx: {data_received}")
            
            # tx
            data_to_send = input("type: ")
            if data_to_send.lower() == 'exit':
                break
            ser.write(data_to_send.encode('utf-8'))
            time.sleep(1)

        ser.close()
        print(f"closed {port}")
        
    except serial.SerialException as e:
        print(f"e：{e}")

#baudrate and port def
uart(port='COM4', baudrate=9600)
# your port could be COM4 or something else, 
# look in Device Manager in Windows to find 
# the port number your device is connected to.


