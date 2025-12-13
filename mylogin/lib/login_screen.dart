import 'package:flutter/material.dart';
import 'package:mylogin/home_page.dart';
import 'package:mylogin/register.dart';


class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key});

  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('login Page')
        ),
        body: Column(
          children: <Widget>[
            Padding(padding: const EdgeInsets.only(top: 60.0),
            child: Center(
              child: Container(
                width: 200,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(50.0)            
                ),
                child: Image.asset('assets/images/stikma.png'),
              ),
            ),),
            Padding(padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0, bottom: 0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
                hintText: 'Enter your Email'),
            ),),
            Padding(padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0, bottom: 0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'password',
                hintText: 'Enter your password'),
            ),),
            TextButton(
              onPressed: () {},
              child: Text(
                'forget password',
                style: TextStyle(
                  color: Colors.blue,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Scaffold(
                        appBar: AppBar(title: Text('Home')),
                        body: Center(child: Text('Home Page')),
                      ),
                    ),
                  );
                  Route route = MaterialPageRoute(builder: (context) => HomePage());
                  Navigator.push(context, route);
                },
                child: Text(
                  'sign in',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            ElevatedButton (
              onPressed: () {
                Route route = MaterialPageRoute(builder: (context) => RegisterPage());
                Navigator.push(context, route);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade600,
                foregroundColor: Colors.white,
                shadowColor: Colors.blue.shade900,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              ),
              child: const Text(
                'sign up',
                style: TextStyle(fontSize: 18),
              ),
            )
          ],
        ),
    );
  }
}