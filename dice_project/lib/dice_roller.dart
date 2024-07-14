import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  // 상태를 반환 ( 변할 때 마다 )
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// Private의 역할을 하는 _(언더바)
class _DiceRollerState extends State<DiceRoller> {

  var currentDiceRoll = 1;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedSwitcher(
          duration: const Duration(seconds: 1),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ), // 버튼에 패딩을 주던지 빈 객체를 넣어주던지
        // ElevatedButton(onPressed: onPressed, child: child) 배경색과 약간의 그림자를 가진 버튼
        // OutlinedButton(onPressed: onPressed, child: child) 배경색 없이 테두리만 있는 버튼
        // TextButton(onPressed: onPressed, child: child) 클릭이 가능한 텍스트 버튼
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   top: 20,
            // ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
