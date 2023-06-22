import 'package:flutter/material.dart';
import 'package:interview/controller/hello_model_controller.dart';

import '../models/fetch_hello_model.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    callApi();
  }

  void callApi() async {
    Future<bool> status = fetchHello();
    status.then((value) {
      if (value == true) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return HelloController.hello.isEmpty
        ? Container(
            color: Colors.white,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: CircularProgressIndicator()),
              ],
            ),
          )
        : Scaffold(
            body: Container(
              constraints: const BoxConstraints.expand(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: HelloController.hello.length,
                    itemBuilder: (context, index) {
                      return Center(
                          child:
                              Text("${HelloController.hello[index].message}"));
                    },
                  )
                ],
              ),
            ),
          );
  }
}
