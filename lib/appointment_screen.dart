import 'package:carex/appointment_screen_confirmation.dart';
import 'package:carex/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({super.key});

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  DateTime dateTime = DateTime(2024, 2, 1, 10, 20);
  String _dropdownvalue = 'Prius';
  bool _isDropdownOpen = true;

  List<String> listItem = [
    'Prius',
    'Option 2',
    'Option 3',
    'Option 4',
    'Option 5',
    'Option 6'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
        color: const Color(0XFF22252B),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 340, bottom: 10),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  icon: const Icon(
                    Icons.arrow_back_sharp,
                    color: Colors.white,
                    size: 35,
                    weight: 10,
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xFFFF7817),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(40.5),
              ),
              child: Row(
                children: [
                  Image.asset("assets/user.png"),
                  const Padding(
                    padding: EdgeInsets.only(left: 22.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "USER NAME",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0XFFFFFFFF),
                          ),
                        ),
                        Text(
                          "Current Location",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color(0XFFFFFFFF),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Image.asset("assets/vertical-line.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "TOYOTA",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0XFFFFFFFF),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isDropdownOpen = !_isDropdownOpen;
                            });
                          },

                          // Adjust the spacing between label and dropdown icon
                          child: DropdownButton(
                            dropdownColor: const Color(0XFF22252B),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 16),

                            underline: Container(),
                            icon: _isDropdownOpen
                                ? const Icon(Icons.keyboard_arrow_up,
                                    color: Colors.white)
                                : const Icon(Icons.keyboard_arrow_down,
                                    color: Colors.white),
                            iconSize: 25,
                            iconEnabledColor: Colors.white,
                            hint: const SizedBox
                                .shrink(), // Hide the hint text since we have a label
                            value: _dropdownvalue,
                            items: listItem.map((value1) {
                              return DropdownMenuItem(
                                value: value1,
                                child: Text(value1),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                _dropdownvalue = newValue!;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 50),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color(0xFFFF7817),
                  )),
              child: Column(
                children: [
                  const Text(
                    "Appointment Receiver Name",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Address",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CupertinoButton(
                    child: const Text(
                      "Select Date*",
                      style: TextStyle(
                        color: Color(0xFFFF7817),
                      ),
                    ),
                    onPressed: () {
                      showCupertinoModalPopup(
                        barrierColor: Colors.transparent,
                        context: context,
                        builder: ((BuildContext context) => CupertinoTheme(
                              data: const CupertinoThemeData(
                                textTheme: CupertinoTextThemeData(
                                    dateTimePickerTextStyle: TextStyle(
                                      color: Colors.white,
                                    ),
                                    pickerTextStyle: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    )),
                              ),
                              child: SizedBox(
                                height: 250,
                                child: CupertinoDatePicker(
                                  backgroundColor:
                                      const Color.fromARGB(255, 59, 58, 57),
                                  initialDateTime: dateTime,
                                  onDateTimeChanged: (DateTime newTime) {
                                    setState(() => dateTime = newTime);
                                  },
                                  use24hFormat: true,
                                  mode: CupertinoDatePickerMode.date,
                                ),
                              ),
                            )),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CupertinoButton(
                    child: const Text(
                      "Select Time*",
                      style: TextStyle(
                        color: Color(0xFFFF7817),
                      ),
                    ),
                    onPressed: () {
                      showCupertinoModalPopup(
                        context: context,
                        builder: ((BuildContext context) => CupertinoTheme(
                              data: const CupertinoThemeData(
                                  textTheme: CupertinoTextThemeData(
                                      pickerTextStyle: TextStyle(
                                        color: Colors.white,
                                      ),
                                      dateTimePickerTextStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ))),
                              child: SizedBox(
                                height: 250,
                                child: CupertinoDatePicker(
                                  backgroundColor:
                                      const Color.fromARGB(255, 59, 58, 57),
                                  initialDateTime: dateTime,
                                  onDateTimeChanged: (DateTime newTime) {
                                    setState(() => dateTime = newTime);
                                  },
                                  use24hFormat: true,
                                  mode: CupertinoDatePickerMode.time,
                                ),
                              ),
                            )),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "Quick Note",
                    style: TextStyle(
                      color: Color(0xFFFF7817),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                    child: TextField(
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(255, 59, 58, 57),
                        contentPadding: const EdgeInsets.only(bottom: 90),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            color: Color(0xFFFF7817),
                          ),
                        ),
                        hintStyle: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 140,
            ),
            Center(
              child: SizedBox(
                width: 270.0,
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return const DialogBox();
                        });
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xFFFF7817),
                    ),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.all(10)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Submit My Appointment",
                        style: TextStyle(
                          color: Color.fromRGBO(255, 244, 247, 1),
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
