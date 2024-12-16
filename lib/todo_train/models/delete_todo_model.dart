class DeleteTodoModel {
  late final num id;
  late final String todo;
  late final bool completed;
  late final num userId;
  late final bool isDeleted;
  late final String deletedOn;

  DeleteTodoModel(
      {required this.id,
        this.todo='',
        this.completed=false,
        required this.userId,
        this.isDeleted=false,
        this.deletedOn=''});

  DeleteTodoModel.fromJson(Map<String, dynamic> json) {
    id = num.parse((json['id']??0).toString());
    todo = json['todo'];
    completed = json['completed'].toString()=='true';
    userId = num.parse((json['userId']??0).toString());
    isDeleted = json['isDeleted'].toString()=='true';
    deletedOn = json['deletedOn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['todo'] = todo;
    data['completed'] = completed;
    data['userId'] = userId;
    data['isDeleted'] = isDeleted;
    data['deletedOn'] = deletedOn;
    return data;
  }
}
