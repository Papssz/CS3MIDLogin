import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EditProfile extends StatelessWidget {
  final Map<String, dynamic> user;

  const EditProfile({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final name = user['name'];
    final picture = user['picture']['large'];
    final email = user['email'];
    final gender = user['gender'];
    final streetNumber = user['location']['street']['number'];
    final streetName = user['location']['street']['name'];
    final city = user['location']['city'];
    final state = user['location']['state'];
    final postcode = user['location']['postcode'];
    final country = user['location']['country'];
    final phone = user['phone'];
    final cell = user['cell'];
    final dob = user['dob']['date'];
    final registered = user['registered']['date'];
    final nationality = user['nat'];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'User Details',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'TruenoRound',
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 10, 50),
      ),
      backgroundColor: const Color.fromARGB(255, 0, 10, 50),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Card(
              elevation: 12,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
              ),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(picture),
                      backgroundColor: Colors.grey[200],
                    ),
                    const SizedBox(height: 20.0),
                    Text(
                      '${name['title']} ${name['first']} ${name['last']}',
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 10, 50),
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      email,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontFamily: 'TruenoRound',
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    const Divider(thickness: 2),
                    const SizedBox(height: 16.0),
                    _buildInfoRow(
                      FontAwesomeIcons.user,
                      'Gender',
                      gender,
                    ),
                    const SizedBox(height: 12.0),
                    _buildInfoRow(
                      FontAwesomeIcons.calendar,
                      'Date of Birth',
                      dob,
                    ),
                    const SizedBox(height: 12.0),
                    _buildInfoRow(
                      FontAwesomeIcons.fileAlt,
                      'Registered',
                      registered,
                    ),
                    const SizedBox(height: 16.0),
                    _buildInfoRow(
                      FontAwesomeIcons.mapMarkerAlt,
                      'Address',
                      '$streetNumber $streetName, $city, $state, $postcode, $country',
                    ),
                    const SizedBox(height: 16.0),
                    _buildInfoRow(
                      FontAwesomeIcons.phone,
                      'Phone',
                      phone,
                    ),
                    const SizedBox(height: 8.0),
                    _buildInfoRow(
                      FontAwesomeIcons.mobileScreen,
                      'Cell',
                      cell,
                    ),
                    const SizedBox(height: 8.0),
                    _buildInfoRow(
                      FontAwesomeIcons.solidFlag,
                      'Nationality',
                      nationality,
                    ),
                    const SizedBox(height: 20.0),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FaIcon(
          icon,
          color: const Color.fromARGB(255, 0, 10, 50),
          size: 22,
        ),
        const SizedBox(width: 12.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$label:',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: 'TruenoRound',
                ),
              ),
              const SizedBox(height: 4.0),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 14,
                  fontFamily: 'TruenoRound',
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(4.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[200],
          ),
          child: const FaIcon(
            FontAwesomeIcons.edit,
            color: Colors.black,
            size: 15,
          ),
        ),
      ],
    );
  }
}
