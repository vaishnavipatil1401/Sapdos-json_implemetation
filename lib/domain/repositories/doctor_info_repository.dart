import 'package:patient_screen/domain/entities/doctor_info.dart';

abstract class DoctorInfoRepository {
  Future<DoctorInfo> getDoctorInfo();
}
