console.log(`Hola mundo`)
console.log(globalThis)
// GlobalThis es una variable global en toda nuestra aplicación, nodeJs

// CommonJS require module
const { sum } = require('./sum')

console.log(sum(1, 2))
