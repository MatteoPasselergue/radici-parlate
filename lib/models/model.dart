abstract class Model {
  final int id;

  Model({required this.id});

  Map<String, dynamic> toJson();
}