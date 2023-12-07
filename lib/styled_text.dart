import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key}); //Constructor function

  /* No se puede usar text abajo en el Widget ya que la función constructora y 
  el método build no están conectados. En su lugar, tenemos que añadir una 
  llamada variable de clase, es decir, una propiedad. Se usa la palabra 
  reservada THIS para acceder a la variable de texto que está definida en 
  la clase*/

  final String
      text; /* Al agregar final estoy diciendo que se establecerá sólo 
  una vez y no se cambiará a partir de entonces. */

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 28,
        color: Colors.white,
      ),
    );
  }
}
