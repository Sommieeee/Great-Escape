import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:great_escape/ui/connecting.dart';

class Connect extends StatelessWidget {
  const Connect({super.key});
  static const String id = 'connect';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 24,
            left: 24,
            right: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Connecting....',
                style: TextStyle(
                  fontFamily: 'Montaga',
                  fontSize: 36,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Connecting()));
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/profiles.png",
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Chinonso",
                          style: TextStyle(
                            fontFamily: "Montaga",
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Connecting()));
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/profiles.png",
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Chimemelie",
                          style: TextStyle(
                            fontFamily: "Montaga",
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Connecting()));
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/profiles.png",
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Ifeoma",
                          style: TextStyle(
                            fontFamily: "Montaga",
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Connecting()));
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/profiles.png",
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Chisomaga",
                          style: TextStyle(
                            fontFamily: "Montaga",
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
