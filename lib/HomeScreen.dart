import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:navigation/auth.dart';

class HomeScreen extends StatelessWidget {
  final User? user = Auth().currentUser;

  Future<void> signOut() async {
    await Auth().signOut();
  }

  Widget _title() {
    return Text(' FirebaseAuth');
  }

  Widget _userId() {
    return Text(user?.email ?? 'User email');
  }

  // I think I don't need you right now nukuri pe
  Widget signOutButton() {
    return ElevatedButton(
      onPressed: signOut,
      child: const Text('sign Out'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("House Keeping"),
        ),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Center(
              child: Container(
                  width: 200,
                  height: 150,
                  /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                  child: Image.asset('assets/images/logo.png')),
            ),
          ),
          const Padding(
            padding:
                EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 10),
            child: Text(
              'House Keeping',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          Container(
            padding:
                const EdgeInsets.all(5), //You can use EdgeInsets like above
            margin: const EdgeInsets.all(5),
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                color: const Color(0xffb5b50d),
                borderRadius: BorderRadius.circular(10)),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => HomeScreen()));
              },
              child: const Text(
                'Welcome',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 0.0, right: 0.0, top: 15, bottom: 0),
            child: Text(
              'Meal Plans',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Container(
                  width: 300,
                  height: 150,
                  /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                  child: Image.asset('assets/images/meal.png'))),
          const Padding(
            padding: EdgeInsets.only(left: 0.0, right: 0.0, top: 15, bottom: 0),
            child: Text(
              'Laundry',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Container(
                  width: 300,
                  height: 150,
                  /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                  child: Image.asset('assets/images/laundry.png'))),
          const Padding(
            padding: EdgeInsets.only(left: 0.0, right: 0.0, top: 15, bottom: 0),
            child: Text(
              'House Cleaning',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Container(
                  width: 300,
                  height: 150,
                  /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                  child: Image.asset('assets/images/house.png'))),
        ])));
  }
}
