import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BillingDetails extends StatelessWidget {
  final Map<String, dynamic> user;

  const BillingDetails({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final picture = user['picture']['large'];
    const amount = '00.00';

    // Sample transaction history data
    final List<Map<String, dynamic>> transactions = [
      {'type': 'Deposit', 'amount': '100.00', 'date': '2024-10-10'},
      {'type': 'Withdraw', 'amount': '50.00', 'date': '2024-10-09'},
      {'type': 'Deposit', 'amount': '200.00', 'date': '2024-10-08'},
      {'type': 'Withdraw', 'amount': '30.00', 'date': '2024-10-07'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Transactions',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'TruenoRound',
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 10, 50),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 0, 10, 50),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(16.0),
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Donation Summary',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'TruenoRound',
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(picture),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Amount', 
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54, 
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.attach_money, 
                              color: Colors.black,
                            ),
                            SizedBox(width: 4), 
                            Text(
                              amount,
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'TruenoRound',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      icon: const FaIcon(
                        FontAwesomeIcons.upload, 
                        color: Colors.white,
                      ),
                      label: const Text(
                        'Deposit',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'TruenoRound',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      icon: const FaIcon(
                        FontAwesomeIcons.download, 
                        color: Colors.white,
                      ),
                      label: const Text(
                        'Withdraw',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'TruenoRound',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Text(
                  'Transaction History',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'TruenoRound',
                  ),
                ),
                const SizedBox(height: 8),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: transactions.length,
                  itemBuilder: (context, index) {
                    final transaction = transactions[index];
                    return ListTile(
                      leading: Icon(
                        transaction['type'] == 'Deposit'
                            ? Icons.add
                            : Icons.remove,
                        color: transaction['type'] == 'Deposit'
                            ? Colors.green
                            : Colors.red,
                      ),
                      title: Text(transaction['type']),
                      subtitle: Text(transaction['date']),
                      trailing: Text(
                        '\$${transaction['amount']}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
