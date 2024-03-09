import 'package:flutter/material.dart';
import 'package:tesring/create_account.dart';
import 'package:tesring/scan_code_page.dart';
class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  _loginpagestate createState() => _loginpagestate();
}

class _loginpagestate extends State<Loginpage> {
  // TODO: implement createState
  String username = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login Page',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 29, 73, 51),
        actions: <Widget>[
          PopupMenuButton<String>(
              onSelected: (String result) {
                print(result);
                if (result == 'Home') {
                  //do somthing here for your home page
                } else if (result == 'Contact') {
                  //do somthing here for your Contact page
                } else if (result == 'About') {
                  //do somthing here for your About page
                }
              },
              icon: const Icon(Icons.menu),
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                    const PopupMenuItem<String>(
                      value: 'Home',
                      child: Text(
                        'Home',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 58, 55, 47),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const PopupMenuDivider(),
                    const PopupMenuItem<String>(
                      value: 'Contact',
                      child: Text(
                        'Contact',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 90, 70, 11),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const PopupMenuDivider(),
                    const PopupMenuItem<String>(
                      value: 'About',
                      child: Row(
                        children: [
                          Icon(Icons.contact_emergency),
                          SizedBox(height: 8),
                          Text(
                            "About",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 90, 70, 11),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    // PopupMenuDivider(),
                    // PopupMenuItem<String>(
                    //   value: 'try',
                    //   child: Container(
                    //     padding: EdgeInsets.all(8),
                    //     decoration: BoxDecoration(
                    //       color: const Color.fromARGB(255, 172, 151, 151),
                    //       borderRadius: BorderRadius.circular(8),
                    //     ),
                    //     child: Text('try'),
                    //   ),
                    // ),
                  ])
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              onChanged: (value) {
                setState(() {
                  username = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'user name',
                prefixIcon: const Icon(Icons.person),
                filled: true,
                fillColor: Colors.grey[200],
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              onChanged: (value) {
                setState(() {
                  password = value;
                });
              },
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: const Icon(Icons.lock),
                filled: true,
                fillColor: Colors.grey[200],
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 9, 28, 44),
                textStyle: const TextStyle(fontSize: 16),
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              onPressed: () {
                //loging here
              },
              child: const Text(
                'Login',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const create_account()),
                );
              },
              child: const Text('Create Acount', style:
                    TextStyle(color: Color.fromARGB(255, 27, 4, 4), fontWeight: FontWeight.bold),),
            ),
             const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const QRcodeScanner()),
                );
              },
              child: const Text('Go to scan QR code', style:
                    TextStyle(color: Color.fromARGB(255, 63, 11, 11), fontWeight: FontWeight.bold,fontSize: 17,),),
            ),
          ],
        ),
      ),
    );
  }
}
