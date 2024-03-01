import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class create_account extends StatefulWidget {
  const create_account({super.key});

  @override
  _create_account createState() => _create_account();
}

class _create_account extends State<create_account> {
  // TODO: implement createState
  String username = '';
  String password = '';
  String email = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Account Page'),
        backgroundColor: Color.fromARGB(255, 194, 207, 201),
        actions: <Widget>[
          PopupMenuButton<String>(
              onSelected: (String result) {
                print(result);
                //if();
              },
              icon: const Icon(Icons.menu),
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                    const PopupMenuItem<String>(
                      value: 'Home',
                      // child: Container(
                      //   padding: EdgeInsets.all(8),
                      //   decoration: BoxDecoration(color: Color.fromARGB(255, 100, 80, 19),
                      //   borderRadius: BorderRadius.circular(8),),
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
                labelText: 'user name',
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              onChanged: (value) {
                setState(() {
                  email = value;
                });
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'email address',
                prefixIcon: const Icon(Icons.email),
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
                labelText: 'Password',
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextButton(
              onPressed: () {
                //loging here
              },
              child: const Text('Login'),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                //loging here
              },
              child: const Text('Create Acount'),
            ),
          ],
        ),
      ),
    );
  }
}
