import 'package:patient_screen/data/models/doctor_model.dart';
import 'package:patient_screen/data/repositories/doctor_repository.dart';

class GetDoctors {
  Future<DoctorInfoResponseModel> call() async {
    return await DoctorRepositoryImpl().getDoctors();
  }
}
