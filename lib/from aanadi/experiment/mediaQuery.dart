import 'package:flutter/material.dart';

class media_Query_page extends StatelessWidget {
  const media_Query_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent.shade100,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Height' + MediaQuery.of(context).size.height.toString(),
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            Text(
              'Width' + MediaQuery.of(context).size.width.toString(),
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            Text(
              'Orientation' + MediaQuery.of(context).orientation.toString(),
              style: TextStyle(
                fontSize: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
