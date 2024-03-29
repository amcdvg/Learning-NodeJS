const express = require('express')
const ditto = require('./pokemon/ditto.json')
// const path = require('path')

const PORT = process.env.PORT ?? 1234

const app = express()
app.disable('x-powered-by')

// middleware
app.use(express.json())

app.get('/', (req, res) => {
  res.send('<h2>Hola!<h2>')
})

app.get('/pokemon/ditto', (req, res) => {
  res.json(ditto)
})

app.post('/pokemon', (req, res) => {
  res.status(201).json(req.body)
})

// la última a la que va a llegar
app.use((req, res) => {
  res.status(404).send('<h1>404</h1>')
})

app.listen(PORT, () => {
  console.log(`server listening on port http://localhost:${PORT}`)
})
