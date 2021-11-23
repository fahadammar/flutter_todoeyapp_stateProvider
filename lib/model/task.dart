class Task {
  final String name;
  bool isDone;
  // if passed no value, the default value of isDone is false
  Task({this.name, this.isDone = false});

  void toggleDone(){
    this.isDone = !this.isDone;
  }
}