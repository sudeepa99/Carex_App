import 'package:carex/appointment_screen.dart';
import 'package:carex/tyre_center.dart';
import 'package:flutter/material.dart';

class TyreCentreProfile extends StatefulWidget {
  const TyreCentreProfile({super.key});

  @override
  State<TyreCentreProfile> createState() => _MechanicProfileState();
}

class _MechanicProfileState extends State<TyreCentreProfile> {
  String _dropdownvalue = 'Service 1';
  bool _isDropdownOpen = true;
  String _dropdownvalue2 = 'Prius';
  bool _isDropdownOpen2 = true;

  List<String> listItem2 = [
    'Prius',
    'Option 2',
    'Option 3',
    'Option 4',
    'Option 5',
    'Option 6'
  ];

  List<String> listItem = [
    'Service 1',
    'Service 2',
    'Service 3',
    'Service 4',
    'Service 5',
    'Service 6'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
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
                              builder: (context) => Tyre_centerPage()));
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
                                _isDropdownOpen2 = !_isDropdownOpen2;
                              });
                            },

                            // Adjust the spacing between label and dropdown icon
                            child: DropdownButton(
                              dropdownColor: const Color(0XFF22252B),
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 16),

                              underline: Container(),
                              icon: _isDropdownOpen2
                                  ? const Icon(Icons.keyboard_arrow_up,
                                      color: Colors.white)
                                  : const Icon(Icons.keyboard_arrow_down,
                                      color: Colors.white),
                              iconSize: 25,
                              iconEnabledColor: Colors.white,
                              hint: const SizedBox
                                  .shrink(), // Hide the hint text since we have a label
                              value: _dropdownvalue2,
                              items: listItem2.map((value1) {
                                return DropdownMenuItem(
                                  value: value1,
                                  child: Text(value1),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  _dropdownvalue2 = newValue!;
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
                    Image.asset("assets/Ellipse 35.png"),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Tyre Centre Name",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    const Text(
                      "Address",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _isDropdownOpen = !_isDropdownOpen;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Offering Services",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(
                                width:
                                    10), // Adjust the spacing between label and dropdown icon
                            DropdownButton(
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
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 100,
              ),
              Center(
                child: SizedBox(
                  width: 270.0,
                  child: ElevatedButton(
                    onPressed: () {},
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
                    child: const Text(
                      "Quick Call",
                      style: TextStyle(
                        color: Color.fromRGBO(255, 244, 247, 1),
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Center(
                child: SizedBox(
                  width: 270.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AppointmentScreen()));
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
                          "Make an Appointment",
                          style: TextStyle(
                            color: Color.fromRGBO(255, 244, 247, 1),
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Color.fromRGBO(255, 244, 247, 1),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
