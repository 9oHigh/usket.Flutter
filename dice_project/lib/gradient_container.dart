import 'package:flutter/material.dart';
import 'package:dice_project/styled_text.dart';

// var는 선언이후에 다른 곳에서 사용할 때, 값이 변경된다면 
// 지정된 타입이 아닌 Dynamic 타입으로, 런타임시에 타입이 결정된다.
var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

// 타입을 옵셔널하게 선언한 이후, 값을 넣어 사용할 수 있음
Alignment? myAlignment;

class GradientContainer extends StatelessWidget {

  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: const [
            Colors.deepPurple,
            Color.fromARGB(255, 78, 44, 138),
            Color.fromARGB(255, 48, 26, 84)
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}
