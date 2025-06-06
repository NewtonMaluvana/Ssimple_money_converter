import 'package:flutter/material.dart';

class CurrencyPage extends StatefulWidget {
  const CurrencyPage({super.key});
  @override
  State<CurrencyPage> createState() => _CurrencyPage();
}

class _CurrencyPage extends State<CurrencyPage> {
  double result = 0;
  @override
  Widget build(BuildContext contect) {
    TextEditingController textConroller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 44, 64, 97),
        title: Text("Converter"),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "R ${result.toStringAsFixed(2).toString()}",
              style: TextStyle(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 45,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textConroller,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: "courier view",
                ),
                decoration: InputDecoration(
                  hintText: "Enter amount in rands",
                  hintStyle: TextStyle(color: Colors.black, fontSize: 30),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  result = double.parse(textConroller.text) * 18.69;
                });
              },
              style: TextButton.styleFrom(
                fixedSize: (Size(300, 25)),
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),

              child: Text("Calculate", style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
