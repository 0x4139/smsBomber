#smsBomber - [![Gem Version](https://badge.fury.io/rb/smsBomber.png)](http://badge.fury.io/rb/smsBomber)
smsBomber is a simple gem that helps you connect to a modem and send smsFlash

#Example
````
require 'smsBomber'
hiroshima = SmsBomber.new('/dev/cu.wwan')
phoneNumber='+40742123123'
message='Kaboom !!!'
smsCount=200
#for SMS
hiroshima.sendSMS(phoneNumber,message,smsCount)
#for Class 0 SMS
hiroshima.sendFlashSMS(phoneNumber,message,smsCount)
````
#Gemfile
````
gem "smsBomber", "~> 0.0.1"
````