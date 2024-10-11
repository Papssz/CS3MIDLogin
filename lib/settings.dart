import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cs3midLogin/userDetails.dart'; // Replace with actual import path

class SettingsPage extends StatelessWidget {  
  final Map<String, dynamic> user; // Expect user data

  const SettingsPage({Key? key, required this.user}) : super(key: key); // Add user parameter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'TruenoRound',
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 10, 50),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        color: const Color.fromARGB(255, 0, 10, 50),
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            ListTile(
              leading: const FaIcon(
                FontAwesomeIcons.user, 
                color: Colors.white,
              ),
              title: const Text(
                'Personal Details',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'TruenoRound',
                ),
              ),
              onTap: () {
                // Navigate to UserDetails page with user data
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserDetails(user: user),
                  ),
                );
              },
            ),
            const Divider(color: Colors.white),
            ListTile(
              leading: const FaIcon(
                FontAwesomeIcons.bell, 
                color: Colors.white,
              ),
              title: const Text(
                'Notifications',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'TruenoRound',
                ),
              ),
              onTap: () {},
            ),
            const Divider(color: Colors.white),
            ListTile(
              leading: const FaIcon(
                FontAwesomeIcons.lock, 
                color: Colors.white,
              ),
              title: const Text(
                'Privacy',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'TruenoRound',
                ),
              ),
              onTap: () {},
            ),
            const Divider(color: Colors.white),
            ListTile(
              leading: const FaIcon(
                FontAwesomeIcons.shieldAlt, 
                color: Colors.white,
              ),
              title: const Text(
                'Security',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'TruenoRound',
                ),
              ),
              onTap: () {},
            ),
            const Divider(color: Colors.white),
            ListTile(
              leading: const FaIcon(
                FontAwesomeIcons.trash, 
                color: Colors.red,
              ),
              title: const Text(
                'Delete Account',
                style: TextStyle(
                  color: Colors.red,
                  fontFamily: 'TruenoRound',
                ),
              ),
              onTap: () {
                _showDeleteConfirmationDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showDeleteConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Confirm Deletion',
            style: TextStyle(
              fontFamily: 'TreunoRound'
            ),
          ),
          content: const Text(
            'Are you sure you want to delete your account? This action cannot be undone.',
            style: TextStyle(
              fontFamily: 'TreunoRound'
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'Cancel',
                style: TextStyle(
                  fontFamily: 'TruenoRound',
                  color: Colors.black
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                _deleteAccount(context); 
                Navigator.of(context).pop(); 
              },
              child: const Text(
                'Delete',
                style: TextStyle(
                  fontFamily: 'TruenoRound',
                  color: Colors.red
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _deleteAccount(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Account deleted successfully.')),
    );
  }
}
