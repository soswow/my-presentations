serialPort = require('serialport')
SerialPort = serialPort.SerialPort
fs = require('fs')

class SerialThing
  constructor: (port = '/dev/tty.usbserial-A6005pjh') ->
    try
     fs.statSync port
    catch e
      console.log "Couldn't stat #{port}"
      process.exit()

    @serial = new SerialPort port, 
      baudrate: 9600,
      parser: serialPort.parsers.readline("\n")
      
#    @serial.on "data", (data) -> readCallBack(data) if data?
    
  send: (data) ->
    @serial.write new Buffer([data])

exports.SerialThing = SerialThing