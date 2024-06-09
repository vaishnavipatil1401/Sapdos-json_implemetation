import 'package:patient_screen/domain/entities/doctor_info.dart';

class DoctorInfoModel {
  final String name;
  final String speciality;
  final String qualification;
  final int experience;
  final String imageUrl;
  final String description;
  final List<String> availableSlots;
  final double rating;
  final int reviews;

  DoctorInfoModel({
    required this.name,
    required this.speciality,
    required this.qualification,
    required this.experience,
    required this.imageUrl,
    required this.description,
    required this.availableSlots,
    required this.rating,
    required this.reviews,
  });

  factory DoctorInfoModel.fromJson(Map<String, dynamic> json) {
    return DoctorInfoModel(
      name: json['name'],
      speciality: json['speciality'],
      qualification: json['qualification'],
      experience: json['experience'],
      imageUrl: json['imageUrl'],
      description: json['description'],
      availableSlots: List<String>.from(json['availableSlots']),
      rating: json['rating'],
      reviews: json['reviews'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'speciality': speciality,
      'qualification': qualification,
      'experience': experience,
      'imageUrl': imageUrl,
      'description': description,
      'availableSlots': availableSlots,
      'rating': rating,
      'reviews': reviews,
    };
  }

  DoctorInfo toEntity() {
    return DoctorInfo(
      name: name,
      speciality: speciality,
      qualification: qualification,
      experience: experience,
      imageUrl: imageUrl,
      description: description,
      availableSlots: availableSlots,
      rating: rating,
      reviews: reviews,
      assetImage: imageUrl,
    );
  }
}
