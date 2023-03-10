import 'dart:convert';

import 'package:aplication/screen/support2.dart';
import 'package:aplication/util/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  List<dynamic> _users = [];
  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).disabledColor,
        centerTitle: true,
        title: const Text(
          'Thrid Screen',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.blue,
          ),
        ),
        elevation: 1,
      ),
      body: _users.isNotEmpty
          ? ListView.builder(
              itemCount: _users.length,
              itemBuilder: ((context, index) {
                return Card(
                  elevation: 1,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 5.0,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
                    child: ListTile(
                      leading: ClipOval(
                        child: Image.network(
                          _users[index]['image'],
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: GestureDetector(
                        child: Text(_users[index]['firstName']),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Screen4(
                              pageName: _users[index]['firstName'],
                              imageName: _users[index]['image'],
                              emailName: _users[index]['email'],
                              phoneName: _users[index]['phone'],
                            );
                          }));
                        },
                      ),
                      subtitle: Text(_users[index]['email']),
                      trailing: Text(_users[index]['phone']),
                    ),
                  ),
                );
              }),
            )
          : Center(
              child: _loading
                  ? const CircularProgressIndicator()
                  : ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).disabledColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          )),
                      onPressed: loadUserList,
                      child: const Text(
                        "Load users",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
            ),
    );
  }

  loadUserList() async {
    setState(() {
      _loading = true;
    });
    var res = await http.get(Uri.https("dummyjson.com", "users"));
    if (res.statusCode == 200) {
      var jsonData = jsonDecode(res.body);
      if (jsonData['users'].isNotEmpty) {
        setState(() {
          _users = jsonData['users'];
          _loading = false;
        });
      }
    }
  }
}
