//a nivel de aplicación
const middleware1 = (req, res, next) => {
    console.log('ingreso a validación de usuario')
    req.dato1 = 'un dato'
    next()
 }
 
 
 const middleware2 = (req, res, next) => {
    req.dato2 = 'otro dato'
    next()
 }
 

 module.exports = {
    middleware1,
    middleware2
 }