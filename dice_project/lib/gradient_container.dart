import 'package:dice_project/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:dice_project/styled_text.dart';
import 'package:dice_project/dice_roller.dart';

// var는 선언이후에 다른 곳에서 사용할 때, 값이 변경된다면
// 지정된 타입이 아닌 Dynamic 타입으로, 런타임시에 타입이 결정된다.
var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

// 값이 변하지 않는다면 final을 사용해서 최적화
// 동일하게 const를 사용할 수 있다.
// 다만, final의 경우, 런타임에 정해지는 상수라면 사용하고
// const의 경우, 컴파일 타임 즉, 실행이전에 정해진 상수일 경우 사용해야한다.
// 성능 최적화 ( 내부 )
const newAlignment = Alignment.bottomRight;

// 타입을 옵셔널하게 선언한 이후, 값을 넣어 사용할 수 있음
Alignment? myAlignment;

class GradientContainer extends StatelessWidget {

  const GradientContainer(this.color1, this.color2, {super.key});
  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: 
        DiceRoller(),
      ),
    );
  }
}
