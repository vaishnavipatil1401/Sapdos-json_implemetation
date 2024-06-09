import 'package:patient_screen/domain/entities/doctor_info.dart';
import 'package:patient_screen/domain/repositories/doctor_info_repository.dart';

class DoctorInfoRepositoryImpl implements DoctorInfoRepository {
  @override
  Future<DoctorInfo> getDoctorInfo() async {
    return Future.value(DoctorInfo(
        name: 'Dr. Lorem Ipsum',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ',
        experience: 5,
        rating: 4.5,
        assetImage: 'assets/images/doctor.jpg',
        speciality: 'Cardiology',
        reviews: 120,
        availableSlots: [
          '10:00 - 10:15 AM',
          '10:30 - 10:45 AM',
          '10:30 - 10:45 AM',
          '10:30 - 10:45 AM',
          '10:30 - 10:45 AM',
          '10:30 - 10:45 AM',
        ],
        qualification: 'MBBS, MD', 
        imageUrl: ""));
  }
}
