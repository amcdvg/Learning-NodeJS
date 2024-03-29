// Esto sólo en los módulos nativos
// que no tienen promesas nativas

// const { promisify } = require('node:util')
// const readFilePromise = promisify(fs.readFile)

const fs = require('node:fs/promises')
//const { promisify } = require('node:util')


console.log('Leyendo el primer archivo...')
fs.readFile('./file.txt', 'utf-8')
  .then(text => {
    console.log('primer texto:\n', text)
  })

console.log('--> Hacer cosas mientras lee el archivo...')

console.log('Leyendo el segundo archivo...')
fs.readFile('./file2.txt', 'utf-8')
  .then(text => {
    console.log('segundo texto:\n', text)
  })