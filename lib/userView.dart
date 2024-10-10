import 'package:flutter/material.dart';
import 'package:cs3midLogin/userDetails.dart';
import 'package:cs3midLogin/LoginScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserView extends StatelessWidget {
  final Map<String, dynamic> user;

  const UserView({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final name = user['name'];
    final picture = user['picture']['large'];
    final email = user['email'];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'User Profile',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'TruenoRound',
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: const Color.fromARGB(255, 0, 10, 50),
      ),
      backgroundColor: const Color.fromARGB(255, 0, 10, 50),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.bottomRight, 
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage(picture),
                      ),
                      Container(
                        width: 40,
                        height: 32,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color.fromARGB(255, 98, 0, 255).withOpacity(0.8),
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 16,
                          ),
                          onPressed: () {
                        
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    '${name['title']} ${name['first']} ${name['last']}',
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 10, 50),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    email,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontFamily: 'TruenoRound',
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20.0),
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 98, 0, 255),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: const Text(
                        'Edit Profile',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'TruenoRound',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      children: [
                        ListTile(
                          leading: const Icon(Icons.settings, color: Colors.black),
                          title: const Text(
                            'Settings',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'TruenoRound',
                            ),
                          ),
                          trailing: Container(
                            padding: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey[200],
                            ),
                            child: const Icon(Icons.arrow_forward_ios, color: Colors.black, size: 16),
                          ),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: const Icon(Icons.payment, color: Colors.black),
                          title: const Text(
                            'Billing Details',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'TruenoRound',
                            ),
                          ),
                          trailing: Container(
                            padding: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey[200],
                            ),
                            child: const Icon(Icons.arrow_forward_ios, color: Colors.black, size: 16),
                          ),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: const Icon(Icons.group, color: Colors.black),
                          title: const Text(
                            'User Management',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'TruenoRound',
                            ),
                          ),
                          trailing: Container(
                            padding: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey[200],
                            ),
                            child: const Icon(Icons.arrow_forward_ios, color: Colors.black, size: 16),
                          ),
                          onTap: () {},
                        ),
                        const SizedBox(height: 5.0),
                        const Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                        const SizedBox(height: 5.0),
                        ListTile(
                          leading: const Icon(Icons.info, color: Colors.black),
                          title: const Text(
                            'User Details',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'TruenoRound',
                            ),
                          ),
                          trailing: Container(
                            padding: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey[200],
                            ),
                            child: const Icon(Icons.arrow_forward_ios, color: Colors.black, size: 16),
                          ),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => UserDetails(user: user),
                              ),
                            );
                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.logout, color: Colors.red),
                          title: const Text(
                            'Logout',
                            style: TextStyle(
                              color: Colors.red,
                              fontFamily: 'TruenoRound',
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => const LoginScreen()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
