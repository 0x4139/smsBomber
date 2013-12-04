#smsBomber
smsBomber is a simple gem that helps you connect to a modem and send smsFlash

#Example
````
require 'smsBomber'
hiroshima = SmsBomber.new('/dev/cu.wwan')
phoneNumber='+40742123123'
message='Kaboom !!!'
smsCount=200
hiroshima.sendFlashSMS(phoneNumber,message,smsCount)
````