import 'package:flutter/material.dart';

void main() {
  runApp(const VKI());
}

class VKI extends StatefulWidget {
  const VKI({super.key});

  @override
  State<VKI> createState() => _VKIState();
}

class _VKIState extends State<VKI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black,
            leading: const Icon(Icons.calculate_outlined),
            title: const Text('BMI Calculator'),
          ),
          body: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              height: 800,
              color: Colors.black,
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Stack(children: [
                        Container(
                          alignment: Alignment.centerRight,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 0,
                                  blurRadius: 1,
                                  offset: const Offset(
                                      -5, 5), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(150),
                              border: Border.all(width: 2, color: Colors.white),
                              color: Colors.black),
                          width: 175,
                          height: 175,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: TextField(
                              onChanged: (value) {},
                              // obscureText: true,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 70),
                              decoration: const InputDecoration(
                                  labelStyle: TextStyle(color: Colors.white)),
                            ),
                          ),
                        ),
                        const Text(
                          'KG',
                          style: TextStyle(
                              color: Colors.white,
                              backgroundColor: Colors.black),
                        )
                      ]),
                      Stack(children: [
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 0,
                                  blurRadius: 1,
                                  offset: const Offset(
                                      -5, 5), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(width: 2, color: Colors.white),
                              color: Colors.black),
                          width: 175,
                          height: 175,
                          child: const TextField(
                            style: TextStyle(color: Colors.white, fontSize: 70),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              labelStyle: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        const Text(
                          'CM',
                          style: TextStyle(
                              color: Colors.white,
                              backgroundColor: Colors.black),
                        )
                      ])
                    ],
                  ),
                  const SizedBox(height: 30),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(width: 2.0, color: Colors.white),
                      shape: const StadiumBorder(),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        'Hesapla',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          )),
    );
  }
}
