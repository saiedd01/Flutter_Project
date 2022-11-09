import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});


  @override
  Widget build(BuildContext context) {
    int count = 19;
    return Scaffold(
      appBar: AppBar(
        title:const Text('Profile'),
      ),
      body: ListView.builder(
          itemBuilder: (context, index){
            return ListTile(
              title: Text('item ${index+1}'),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.favorite_border),
            );
          },
         itemCount: count,
      ),
    );
  }
}
