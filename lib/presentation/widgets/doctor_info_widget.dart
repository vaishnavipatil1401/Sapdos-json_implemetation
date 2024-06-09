import 'package:flutter/material.dart';
import 'package:patient_screen/domain/entities/doctor_info.dart';
import 'available_slots_widget.dart'; 

class DoctorInfoWidget extends StatelessWidget {
  final DoctorInfo doctor;

  const DoctorInfoWidget({Key? key, required this.doctor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    doctor.assetImage,
                    width: 300,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 150),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        doctor.name,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Row(
                        children: [
                          Icon(Icons.person, color: Colors.grey[700]),
                          SizedBox(width: 4),
                          Text(
                            doctor.speciality,
                            style: TextStyle(
                                fontSize: 20, color: Colors.grey[700]),
                          ),
                          SizedBox(width: 8),
                          Icon(Icons.star, color: Colors.orange, size: 20),
                          Text(
                            '${doctor.rating}',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            ' (${doctor.reviews})',
                            style: TextStyle(
                                fontSize: 20, color: Colors.grey[600]),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.school, color: Colors.grey[700]),
                          SizedBox(width: 4),
                          Text(
                            doctor.qualification,
                            style: TextStyle(
                                fontSize: 20, color: Colors.grey[700]),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 18),
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.calendar_today, color: Colors.blue[800]),
                            SizedBox(width: 4),
                            Text(
                              "${doctor.experience} Years",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.blue[800],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Description',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[800],
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        doctor.description,
                        style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            AvailableSlotsWidget(
              slots: doctor
                  .availableSlots, 
            ),
          ],
        ),
      ),
    );
  }
}
