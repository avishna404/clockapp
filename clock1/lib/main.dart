import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {runApp(MyApp());
}

  
class mypp extends StatelessWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp>{
  @override  
  return SplashScreen(
     
    seconds: 3,
    navigateAfterSeconds: Homepage(),
    title:text("color clock" style:TextStyle(
      color: colors.white,fontsize:50,fontWeight: bold
    ))
  );
}
}
class Homepage extends StatelessWidget {
  @override
  widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        Title:text("sample"),
      ),
    );
  }
  }
   

 