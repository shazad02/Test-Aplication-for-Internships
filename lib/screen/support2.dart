import 'package:aplication/filed/email_filed.dart';
import 'package:aplication/filed/name_filed.dart';
import 'package:aplication/filed/number_filed.dart';
import 'package:aplication/screen/register.dart';
import 'package:aplication/screen/screen3.dart';
import 'package:aplication/util/dimensions.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Screen4 extends StatelessWidget {
  Screen4({
    Key? key,
    required this.pageName,
    required this.imageName,
    required this.emailName,
    required this.phoneName,
  }) : super(key: key);

  late String pageName;
  late String imageName;
  late String emailName;
  late String phoneName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).disabledColor,
        centerTitle: true,
        title: const Text(
          'Fourth Screen',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const RegisterScreen();
            }));
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.blue,
          ),
        ),
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
            Text(
              pageName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 5 / 100,
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        minRadius: 50,
                        maxRadius: 100,
                        backgroundColor: Colors.grey,
                        child: Image.network(
                          imageName,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 5 / 100,
                      ),
                      NameFiled(pageName: pageName),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 2 / 100,
                      ),
                      EmailWidget(emailName: emailName),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 2 / 100,
                      ),
                      NumberFiled(phoneName: phoneName)
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
              child: SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.50 / 10,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Screen3();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).disabledColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                  child: const Text(
                    'Choose a User',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
