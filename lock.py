import time
import RPi.GPIO as GPIO

GPIO.setmode(GPIO.BCM)
pwmgpio = 4
GPIO.setup(pwmgpio, GPIO.OUT)
servoctl = GPIO.PWM(pwmgpio, 50)
servoctl.start(0.0)
servoctl.ChangeDutyCycle(12)
time.sleep(0.5)
GPIO.cleanup()
