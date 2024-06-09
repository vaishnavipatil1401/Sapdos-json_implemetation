import 'package:flutter/material.dart';

class AvailableSlotsWidget extends StatelessWidget {
  final List<String> slots;

  const AvailableSlotsWidget({required this.slots});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.access_time, color: Colors.white),
            SizedBox(width: 8),
            Text(
              'Available Slots',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(height: 12),
        Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Center(
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: slots.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
                childAspectRatio: 3,
              ),
              itemBuilder: (context, index) {
                return ChoiceChip(
                  label: Text(
                    slots[index],
                    style: TextStyle(color: Color(0xFF13235A)), 
                  ),
                  selected: false,
                  onSelected: (selected) {
                    
                  },
                  backgroundColor: Color.fromARGB(219, 241, 239, 235), 
                  selectedColor: Color(0xFFDCE0E),
                  shape: StadiumBorder(
                    side: BorderSide(color: Color(0xFFDCE0E)),
                  ),
                );
              },
            ),
          ),
        ),
        SizedBox(height: 16),
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF0E2B5C),
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            onPressed: () {
              // handle booking
            },
            child: Text(
              'Book Appointment',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
