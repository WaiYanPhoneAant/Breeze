import 'package:breeze/pages/weather_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          // scaffoldBackgroundColor:
          //     const Color(0xFF2F3542), // You can set the primary swatch here
          // appBarTheme: const AppBarTheme(
          //   backgroundColor: Colors.blueGrey,
          // ),
        ),
        debugShowCheckedModeBanner: false,
        home: const WeatherPage());
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData.dark(),
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.black,
//           elevation: 0,
//           leading: CircleAvatar(
//             backgroundImage: AssetImage('assets/profile.jpg'), // replace with the actual image
//           ),
//           title: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text('Welcome,', style: TextStyle(color: Colors.white)),
//               Text('John Doe', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
//             ],
//           ),
//           actions: [
//             IconButton(
//               icon: Icon(Icons.notifications, color: Colors.white),
//               onPressed: () {},
//             ),
//           ],
//         ),
//         body: Column(
//           children: [
//             Container(
//               padding: EdgeInsets.all(20),
//               decoration: BoxDecoration(
//                 color: Colors.black,
//                 borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(20),
//                   bottomRight: Radius.circular(20),
//                 ),
//               ),
//               child: Column(
//                 children: [
//                   ToggleButtons(
//                     borderColor: Colors.white,
//                     fillColor: Colors.white24,
//                     borderWidth: 2,
//                     selectedBorderColor: Colors.white,
//                     selectedColor: Colors.white,
//                     borderRadius: BorderRadius.circular(8),
//                     children: <Widget>[
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 16),
//                         child: Text('Balance', style: TextStyle(color: Colors.white)),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 16),
//                         child: Text('Wallet', style: TextStyle(color: Colors.white)),
//                       ),
//                     ],
//                     onPressed: (int index) {
//                       // handle the toggle
//                     },
//                     isSelected: [true, false], // initial state
//                   ),
//                   SizedBox(height: 20),
//                   Text(
//                     '\$2,430.00',
//                     style: TextStyle(
//                       color: Colors.greenAccent,
//                       fontSize: 40,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       _buildActionButton(Icons.send, 'Send to'),
//                       _buildActionButton(Icons.request_page, 'Request'),
//                       _buildActionButton(Icons.add, 'Top up'),
//                       _buildActionButton(Icons.more_horiz, 'More'),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 color: Colors.grey[900],
//                 child: ListView(
//                   padding: EdgeInsets.all(16),
//                   children: [
//                     _buildTransactionHeader('Mon, 05 Aug 2022'),
//                     _buildTransactionItem('Send to Alphonso Davied', '\$650', 'Note: pay for the apart electricity', '15:30 PM'),
//                     _buildTransactionItem('Top Up Diamond Mobile Legend', '\$250', 'Codashop', '11:30 AM'),
//                     _buildTransactionItem('Request to Fariz Zacky', '\$1200', 'Success', '09:00 AM', isPositive: true),
//                     _buildTransactionHeader('Sun, 04 Aug 2022'),
//                     _buildTransactionItem('Send to Darwin Nunez', '\$1500', 'For trading learning', '20:45 PM'),
//                     _buildTransactionItem('Pay Internet Provider', '\$430', 'Pay indihome August', '12:45 PM'),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           backgroundColor: Colors.black,
//           selectedItemColor: Colors.green,
//           unselectedItemColor: Colors.grey,
//           items: [
//             BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//             BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: 'Card'),
//             BottomNavigationBarItem(icon: Icon(Icons.qr_code_scanner), label: 'Scan'),
//             BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
//             BottomNavigationBarItem(icon: Icon(Icons.contact_page), label: 'Contact'),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildActionButton(IconData icon, String label) {
//     return Column(
//       children: [
//         CircleAvatar(
//           backgroundColor: Colors.grey[800],
//           child: Icon(icon, color: Colors.white),
//         ),
//         SizedBox(height: 8),
//         Text(label, style: TextStyle(color: Colors.white)),
//       ],
//     );
//   }

//   Widget _buildTransactionHeader(String date) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 16.0),
//       child: Text(
//         date,
//         style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
//       ),
//     );
//   }

//   Widget _buildTransactionItem(String title, String amount, String subtitle, String time, {bool isPositive = false}) {
//     return ListTile(
//       contentPadding: EdgeInsets.zero,
//       leading: CircleAvatar(
//         backgroundColor: isPositive ? Colors.green : Colors.grey[800],
//         child: Icon(Icons.attach_money, color: Colors.white),
//       ),
//       title: Text(title, style: TextStyle(color: Colors.white)),
//       subtitle: Text('$subtitle\n$time', style: TextStyle(color: Colors.grey)),
//       trailing: Text(amount, style: TextStyle(color: isPositive ? Colors.green : Colors.red)),
//     );
//   }
// }

