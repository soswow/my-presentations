express = require 'express'
app = express()

app.use express.static __dirname + '/public'

app.get '/toggle-led', (req, res) ->
  console.log "toggle!"
  res.send 200

app.get '/morse-code', (req, res) ->
  res.send 200

app.listen 3000