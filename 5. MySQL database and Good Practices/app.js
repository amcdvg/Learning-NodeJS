import express, { json } from 'express' // require -> commonJS
import { moviesRouter } from './routes/rout.js'
import { corsMiddleware } from './middleware/cors.js'

const app = express()
app.use(json())
app.use(corsMiddleware)
app.disable('x-powered-by')

app.use('/movies', moviesRouter)

const PORT = process.env.PORT ?? 1234

app.listen(PORT, () => {
  console.log(`server listening on port http://localhost:${PORT}`)
})