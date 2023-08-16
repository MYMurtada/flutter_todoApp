class Task {
  late String label;
  late bool isDone;
  Task({required this.label, this.isDone = false});
  void toggleDone() {
    isDone = !isDone;
  }
}
