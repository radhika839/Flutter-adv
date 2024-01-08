import 'dart:js';

import 'package:flutter/material.dart';
import 'package:radhika_details/fetch.dart';
import 'package:radhika_details/pages/onboarding_page.dart';
import 'package:radhika_details/pages/welcome.dart';
import 'package:radhika_details/screens/mainscreen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => OnboardingPage(),
      '/welcome': (context) => MainPage(),
      '/mainscreen': (context) => WelcomeScreen()
    },
    debugShowCheckedModeBanner: false,
  ));
}





// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: radhika_details(),
//   ));
// }

// class radhika_details extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Radhika Id Card'),
//         centerTitle: true,
//         backgroundColor: Colors.grey[600],
//       ),
//       body: const Padding(
//         padding: EdgeInsets.fromLTRB(100.0, 100.0, 100.0, 0.0),
//         child: Center(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               CircleAvatar(
//                 backgroundImage: AssetImage('assets/images/cute1.jpg'),
//                 radius: 40.0,
//               ),
//               SizedBox(height: 10.0),
//               Divider(
  
//                 height: 40.0,
//                 color: Colors.red,
//               ),
//               Text(
//                 "Name",
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 10.0,
//                   letterSpacing: 1.0,
//                 ),
//               ),
//               SizedBox(height: 5.0),
//               Text(
//                 'Radhika jadhav',
//                 style: TextStyle(
//                   color: Colors.cyan,
//                   fontSize: 20.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 30.0),
//               Text(
//                 "Address",
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 10.0,
//                   letterSpacing: 1.0,
//                 ),
//               ),
//               SizedBox(height: 5.0),
//               Text(
//                 'Nashik',
//                 style: TextStyle(
//                   color: Colors.amberAccent,
//                   fontSize: 20.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 30.0),
//               Row(
//                 children: [
//                   Icon(
//                     Icons.email,
//                     color: Colors.grey,
//                   ),
//                   SizedBox(width: 10.0),
//                   Text(
//                     'radhikajadhav1010@gmail.com',
//                     style: TextStyle(
//                       color: Colors.blueGrey,
//                       fontSize: 12.0,
//                       letterSpacing: 1.0,
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
