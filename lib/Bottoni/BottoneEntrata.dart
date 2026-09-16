class BottoneEntrata extends ElevatedButton {
  const BottoneEntrata;
  @override
  Widget Build(BuildContext context){
  onPressed: () {
    print('Aggiungi entrata');
  },
  child: const Text('+ Entrata'),
    const SizedBox(width: 12),
  ),
  ),
  }
}