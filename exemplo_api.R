
#* Escreve uma mensagem
#* @param msg A mensagem para escrever
#* @get /echo
function(msg = "") {
  paste0("A mensagem é: '", msg, "'")
}

#* Retorna contagem do mtcars
#* @get /count
function() {
  dplyr::count(mtcars)$n
}

#* Retorna a soma de dois números
#* @param a O primeiro número
#* @param b O segundo número
#* @post /sum
function(a, b){
  2*as.numeric(a) + as.numeric(b)
}
