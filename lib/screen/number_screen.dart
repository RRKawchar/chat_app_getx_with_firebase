import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NumberScreen extends StatelessWidget {
  const NumberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        focusColor: Colors.transparent,
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: Container(
                height: AppBar().preferredSize.height,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Theme.of(context).disabledColor.withOpacity(0.1),
                      offset: const Offset(4, 4),
                      blurRadius: 10)
                ], color: Theme.of(context).backgroundColor),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Container(
                        width: AppBar().preferredSize.height - 8,
                        height: AppBar().preferredSize.height - 8,
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(32),
                            onTap: () {
                              Get.back();
                            },
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Text(
                      "Registration",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ))
                  ],
                ),
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(30),
                    child: AspectRatio(
                      aspectRatio: 2,
                      child: Image.asset("assets/images/otp.jpg"),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        "We will send you one time OTP on this number",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade600),
                      ),
                    ),
                  ),
                  Padding(
                    padding:const EdgeInsets.only(left: 24, right: 24, top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Container(
                           height: 48,
                           decoration: BoxDecoration(
                             color: Theme.of(context).backgroundColor,
                             borderRadius: BorderRadius.circular(30),
                             boxShadow: [
                               BoxShadow(
                                 color: Theme.of(context).disabledColor.withOpacity(0.1),
                                 offset:const Offset(4,4),
                                 blurRadius: 10
                               )
                             ]
                           ),

                         )
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
