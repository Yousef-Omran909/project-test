class GetAllTodoModel {
  late final List<Todos> todos;
  late final num total;
  late final num skip;
  late final num limit;

  GetAllTodoModel({this.todos=const [], this.total=0, this.skip=0, this.limit=0});

  GetAllTodoModel.fromJson(Map<String, dynamic> json) {
    todos = <Todos>[];
    if (json['todos'] != null) {
      json['todos'].forEach((v) {
        todos.add(Todos.fromJson(v));
      });
    }
    total = num.parse((json['total']??0).toString());
    skip = json['skip'];
    limit = json['limit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['todos'] = todos.map((v) => v.toJson()).toList();
    data['total'] = total;
    data['skip'] = skip;
    data['limit'] = limit;
    return data;
  }
}

class Todos {
  late final num id;
  late final String todo;
  late final bool completed;
  late final num userId;

  Todos({required this.id, this.todo='', this.completed=false,required this.userId});

  Todos.fromJson(Map<String, dynamic> json) {
    id = num.parse((json['id']??0).toString());
    todo = json['todo'];
    completed = json['completed'].toString()=='true';
    userId = num.parse((json['userId']??0).toString());
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['id'] =  id;
    data['todo'] = todo;
    data['completed'] = completed;
    data['userId'] = userId;
    return data;
  }
}
