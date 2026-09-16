

class HomePage extends StatelessWidget{
  const HomePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F2),
      body: SafeArea(
        child:Padding(padding: const EdgeInsets.all(20),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Buongiorno, Francesco',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'Quanti soldi ho?',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              PortaFoglio(),
              const SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: BottoneEntrata(),
                  Expanded(
                    child: BottoneUscita())
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
