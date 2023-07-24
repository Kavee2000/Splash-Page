import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(children: [
      Expanded(
        flex: 2,
        child: SizedBox(
          width: double.infinity,
          child: Center(
            child: Image.asset(
              "assets/nsbm_logo.png",
              width: size.width / 2,
            ),
          ),
        ),
      ),
      Expanded(
        flex: 1,
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text("NSBM", style: TextStyle(fontSize: 40)),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Container(
                    height: 50,
                    width: size.width / 2,
                    child: Row(
                      children: [
                        Square(Colors.green.shade100),
                        Square(Colors.green.shade200),
                        Square(Colors.green.shade300),
                        Square(Colors.green.shade400),
                        Square(Colors.green.shade500),
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    ]));
  }
}

class SizeBox {}

class Square extends StatelessWidget {
  final Color color;
  const Square(
    this.color, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
