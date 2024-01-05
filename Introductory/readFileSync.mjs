import { readFileSync } from 'node:fs'

console.log('Leyendo el primer archivo...')
const text = readFileSync('./file.txt', 'utf-8')
console.log('primer texto:\n', text)

console.log('--> Hacer cosas mientras lee el archivo...')

console.log('Leyendo el segundo archivo...')
const secondText = readFileSync('./file2.txt', 'utf-8')
console.log('segundo texto:\n', secondText)