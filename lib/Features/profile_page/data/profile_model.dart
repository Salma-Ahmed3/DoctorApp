class ProfileModel {
  final String name;
  final String email;
  final String pic;
  final int id;
  final String password;
  final String gender;
  final String birthDate;
  final int phoneNumber;
  final String specialCondition;
  final String profilePic;
  final String city;
  final String universiry;
  final String location;

  ProfileModel({
    required this.email,
    required this.name,
    required this.pic,
    required this.id,
    required this.password,
    required this.gender,
    required this.birthDate,
    required this.phoneNumber,
    required this.specialCondition,
    required this.profilePic,
    required this.city,
    required this.universiry,
    required this.location,
  });
  factory ProfileModel.fromjson(json) {
    return ProfileModel(
      id: json['id'],
      name: json['name'],
      pic: json['profilePic'],
      email: json['email'],
      password: json['password'],
      gender: json['gender'],
      universiry: json['universiry'],
      phoneNumber: json['phoneNumber'],
      birthDate: json['birthDate'],
      specialCondition: json['specialCondition'],
      profilePic: json['profilePic'],
      city: json['city'],
      location: json['location'],
    );
  }
}
