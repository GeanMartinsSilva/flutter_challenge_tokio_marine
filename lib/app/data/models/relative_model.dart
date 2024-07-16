import '../../domain/entities/relative.dart';

class RelativeModel extends Relative {
  RelativeModel({
    required super.name,
    required super.email,
  });

  factory RelativeModel.fromJson(Map<String, dynamic> json) {
    return RelativeModel(
      name: json['name'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
    };
  }
}
