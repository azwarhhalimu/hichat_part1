import 'package:flutter/material.dart';
import 'package:hichat/pages/MainPage/ListChat.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            color: Color.fromARGB(252, 234, 233, 233),
            child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(10),
                  backgroundColor: Colors.white,
                  elevation: 0,
                ),
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.black45,
                ),
                label: Text(
                  "Search",
                  style: TextStyle(color: Colors.black45),
                )),
          ),
          Container(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text("All"),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text("Group"),
                        ),
                        Expanded(child: Container()),
                        TextButton(
                          onPressed: () {},
                          child: Text("Create Group"),
                        ),
                      ],
                    ),
                  ),
                  ListChat(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
