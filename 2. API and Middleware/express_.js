const express = require('express')
const app = express()
const PORT = process.env.PORT ?? 1234
app.disable('x-powered-by')
const ditto = require('./pokemon/ditto.json')

app.get('/', (req, res) => {
  // res.status(200).send('<h1>Mi Página<h1>')
  // res.send('<h1>Mi Página<h1>')
  res.json({ message: 'Hola mundo!' })
})

app.get('/pokemon/ditto', (req, res) => {
  // res.status(200).send('<h1>Mi Página<h1>')
  // res.send('<h1>Mi Página<h1>')
  res.send(ditto)
})

app.post('/pokemon', (req, res) => {
  let body = ''
  // escuchar el evento data
  req.on('data', chunk => {
    body += chunk.toString()
  })

  req.on('end', () => {
    const data = JSON.parse(body)
    data.timestamp = Date.now()
    res.status(201).json(data)
  })
})

// la última a la que va a llegar
app.use((req, res) => {
  res.status(404).send('<h1>404</h1>')
})

app.listen(PORT, () => {
  console.log(`server listening on port http://localhost:${PORT}`)
})
