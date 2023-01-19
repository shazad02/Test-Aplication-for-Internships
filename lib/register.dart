import 'package:aplication/screen2.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formState = GlobalKey<FormState>();
  final namecontroler = TextEditingController();
  final palindromecontroler = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    namecontroler.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned(
            child: Image(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.fill,
              height: double.infinity,
              width: double.infinity,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(360),
                    color: Colors.white30,
                  ),
                  height: MediaQuery.of(context).size.height * 1.5 / 10,
                  width: MediaQuery.of(context).size.height * 1.5 / 10,
                  child: Icon(
                    Icons.person_add,
                    color: Colors.white,
                    size: MediaQuery.of(context).size.height * 0.5 / 10,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4 / 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(33.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Form(
                          child: TextFormField(
                            controller: namecontroler,
                            decoration: InputDecoration(
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "Name",
                              contentPadding: const EdgeInsets.all(10),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.25 / 10,
                        ),
                        Form(
                          key: _formState,
                          child: TextFormField(
                            controller: palindromecontroler,
                            validator: (value) {
                              if (value == value?.split("").reversed.join()) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Container(
                                      padding: const EdgeInsets.all(16),
                                      decoration: const BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                      ),
                                      child: const Text("palindrome"),
                                    ),
                                    behavior: SnackBarBehavior.floating,
                                    backgroundColor: Colors.transparent,
                                    elevation: 0,
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Container(
                                      padding: const EdgeInsets.all(16),
                                      decoration: const BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                      ),
                                      child: const Text("Not palindrome"),
                                    ),
                                    behavior: SnackBarBehavior.floating,
                                    backgroundColor: Colors.transparent,
                                    elevation: 0,
                                  ),
                                );
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "Palindrome",
                              contentPadding: const EdgeInsets.all(10),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.45 / 10,
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.60 / 10,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formState.currentState!.validate()) {}
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: HexColor("#2B637B"),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                )),
                            child: const Text('CHECK'),
                          ),
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.15 / 10,
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.60 / 10,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Screen2(
                                  name: namecontroler.text,
                                );
                              }));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: HexColor("#2B637B"),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                )),
                            child: const Text('NEXT'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
