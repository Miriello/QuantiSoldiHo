import 'package:flutter/material.dart';

void main(){
  runApp(const QuantiSoldiHo());
}

class QuantiSoldiHo extends StatelessWidget{
  const QuantiSoldiHo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Quanti Soldi Hai ? ',
    theme: ThemeData(
    useMaterial3: true,
    colorSchemeSeed: Colors.green,
    ),
    home: const HomePage(),
    );
  }
}


class PortaFoglio extends StatelessWidget{
  const PortaFoglio ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: const [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 20,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          const PortafoglioChart(),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              PortafoglioLegendItem(
                color: Color(0xFF2F8257),
                label: 'Conti',
                percentage: '47%',
              ),
              PortafoglioLegendItem(
                color: Color(0xFF5289C7),
                label: 'Investimenti',
                percentage: '26%',
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              PortafoglioLegendItem(
                color: Color(0xFFD59A38),
                label: 'Crypto',
                percentage: '18%',
              ),
              PortafoglioLegendItem(
                color: Color(0xFF8A67B5),
                label: 'Contanti',
                percentage: '9%',
              ),
            ],
          ),
        ],
      ),
    );
    }
}

class PortafoglioChart extends StatelessWidget {
  const PortafoglioChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 210,
      height: 210,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 190,
            height: 190,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xFF2F8257),
                width: 22,
              ),
            ),
          ),
          const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Patrimonio totale',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 4),
              Text(
                '€ 24.580',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              Text(
                '+ € 820 questo mese',
                style: TextStyle(
                  color: Color(0xFF167345),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PortafoglioLegendItem extends StatelessWidget {
  const PortafoglioLegendItem({
    super.key,
    required this.color,
    required this.label,
    required this.percentage,
  });

  final Color color;
  final String label;
  final String percentage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 135,
      child: Row(
        children: [
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 7),
          Expanded(
            child: Text(
              label,
              style: const TextStyle(fontSize: 12),
            ),
          ),
          Text(
            percentage,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}