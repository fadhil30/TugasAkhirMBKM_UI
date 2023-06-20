// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    hintText: 'Input N',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonSectionWidget(n: 1),
                  ButtonSectionWidget(n: 2)
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonSectionWidget(n: 3),
                  ButtonSectionWidget(n: 4)
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Result : ',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              )
            ],
          ),
        )
      ],
    );
  }
}

class ButtonSectionWidget extends StatelessWidget {
  const ButtonSectionWidget({
    Key? key,
    required this.n,
  }) : super(key: key);

  final int n;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            primary: Colors.black,
            side: BorderSide(width: 1),
            minimumSize: Size(MediaQuery.of(context).size.height * 0.2, 50)),
        onPressed: () {},
        child: Text('$n'));
  }
}
