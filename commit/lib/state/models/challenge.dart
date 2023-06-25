class ChallengeModel {
  final String name;
  final DateTime startedOn;
  final DateTime willEndOn;
  final List<TaskModel> tasks;
  final double longestStreak;
  final String description;
  final bool isFinished;
  final double score;

  ChallengeModel(this.name, this.startedOn, this.willEndOn, this.tasks,
      this.longestStreak, this.description, this.isFinished, this.score);
}

class TaskModel {}
