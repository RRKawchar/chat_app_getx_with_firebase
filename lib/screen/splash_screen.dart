import 'package:chat_app_using_getx/screen/introduction_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>with TickerProviderStateMixin {
  late AnimationController animationController;
  late AnimationController slideAnimation;
  late Animation<Offset> offsetAnimation;
  late Animation<Offset> textAnimation;
  @override
  void initState() {
    animationController=AnimationController(vsync: this,lowerBound: 0,upperBound: 60,
    animationBehavior: AnimationBehavior.normal,
      duration:const Duration(milliseconds: 700)
    );
    slideAnimation=AnimationController(
        vsync: this,
      duration:const Duration(milliseconds: 700)
    );
    offsetAnimation=Tween<Offset>(
      begin: Offset.zero,
      end:const Offset(-0.5,0.0)
    ).animate(
      CurvedAnimation(
          parent: slideAnimation,
          curve: Curves.fastOutSlowIn
      )
    );
    textAnimation = Tween<Offset>(
      begin:const Offset(-0.5,0.0),
      end:const Offset(0.2,0.0)

    ).animate(CurvedAnimation(parent: slideAnimation, curve: Curves.fastOutSlowIn));
    
    Future.delayed(const Duration(seconds: 4),(){

      Navigator.push(context, MaterialPageRoute(builder: (context)=>IntroductionScreen()));
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               AnimatedBuilder(animation: animationController, builder: (_,child){
                 return SlideTransition(
                     position: offsetAnimation,
                   child: Icon(Icons.chat,
                   color: Colors.white,
                     size: animationController.value,
                   )
                 );

               },
                 ),
              SlideTransition(
                  position: textAnimation,
                child: Text("Flutter Chat app",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
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
