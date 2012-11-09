io = require 'socket.io'
{SerialThing} = require './serialThing'
morseAlphabet = require('./morseCode').alphabet
express = require 'express'
app = express()
server = require('http').createServer app
io = io.listen server

prevValue = 0

thing = new SerialThing()

io.sockets.on 'connection', (socket) ->
  thing.serial.on 'data', (data) ->
    intData = parseInt data, 10
    unless intData is prevValue
      socket.emit 'progress', intData
      prevValue = intData

app.use express.static __dirname + '/public'

toggleValue = 0x01
app.get '/toggle-led', (req, res) ->
  console.log "toggle!"
  toggleValue = if toggleValue == 0x00 then 0x01 else 0x00
  thing.send toggleValue
  res.send 200

morseCycle = null
app.get '/morse-code', (req, res) ->
  data = req.query.data.toUpperCase()
  console.log "Let's say #{data}"
  morseSentanse = data.split('').map((item) -> morseAlphabet[item].replace /-/g, "...").join("   ")
  console.log "Which in a morse code: #{morseSentanse}"
  
  clearTimeout morseCycle
  
  curSign = 0
  sendNextSign = ->
    signal = if morseSentanse[curSign] is "." then 0x00 else 0x01
    thing.send signal
    curSign += 1
    if curSign > morseSentanse.length
      thing.send 0x01
      clearTimeout morseCycle
      res.send data.split('').map((item) -> "#{item} - #{morseAlphabet[item]}")
    else
      morseCycle = setTimeout sendNextSign, 100
  
  sendNextSign()


server.listen 3000
#app.listen 3000
