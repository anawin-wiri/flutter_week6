// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Todo {
  String title;
  String destcription;
  bool isDone;
  Todo({
    required this.title,
    required this.destcription,
    required this.isDone,
  });

  Todo copyWith({
    String? title,
    String? destcription,
    bool? isDone,
  }) {
    return Todo(
      title: title ?? this.title,
      destcription: destcription ?? this.destcription,
      isDone: isDone ?? this.isDone,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'destcription': destcription,
      'isDone': isDone,
    };
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      title: map['title'] as String,
      destcription: map['destcription'] as String,
      isDone: map['isDone'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory Todo.fromJson(String source) =>
      Todo.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Todo(title: $title, destcription: $destcription, isDone: $isDone)';

  @override
  bool operator ==(covariant Todo other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        other.destcription == destcription &&
        other.isDone == isDone;
  }

  @override
  int get hashCode => title.hashCode ^ destcription.hashCode ^ isDone.hashCode;
}
