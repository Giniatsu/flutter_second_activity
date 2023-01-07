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
      appBar: AppBar(
        title: Text('Hello World'),
      ),
      body: /* MediaQuery.of(context).orientation == Orientation.portrait ? */
      Container(
        // color: Colors.red,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Sign in to Continue', 
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.grey[500],
                ),
              ),
              /* Text('Sign in to Continue', 
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.grey[500],
                ),
              ), */
              SizedBox(
                height: 20,
              ),
              Container(
                //padding: EdgeInsets.only(top: 20),
                width: MediaQuery.of(context).size.width * .40,
                child: 
                  TextField(
                    obscureText: false,
                    maxLines: 1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                //padding: EdgeInsets.only(top: 20),
                width: MediaQuery.of(context).size.width * .40,
                child: 
                  TextField(
                    obscureText: true,
                    maxLines: 1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * .40,
                color: Colors.blue,
                child: 
                  TextButton(
                    onPressed: (){

                  }, 
                  child: 
                    Text('Sign In', 
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
              )
            ],
          )
      ) /* :
      Container(
        color: Colors.blue,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * .5,
      ), */
    );
  }
}
