class DoctorInfo {
  final String name;
  final String description;
  final int experience;
  final double rating;
  final String assetImage;
  final String speciality;
  final int reviews;
  final List<String> availableSlots;
  final String qualification;

  DoctorInfo({
    required this.name,
    required this.description,
    required this.experience,
    required this.rating,
    required this.assetImage,
    required this.speciality,
    required this.reviews,
    required this.availableSlots,
    required this.qualification,
    required String imageUrl, 
  });
}
