import 'package:flutter/material.dart';
import 'package:wired_elements/wired_elements.dart';

class WiredDialogExample extends StatelessWidget {
  final String title;
  const WiredDialogExample({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: WiredButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return Center(
                  child: Container(
                    height: 350.0,
                    child: WiredDialog(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Title',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
                          ),
                          SizedBox(height: 15.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              WiredButton(
                                child: Text('OK'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
          child: Text('Open wired dialog'),
        ),
      ),
    );
  }
}