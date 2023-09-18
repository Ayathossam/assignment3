import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Center(child: Text('Contacts Screen')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Enter Your Name Here',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  suffixIcon: Icon(Icons.edit, color: Colors.blue)),
            ),
            SizedBox(height: 15.0),
            TextFormField(
              keyboardType: TextInputType.phone,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Enter Your Number Here',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                suffixIcon: Icon(Icons.call, color: Colors.blue),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                Expanded(
                    child: FilledButton(onPressed: () {}, child: Text('add'))),
                SizedBox(
                  width: 5.0,
                ),
                Expanded(
                    child: FilledButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.redAccent), // Set the desired button color
                  ),
                  onPressed: () {},
                  child: Text('delete'),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
