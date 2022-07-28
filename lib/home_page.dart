import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 180;
  double weight = 60;
  int age = 28;
  bool? isMale;
  var result;
  double? bmi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF0a0e21),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0XFF0a0e21),
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.normal, fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Card(
                          color: Colors.transparent,
                          child: Container(
                            height: MediaQuery.of(context).size.width * 0.8,
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: BoxDecoration(
                                color: isMale == true
                                    ? Color(0XFF1d1e33)
                                    : Color(0XFF111328),
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.male,
                                    color: Colors.white,
                                    size: 80,
                                  ),
                                  Text(
                                    "MALE",
                                    style: TextStyle(
                                        color: Color(0XFF848590),
                                        fontWeight: FontWeight.normal,
                                        fontSize: 20),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 5,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Card(
                          color: Colors.transparent,
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.6,
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: BoxDecoration(
                                color: isMale == false
                                    ? Color(0XFF1d1e33)
                                    : Color(0XFF111328),
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.female,
                                    color: Colors.white,
                                    size: 80,
                                  ),
                                  Text(
                                    "FEMALE",
                                    style: TextStyle(
                                        color: Color(0XFF848590),
                                        fontWeight: FontWeight.normal,
                                        fontSize: 20),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Card(
                color: Colors.transparent,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0XFF1d1e33),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "HEIGHT",
                          style: TextStyle(
                              color: Color(0XFF848590),
                              fontWeight: FontWeight.normal,
                              fontSize: 20),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "${height.toStringAsFixed(0)}",
                              style: TextStyle(
                                  color: Color(0XFFFFFFFF),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 50),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(
                                "cm",
                                style: TextStyle(
                                    color: Color(0XFF848590),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20),
                              ),
                            )
                          ],
                        ),
                        SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                                thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 15,
                                ),
                                overlayShape: RoundSliderOverlayShape(
                                  overlayRadius: 15,
                                ),
                                thumbColor: Color(0XFFeb1555),
                                overlayColor: Color(0XFFeb1555),
                                activeTickMarkColor: Colors.white,
                                inactiveTrackColor: Color(0XFF8D8E98)),
                            child: Slider(
                              min: 0,
                              max: 300,
                              value: height,
                              onChanged: (double value) {
                                setState(() {
                                  height = value;
                                });
                              },
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 5,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Card(
                        color: Colors.transparent,
                        child: Container(
                          height: MediaQuery.of(context).size.width * 0.8,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                              color: Color(0XFF1d1e33),
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "WEIGHT",
                                  style: TextStyle(
                                      color: Color(0XFF848590),
                                      fontWeight: FontWeight.normal,
                                      fontSize: 20),
                                ),
                                Text(
                                  "${weight.toStringAsFixed(0)}",
                                  style: TextStyle(
                                      color: Color(0XFFFFFFFF),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40),
                                ),
                                Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                          backgroundColor: Color(0XFF4c4f5e),
                                          radius: 20,
                                          child: IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  weight = weight - 1;
                                                });
                                              },
                                              icon: Icon(
                                                Icons.remove,
                                                color: Colors.white,
                                              ))),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      CircleAvatar(
                                          backgroundColor: Color(0XFF4c4f5e),
                                          radius: 20,
                                          child: IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  weight = weight + 1;
                                                });
                                              },
                                              icon: Icon(
                                                Icons.add,
                                                color: Colors.white,
                                              )))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 5,
                      child: Card(
                        color: Colors.transparent,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.6,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                              color: Color(0XFF1d1e33),
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "AGE",
                                  style: TextStyle(
                                      color: Color(0XFF848590),
                                      fontWeight: FontWeight.normal,
                                      fontSize: 20),
                                ),
                                Text(
                                  "${age.toStringAsFixed(0)}",
                                  style: TextStyle(
                                      color: Color(0XFFFFFFFF),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40),
                                ),
                                Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                          backgroundColor: Color(0XFF4c4f5e),
                                          radius: 20,
                                          child: IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  age = age - 1;
                                                });
                                              },
                                              icon: Icon(
                                                Icons.remove,
                                                color: Colors.white,
                                              ))),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      CircleAvatar(
                                          backgroundColor: Color(0XFF4c4f5e),
                                          radius: 20,
                                          child: IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  age = age + 1;
                                                });
                                              },
                                              icon: Icon(
                                                Icons.add,
                                                color: Colors.white,
                                              )))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 2,
            child: InkWell(
              onTap: () {
                bmi = ((weight / height / height) * 10000);
                if (bmi! < 18.5) {
                  result =
                      "Your body weight is low. try eating more and/or gain some muscle.";
                }
                if (bmi! < 24) {
                  result =
                      "Your body weight is normal. Good job! Keep doing you.";
                } else {
                  result =
                      "Your body weight is too high. Try exercising more and/or eating less.";
                }
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Center(
                          child: Text("Your Result",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30)),
                        ),
                        backgroundColor: Color(0XFF1d1e33),
                        content: Container(
                          height: 200,
                          width: 200,
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  "${bmi!.toStringAsFixed(1)}",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 50),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15),
                                  child: Text(
                                    "${result}",
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        actions: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.white.withOpacity(0.4),
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    icon: Icon(
                                      Icons.close,
                                      color: Colors.red,
                                    )),
                              )
                            ],
                          )
                        ],
                      );
                    });
              },
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0XFFeb1555),
                ),
                child: Center(
                  child: Text(
                    "CALCULATOR",
                    style: TextStyle(
                        color: Color(0XFFFFFFFF),
                        fontWeight: FontWeight.normal,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
