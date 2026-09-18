class BottoneEntrata extends StatelessWidget {
  const BottoneEntrata;
  @override
  Widget Build(BuildContext context){
    return ElevatedButton(onPressed: () {
      print('Aggiungi entrata');
    }, child: const Text('+ Entrata'),
      const SizedBox(width: 12),
    ),
  }
}

class BottoneUscita extends StatelessWidget {
  const BottoneUscita;
  @override
  Widget Build(BuildContext context){
    return ElevatedButton(onPressed: () {
      print('Aggiungi uscita');
    }, child: const Text('- Uscita'),
        const SizedBox(width: 12),
    ),
  }
}