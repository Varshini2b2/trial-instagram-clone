import 'package:flutter/material.dart';

class webLayout extends StatelessWidget {
  const webLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent.shade100,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          'D E S K T O P',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: AspectRatio(
                    aspectRatio: 16/9,
                    child: Container(
                      color: Colors.deepPurple.shade500,
                      height: 250,
                    ),
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
          ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200,
                  color: Colors.deepPurple,
                  //child: Text("Hello World"),
                ),
              ),
        ],
      ),
    );
  }
}

