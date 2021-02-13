def on_button_pressed_a():
    openGripper()
input.on_button_pressed(Button.A, on_button_pressed_a)

def closeGripper():
    global closeInSteps
    closeInSteps = 15
    index = 0
    while index <= closeInSteps:
        bitbot.set_talon(Math.map(index, 0, closeInSteps, gripperOpen, grippedClosed))
        basic.pause(100)
        index += 1
def openGripper():
    bitbot.set_talon(gripperOpen)

def on_button_pressed_b():
    closeGripper()
input.on_button_pressed(Button.B, on_button_pressed_b)

closeInSteps = 0
gripperOpen = 0
grippedClosed = 0
bitbot.select_model(BBModel.XL)
grippedClosed = 78
gripperOpen = 48
openGripper()

def on_forever():
    pass
basic.forever(on_forever)
