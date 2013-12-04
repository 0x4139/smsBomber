Gem::Specification.new do |s|
  s.name        = 'smsBomber'
  s.version     = '0.0.4'
  s.date        = '2013-12-04'
  s.summary     = 'smsBomber'
  s.description = 'A simple gem that helps you connect to a modem and send SMS and Flash(class 0) messages'
  s.authors     = ['0x4139']
  s.email       = '0x4139@gmail.com'
  s.files       = ['lib/smsBomber.rb']
  s.homepage    = 'https://github.com/0x4139/smsBomber'
  s.license       = 'MIT'
  s.add_development_dependency 'serialport'
  s.add_runtime_dependency 'serialport'
end