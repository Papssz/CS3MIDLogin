import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'TruenoRound'
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
                FontAwesomeIcons.bell, 
                color: Colors.white
              ),
              title: const Text(
                'Notifications',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'TruenoRound'
                ),
              ),
              onTap: () {},
            ),
            const Divider(color: Colors.white),
            ListTile(
              leading: const FaIcon(
                FontAwesomeIcons.lock, 
                color: Colors.white
              ),
              title: const Text(
                'Privacy',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'TruenoRound'
                ),
              ),
              onTap: () {},
            ),
            const Divider(color: Colors.white),
            ListTile(
              leading: const FaIcon(
                FontAwesomeIcons.shieldAlt, 
                color: Colors.white
              ),
              title: const Text(
                'Security',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'TruenoRound'
                ),
              ),
              onTap: () {},
            ),
            const Divider(color: Colors.white),
            ListTile(
              leading: const FaIcon(
                FontAwesomeIcons.trash, 
                color: Colors.red
              ),
              title: const Text(
                'Delete Account',
                style: TextStyle(
                  color: Colors.red,
                  fontFamily: 'TruenoRound'
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
          title: const Text('Confirm Deletion'),
          content: const Text('Are you sure you want to delete your account? This action cannot be undone.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                _deleteAccount(context); 
                Navigator.of(context).pop(); 
              },
              child: const Text('Delete'),
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
