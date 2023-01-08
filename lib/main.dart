import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    //themeMode: ThemeMode.light,
    theme: ThemeData(primaryColor: Colors.green),
    darkTheme: ThemeData(primaryColor: Colors.black),
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  )
);

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 212, 193, 248),
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Card(
            elevation: 50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: 
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: MediaQuery.of(context).size.width * .5,
              height: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.red,
                    foregroundImage: AssetImage(
                      "assets/images/myself.png",
                    ),
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
