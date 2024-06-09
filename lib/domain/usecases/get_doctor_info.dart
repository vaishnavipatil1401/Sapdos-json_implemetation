import 'package:patient_screen/domain/entities/doctor_info.dart';
import 'package:patient_screen/domain/repositories/doctor_info_repository.dart';

class GetDoctorInfo {
  final DoctorInfoRepository repository;

  GetDoctorInfo(this.repository);

  Future<DoctorInfo> call() async {
    return await repository.getDoctorInfo();
  }
}
