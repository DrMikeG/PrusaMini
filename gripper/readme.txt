Dec 2020

Testing servo connections on bit:bit XL.

Item Name: SG90 Mini Analog Servo
Operating Speed (4.8V no load): 0.12sec/60 degrees
Stall torque: 1.2kg / 42.3oz(4.8V);1.6 kg / 56.4oz (6.0V)
operating voltage: 3.0-7.2V

gnd brown
red vcc
orange signal


Just needs really fresh batteries for the sonar to work.

Servo plugged into P2 controlled using talon or servo block works with the sonar in place.



// Block to enable Bluetooth and disable FireLeds.
    /**
      * Enable/Disable Bluetooth support by disabling/enabling FireLeds
      * @param enable enable or disable Blueetoth
    */
    //% blockId="BBEnableBluetooth"
    //% block="%enable|Bluetooth"
    //% blockGap=8
    export function bbEnableBluetooth(enable: BBBluetooth)
    {
        if (enable == BBBluetooth.btEnable)
            btDisabled = false;
        else
            btDisabled = true;
    }



https://makecode.microbit.org/

The talon blocks (/library) seem to operate pin 2.

Python sonar code: https://4tronix.co.uk/blog/?p=2317

from microbit import *
from utime import ticks_us, sleep_us

SONAR = pin15

def sonar( ):
SONAR.write_digital(1) # Send 10us Ping pulse
sleep_us(10)
SONAR.write_digital(0)
SONAR.set_pull(SONAR, NO_PULL)
while SONAR.read_digital() == 0: # ensure Ping pulse has cleared
pass
start = ticks_us() # define starting time
while SONAR.read_digital() == 1: # wait for Echo pulse to return
pass
end = ticks_us() # define ending time
echo = end-start
distance = int(0.01715 * echo) # Calculate cm distance
return distance

while True:
display.scroll(sonar())
sleep(1000)





And now the equivalent program for the BitBot XL. You can see that we’ve defined a new function getLine( ) that reads the I2C device and returns the state of bit 0 (Left sensor) or bit 1 (Right sensor)

from microbit import *
import neopixel
I2CADDR = 0x1c # address of PCA9557
fireleds = neopixel.NeoPixel(pin13, 12)

def getLine(bit):
    mask = 1 << bit
    value = 0
    try:
        value = i2c.read(I2CADDR, 1)[0]
    except OSError:
        pass
    if (value & mask) > 0:
        return 1
    else:
        return 0

while True:
    if(getLine(0) == 0):
        fireleds[5]=(40,0,0)
    else:
        fireleds[5]=(0,40,0)
    if(getLine(1) == 0):
        fireleds[11]=(40,0,0)
    else:
        fireleds[11]=(0,40,0)
    fireleds.show()
    sleep(200)

The above programs are complete, with all the imports and defines required. This simple line following algorithm for the BitBot XL uses the getLine( ) function defined above as well as some simple motor functions which aren’t defined here

while True:
    lline = getLine(0)
    rline = getLine(1)
    if (lline == 1):
        spinLeft( )
    elif (rline == 1):
        spinRight( )
    else:
        forward(speed)