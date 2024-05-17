import 'package:equatable/equatable.dart';

class HealthAdvice extends Equatable {
  final int? id;
  final String? content;
  final int? doctorId;

  const HealthAdvice({this.id, this.content, this.doctorId});

  factory HealthAdvice.fromJson(Map<String, dynamic> json) => HealthAdvice(
        id: json['id'] as int?,
        content: json['content'] as String?,
        doctorId: json['doctorId'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'content': content,
        'doctorId': doctorId,
      };

  @override
  List<Object?> get props => [id, content, doctorId];
}
