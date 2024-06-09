import 'dart:convert';

class DoctorModel {
  final String doctorImage;
  final String doctorName;
  final String specialization;
  final String appointmentIcon;
  final int price;

  DoctorModel({
    required this.doctorImage,
    required this.doctorName,
    required this.specialization,
    required this.appointmentIcon,
    required this.price,
  });

  factory DoctorModel.fromJson(Map<String, dynamic> json) {
    return DoctorModel(
      doctorImage: json['doctorImage'],
      doctorName: json['doctorName'],
      specialization: json['specialization'],
      appointmentIcon: json['appointmentIcon'],
      price: json['price'],
    );
  }
}

// To parse this JSON data, do
//
//     final doctorInfoResponseModel = doctorInfoResponseModelFromJson(jsonString);

DoctorInfoResponseModel doctorInfoResponseModelFromJson(String str) =>
    DoctorInfoResponseModel.fromJson(json.decode(str));

String doctorInfoResponseModelToJson(DoctorInfoResponseModel data) =>
    json.encode(data.toJson());

class DoctorInfoResponseModel {
  User? user;
  List<DoctorsList>? doctorsList;

  DoctorInfoResponseModel({
    this.user,
    this.doctorsList,
  });

  factory DoctorInfoResponseModel.fromJson(Map<String, dynamic> json) =>
      DoctorInfoResponseModel(
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        doctorsList: json["doctorsList"] == null
            ? []
            : List<DoctorsList>.from(
                json["doctorsList"]!.map((x) => DoctorsList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "user": user?.toJson(),
        "doctorsList": doctorsList == null
            ? []
            : List<dynamic>.from(doctorsList!.map((x) => x.toJson())),
      };
}

class DoctorsList {
  String? doctorImage;
  String? doctorName;
  String? specialization;
  String? appointmentIcon;
  int? price;

  DoctorsList({
    this.doctorImage,
    this.doctorName,
    this.specialization,
    this.appointmentIcon,
    this.price,
  });

  factory DoctorsList.fromJson(Map<String, dynamic> json) => DoctorsList(
        doctorImage: json["doctorImage"],
        doctorName: json["doctorName"],
        specialization: json["specialization"],
        appointmentIcon: json["appointmentIcon"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "doctorImage": doctorImage,
        "doctorName": doctorName,
        "specialization": specialization,
        "appointmentIcon": appointmentIcon,
        "price": price,
      };
}

class User {
  String? greeting;
  String? name;
  String? avatar;

  User({
    this.greeting,
    this.name,
    this.avatar,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        greeting: json["greeting"],
        name: json["name"],
        avatar: json["avatar"],
      );

  Map<String, dynamic> toJson() => {
        "greeting": greeting,
        "name": name,
        "avatar": avatar,
      };
}
