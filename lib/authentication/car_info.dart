import 'package:flutter/material.dart';

class CarInfoScreen extends StatefulWidget {
  const CarInfoScreen({Key? key}) : super(key: key);

  @override
  State<CarInfoScreen> createState() => _CarInfoScreenState();
}

class _CarInfoScreenState extends State<CarInfoScreen> {
  TextEditingController carModelController = TextEditingController();
  TextEditingController carNumberController = TextEditingController();
  TextEditingController carColorController = TextEditingController();

  List<String> carType = ['uber-x', 'uber-go', 'bike'];
  String? selectedCarType;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Image.asset("assets/driver.jpg"),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Car Information",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Please enter your car information",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: carNumberController,
                  style: const TextStyle(color: Colors.grey),
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    hintText: "Enter your car number",
                    hintStyle: TextStyle(color: Colors.grey),
                    labelText: "Car Number",
                    labelStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: carModelController,
                  style: const TextStyle(color: Colors.grey),
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    hintText: "Enter your car model",
                    hintStyle: TextStyle(color: Colors.grey),
                    labelText: "Car Model",
                    labelStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: carColorController,
                  style: const TextStyle(color: Colors.grey),
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    hintText: "Enter your car color",
                    hintStyle: TextStyle(color: Colors.grey),
                    labelText: "Car Color",
                    labelStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                DropdownButtonFormField(
                  dropdownColor: Colors.black,
                  value: selectedCarType,
                  items: carType.map((String carType) {
                    return DropdownMenuItem(
                      value: carType,
                      child: Text(
                        carType,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedCarType = value.toString();
                    });
                  },
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    hintText: "Select your car type",
                    hintStyle: TextStyle(color: Colors.grey),
                    labelText: "Car Type",
                    labelStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CarInfoScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 20),
                  ),
                  child: const Text('Save Now'),
                ),
                // DropdownButton(
                //   dropdownColor: Colors.black54,
                //   hint: const Text("Select your car type",
                //       style: TextStyle(color: Colors.grey)),
                //   value: selectedCarType,
                //   items: carType.map((car) {
                //     return DropdownMenuItem(
                //       value: car,
                //       child: Text(
                //         car,
                //         style: const TextStyle(color: Colors.grey),
                //       ),
                //     );
                //   }).toList(),
                //   onChanged: (onvalue) {
                //     setState(() {
                //       selectedCarType = onvalue.toString();
                //     });
                //   },
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
