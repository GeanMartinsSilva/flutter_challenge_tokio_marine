import 'package:flutter/material.dart';
import '../../_core/widgets/category_card.dart';

class QuoteSection extends StatelessWidget {
  const QuoteSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            'Cotar e Contratar',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryCard(
                    title: 'Automóvel', icon: 'policy-icon-car.png'),
                CategoryCard(
                    title: 'Residência', icon: 'policy-icon-residential.png'),
                CategoryCard(title: 'Vida', icon: 'policy-icon-life.png'),
                CategoryCard(
                    title: 'Acidentes\nPessoais',
                    icon: 'policy-icon-personal-accident.png'),
                CategoryCard(title: 'Moto', icon: 'policy-icon-moto.png'),
                CategoryCard(
                    title: 'Empresa', icon: 'policy-icon-enterprise.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
