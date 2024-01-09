import { createApp } from './app.js'

import { MovieModel } from './models/local-file-system/file.js'

createApp({ movieModel: MovieModel })
