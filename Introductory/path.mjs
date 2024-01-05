import { sep, join, basename, extname } from 'node:path'

// barra separadora de carpetas segun SO
console.log(sep)

// unir rutas con path.join
const filePath = join('content', 'subfolder', 'test.txt')
console.log(filePath)

// nombre del fichero
const base = basename('/tmp/midu-secret-files/password.txt')
console.log(base)

// nombre del fichero sin la extensión
const filename = basename('/tmp/midu-secret-files/password.txt', '.txt')
console.log(filename)

// Obtiene la extensión
const extension = extname('my.super.image.jpg')
console.log(extension)
