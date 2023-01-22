import 'package:aplication/componen/text_palidomen.dart';
import 'package:aplication/componen/textfiled.dart';
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
                          child: TextFiled(namecontroler: namecontroler),
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.25 / 10,
                        ),
                        Form(
                          key: _formState,
                          child: TextFiledPalindome(
                              palindromecontroler: palindromecontroler),
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
