import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: 75,
              child: Image.asset('assets/tokio-resolve-dark.png')),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Acesse através das redes sociais',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const FaIcon(FontAwesomeIcons.google),
              ),
              IconButton(
                onPressed: () {},
                icon: const FaIcon(FontAwesomeIcons.facebookF),
              ),
              IconButton(
                onPressed: () {},
                icon: const FaIcon(FontAwesomeIcons.twitter),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
