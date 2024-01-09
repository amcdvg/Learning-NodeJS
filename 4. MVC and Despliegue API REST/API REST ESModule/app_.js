const express = require('express') // require -> commonJS
const app = express()
app.disable('x-powered-by') // desabilitar el header x-Powered-By: Express

app.get('/', (req, res) => {
  res.json({ message: 'Hola Mundo!' })
})

const PORT = process.env.PORT ?? 1234

app.listen(PORT, () => {
  console.log(`server listening on port http://localhost:${PORT}`)
})
