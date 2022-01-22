// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:shufflebox_mobile/ui/components/playing_track_card.dart';
// import 'package:shufflebox_mobile/ui/components/track_card.dart';
// import 'package:shufflebox_mobile/ui/view/places_view.dart';
// import 'package:shufflebox_mobile/ui/view/user_view.dart';
// import 'package:shufflebox_mobile/ui/view/vote_track_view.dart';
//
// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   _Home createState() => _Home();
// }
//
// class _Home extends State<Home> {
//   int _selectedBottomNavBarIndex = 0;
//
//   static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//
//   static const List<Widget> _bottomNavBarOptions = <Widget>[
//     VoteSongView(),
//     PlacesView(),
//     Text(
//       'Index 1: Account',
//       style: optionStyle,
//     ),
//   ];
//
//   static const List<String> _appBarTitles = <String>[
//     'SHUFFLEBOX',
//     'Places',
//     'Account Detail'
//   ];
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedBottomNavBarIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(50.0), // here the desired height
//         child: AppBar(
//           backgroundColor: Colors.black,
//           title: Container(
//             // height: MediaQuery.of(context).size.width * 0.05,
//             // color: Colors.blue,
//             alignment: Alignment.center,
//             child: Padding(
//               padding: const EdgeInsets.only(left: 30, top: 5),
//               child: Row(
//                 children: [
//                   Icon(
//                     CupertinoIcons.play_circle_fill,
//                   ),
//                   SizedBox(width: 20),
//                   Text(
//                     _appBarTitles.elementAt(_selectedBottomNavBarIndex),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           centerTitle: false,
//         ),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//
//           SizedBox(
//             child: Container(
//                 child: _bottomNavBarOptions.elementAt(_selectedBottomNavBarIndex)),
//           ),//Vote Session
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: CupertinoColors.systemRed.withOpacity(0.9),
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: SizedBox(
//               // height: 50,
//               child: Icon(
//                 CupertinoIcons.play_circle,
//               ),
//             ),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               CupertinoIcons.placemark,
//             ),
//             label: 'Places',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               CupertinoIcons.profile_circled,
//             ),
//             label: 'Account',
//           ),
//         ],
//         currentIndex: _selectedBottomNavBarIndex,
//         selectedItemColor: Colors.white,
//         unselectedItemColor: Colors.grey,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }
//
// const _subHeaderStyle = TextStyle(fontSize: 14, color: Colors.grey);
// const _headerStyle = TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold);