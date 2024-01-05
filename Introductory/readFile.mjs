import { readFile } from 'node:fs'

console.log('Leyendo el primer archivo...')
readFile('./file.txt', 'utf-8', (err, text) => { // <---- ejecutas este callback
  console.log('primer texto:\n', text)
})

console.log('--> Hacer cosas mientras lee el archivo...')

console.log('Leyendo el segundo archivo...')
readFile('./file2.txt', 'utf-8', (err, text) => {
  console.log('segundo texto:\n', text)
})