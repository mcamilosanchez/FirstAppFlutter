import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  //En StatefulWidget no hay necesidad un método de construcción, es decir build.
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

/* CUANDO SE USA STATEFULWIDGET, FLUTTER REQUIERE ESENCIALMENTE DOS CLASES: 
LA ANTERIOR Y LA SIGUIENTE */

class _DiceRollerState extends State<DiceRoller> {
  //El guion bajo significa que ésta clase será PRIVADA

  var currentDiceRoll = 2;

  void rollDice() {
    /* Tenemos que llamar una función especial en el lugar donde actualizamos 
    un valor que se utiliza en lugar de construir y que dará lugar a una salida 
    de interfaz de usuario diferente. Es decir, tenemos que llamar de nuevo a 
    build para que renderice la imagen de nuevo. */
    setState(() {
      /* Esta función que es proporcionada por Flutter, al final le dice a 
      Flutter que deben volver a ejecutar build function de este estado en el 
      que se llama setState. Y si después de ejecutar, Flutter determina que 
      ahora espera una diferente de lo que tenia antes y debe actualizarlo. */

      currentDiceRoll = randomizer.nextInt(6) +
          1; //# random entre 0 y 5, por eso se suma con 1//;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min, //Centra verticalmente
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        /* const SizedBox(
              height: 20,
            ), Esto es una caja vacía*/
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text(
              'Roll Dice'), /*los child siempre deden estar de últimos*/
        )
      ],
    );
  }
}
