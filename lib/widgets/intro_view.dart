import 'package:chat_app_using_getx/models/intro_models.dart';
import 'package:flutter/material.dart';

class IntroView extends StatelessWidget {
  final IntroModel introModel;
  const IntroView({Key? key, required this.introModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 8,
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 120,
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  introModel.assetsImage,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            child: Text(
              introModel.titleText,
              textAlign: TextAlign.center,style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
            ),
          ),
        ),
        const Expanded(flex: 1,child: SizedBox(),)
      ],
    );
  }
}
