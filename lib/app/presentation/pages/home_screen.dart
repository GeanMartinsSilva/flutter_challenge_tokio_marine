import 'package:flutter/material.dart';
import '../widgets/family_section.dart';
import '../widgets/welcome_section.dart';
import '../widgets/quote_section.dart';
import '../widgets/contracted_section.dart';
import '../widgets/drawer_content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 30,
                width: 30,
                child: Image.asset('assets/tokio_marine_logo_white.png')),
            SizedBox(
                height: 30, child: Image.asset('assets/logo-tokio-text.png')),
          ],
        ),
        centerTitle: true,
        actions: [
          Stack(
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.notifications),
                onPressed: () {},
              ),
              Positioned(
                right: 11,
                top: 11,
                child: Container(
                  height: 5,
                  width: 5,
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 10,
                    minHeight: 10,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      body: ListView(
        children: const [
          WelcomeSection(),
          QuoteSection(),
          FamilySection(),
          ContractedSection(),
        ],
      ),
      drawer: const Drawer(
        child: DrawerContent(),
      ),
    );
  }
}
