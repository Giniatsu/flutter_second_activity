import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            color: Color.fromARGB(255, 41, 29, 90),
            elevation: 50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.0),
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
                    radius: 70,
                    backgroundColor: Colors.red,
                    foregroundImage: AssetImage(
                      "assets/images/myself.png",
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "Russel Garcia",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Web Developer",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "A kiddo who uses Bootstrap and Laravel in Web development. Currently playing around with design via Figma",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextButton(onPressed: (){}, 
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
                      backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 113, 91, 182)),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      overlayColor: MaterialStateProperty.all(Colors.grey),
                      textStyle: MaterialStateProperty.all(
                        TextStyle(
                          fontSize: 15, 
                          color: Colors.white,
                          )
                        ),
                    ),
                    child: Text("aragarcia@addu.edu.ph"),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){}, 
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      icon: FaIcon(
                        FontAwesomeIcons.facebook,
                        color: Colors.grey,
                        )
                      ),
                      IconButton(onPressed: (){}, 
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      icon: FaIcon(
                        FontAwesomeIcons.instagram,
                        color: Colors.grey,
                        )
                      ),
                      IconButton(onPressed: (){}, 
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      icon: FaIcon(
                        FontAwesomeIcons.twitter,
                        color: Colors.grey,
                        )
                      ),
                      IconButton(onPressed: (){}, 
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      icon: FaIcon(
                        FontAwesomeIcons.discord,
                        color: Colors.grey,
                        )
                      ),
                      IconButton(onPressed: (){}, 
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      icon: FaIcon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.grey,
                        )
                      ),
                      IconButton(onPressed: (){}, 
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      icon: FaIcon(
                        FontAwesomeIcons.dev,
                        color: Colors.grey,
                        )
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
