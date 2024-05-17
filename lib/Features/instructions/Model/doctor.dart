import 'package:equatable/equatable.dart';

class Doctor extends Equatable {
  final int? id;
  final String? name;
  final String? email;
  final String? password;
  final String? phoneNumber;
  final String? universiry;
  final int? fee;
  final String? birthDate;
  final int? doctorspecialtyId;
  final String? profilePic;
  final String? city;

  const Doctor({
    this.id,
    this.name,
    this.email,
    this.password,
    this.phoneNumber,
    this.universiry,
    this.fee,
    this.birthDate,
    this.doctorspecialtyId,
    this.profilePic,
    this.city,
  });

  factory Doctor.fromJson(Map<String, dynamic> json) => Doctor(
        id: json['id'] as int?,
        name: json['name'] as String?,
        email: json['email'] as String?,
        password: json['password'] as String?,
        phoneNumber: json['phoneNumber'] as String?,
        universiry: json['universiry'] as String?,
        fee: json['fee'] as int?,
        birthDate: json['birthDate'] as String?,
        doctorspecialtyId: json['doctorspecialtyId'] as int?,
        profilePic: json['profilePic'] as String?,
        city: json['city'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'password': password,
        'phoneNumber': phoneNumber,
        'universiry': universiry,
        'fee': fee,
        'birthDate': birthDate,
        'doctorspecialtyId': doctorspecialtyId,
        'profilePic': profilePic,
        'city': city,
      };

  @override
  List<Object?> get props {
    return [
      id,
      name,
      email,
      password,
      phoneNumber,
      universiry,
      fee,
      birthDate,
      doctorspecialtyId,
      profilePic,
      city,
    ];
  }
}
