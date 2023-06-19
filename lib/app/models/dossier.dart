class Dossier {
  final int id;
  final String title;
  bool done;

  Dossier({
    required this.id,
    required this.title,
    this.done = false,
  });

  factory Dossier.fromMap(Map dossierMap) {
    return Dossier(
      id: dossierMap['id'],
      title: dossierMap['title'],
      done: dossierMap['done'],
    );
  }
  void toggle() {
    done = !done;
  }
}