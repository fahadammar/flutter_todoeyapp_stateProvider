import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
      // as by default the crossAxis of column is center, so change to start
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Container having the Column - col having circle avatar, title and task txt
          Container(
            padding: EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column (
              // This aligns or keeps the column items on left
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // To circle it
                CircleAvatar(
                    child: Icon(
                      Icons.list,
                      size: 30.0,
                      color: Colors.lightBlueAccent,
                    ),
                    backgroundColor: Colors.white,
                    radius: 30.0,
                ),
                SizedBox(
                 height: 10.0,
                ),
                // Todoey Text
                Text('Todoey',
                  style: TextStyle(color: Colors.white, fontSize: 50.0,
                    fontWeight:FontWeight.w700
                  ),
                ),
                // Tasks Text
                Text(
                  '12 Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                  ),
                ),
              ],
            ),
          ),
          // Bottom Dialog
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}