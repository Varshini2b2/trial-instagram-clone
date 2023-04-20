import 'package:flutter/material.dart';

class mobileLayout extends StatelessWidget {
  const mobileLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent.shade100,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
            'M O B L I E',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
          padding: EdgeInsets.all(8),
            child: Container(
              color: Colors.deepPurple.shade500,
              height: 250,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 8,
                itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.deepPurple.shade400,
                    height: 120,
                  ),
                );
                }
            ),
          )
        ],
      ),
    );
  }
}
