import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sing_work/utils/Constant.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: const Center(
            child: Text(
              "About",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
          actions: const [
            Icon(
              Icons.close,
              color: Colors.black,
            )
          ]),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "About me",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                maxLines: 7,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Color(0xffE5E5E5)),
                      borderRadius: BorderRadius.circular(10)),
                  hintText: '...Tell everyone something about yourself',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("0/200"),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(top: 330.0),
                  child: Container(
                    height: height(context) * 0.06,
                    width: width(context) * 0.9,
                    padding: const EdgeInsets.all(10.0),
                    margin: const EdgeInsets.all(20.0),
                    decoration: const BoxDecoration(
                        color: Color(0xff0E1638),
                        borderRadius: BorderRadius.all(Radius.circular(21))),
                    child: const Center(
                      child: Text(
                        'Save',
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
