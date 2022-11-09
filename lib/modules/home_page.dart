import 'package:flutter/material.dart';
import 'package:newtest/modules/learn_flutter.dart';


int currentPage = 0;


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter',
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: ()
              {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)
                      {
                        return const LearnFlutter();
                      }
                  ));
              },
              color: Colors.blue,
              child: const Text(
                'Learn Flutter',
                style: TextStyle(color: Colors.white, fontSize: 17.0),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 35.0), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 35.0), label: "Profile"),
        ],
        onTap: (int index) {
          setState(() {
            currentPage = index;
            print(currentPage.toString());
          });
        },
        currentIndex: currentPage,
        elevation: 20.0,
        backgroundColor: Colors.grey[300],
        unselectedItemColor: Colors.black,
      ),
    );
  }
}
