import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool pasVisible = false;
  bool pasConfirmVisible = false;

  void togglePasswordView() {
    setState(() {
      pasVisible = !pasVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Register'),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(18.0, 8.0, 18.0, 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)),
                  suffixIcon: const Icon(
                    Icons.person,
                    ), 
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(18.0, 8.0, 18.0, 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)),
                  suffixIcon: const Icon(
                    Icons.person,
                    ), 
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(18.0, 8.0, 18.0, 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)),
                  suffixIcon: const Icon(
                    Icons.key,
                  ),  
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade600,
                    foregroundColor: Colors.white,
                    shadowColor: Colors.blue.shade900,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                  child: const Text(
                    'Save',
                    style: TextStyle(fontSize: 18),
                    ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade600,
                    foregroundColor: Colors.white,
                    shadowColor: Colors.blue.shade900,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                  child: const Text(
                    'Cancel',
                    style: TextStyle(fontSize: 18),
                    ),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}