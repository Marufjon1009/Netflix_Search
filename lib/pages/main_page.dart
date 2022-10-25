import 'package:flutter/material.dart';
import 'package:netflix_clone/pages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: const Text(
          'NETFLIX',
          style: TextStyle(
              color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              splashColor: Colors.black,
              onPressed: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SearchPage()));
                });
              },
              icon: const Icon(Icons.search))
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade500,
      ),
      body: Column(),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:netflix_clone/pages/search_page.dart';

// class Main extends StatefulWidget {
//   const Main({super.key});

//   @override
//   State<Main> createState() => _MainState();
// }

// class _MainState extends State<Main> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: const Drawer(),
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: const Text(
//           'NETFLIX',
//           style: TextStyle(
//               color: Colors.red, fontWeight: FontWeight.bold, fontSize: 30),
//         ),
//         actions: <Widget>[
//           IconButton(
//               onPressed: () {
//                 showSearch(context: context, delegate: DataSearch());
//               },
//               icon: const Icon(Icons.search))
//         ],
//       ),
//     );
//   }
// }
