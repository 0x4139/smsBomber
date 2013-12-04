#smsBomber
smsBomber is a simple gem that helps you connect to a modem and send smsFlash

#Example
````
require 'smsBomber'
hiroshima = SmsBomber.new('/dev/cu.wwan')
hiroshima.sendFlashSMS('+40742123123','This is your message',200)
````