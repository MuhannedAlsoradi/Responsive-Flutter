// ignore_for_file: prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive/constants.dart';

class ResponsiveMobileScreen extends StatelessWidget {
  const ResponsiveMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.teal,
              height: double.infinity,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text('Login now to see updates'),
                    SizedBox(height: 20.0),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      children: [
                        Expanded(
                          child: MaterialButton(
                            color: Colors.teal,
                            onPressed: () {},
                            child: Text('Login'),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                          child: MaterialButton(
                            color: Colors.teal,
                            onPressed: () {},
                            child: Text('Login'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Center(
                      child: indicator(),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
