import 'package:patient_screen/data/models/doctor_model.dart';

abstract class DoctorRepository {
  Future<DoctorInfoResponseModel> getDoctors();
}
