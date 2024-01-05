const http = require('node:http') // protocolo HTTP
// const { findAvailablePort } = require('./port_.js')

const desiredPort = process.env.PORT ?? 1234

const server = http.createServer((req, res) => {
  res.setHeader('Content-Type', 'text/html; charset=utf-8')
  // eslint-disable-next-line eqeqeq
  if (req.url == '/') {
    res.statusCode = 200 // Ok
    // res.setHeader('Charset', 'utf-8')
    res.end('<h1>Bienvenido a mi página de incio<h1>')
  // eslint-disable-next-line eqeqeq
  } else if (req.url == '/contacto') {
    res.statusCode = 200 // Ok
    // res.setHeader('Charset', 'utf-8')
    res.end('<h1>contacto<h1>')
  } else {
    res.statusCode = 404 // Not Found
    res.end('<h1>404<h1>')
  }

  // console.log('request received', req.url)
})

server.listen(desiredPort, () => {
  console.log(`server listening on port http://localhost:${desiredPort}`)
})
