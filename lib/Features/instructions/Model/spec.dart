import 'package:equatable/equatable.dart';

class Spec extends Equatable {
	final int? id;
	final String? name;

	const Spec({this.id, this.name});

	factory Spec.fromJson(Map<String, dynamic> json) => Spec(
				id: json['id'] as int?,
				name: json['name'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'name': name,
			};

	@override
	List<Object?> get props => [id, name];
}
