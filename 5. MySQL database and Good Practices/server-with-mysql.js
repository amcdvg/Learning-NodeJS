import { createApp } from './app.js'

import { MovieModel } from './models/mysql/mysqldb.js'

createApp({ movieModel: MovieModel })
