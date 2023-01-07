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
            mainAxisAlignment: MainAxisAlignment.start,
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
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * .40,
                child: Row(
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    color: Colors.grey[300],
                  ),
                  Expanded(
                    child: TextField(
                    obscureText: false,
                    maxLines: 1,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      border: InputBorder.none,
                      labelText: "What's Happening",
                      ),
                    ),
                  ),
                ],
              ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * .40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(height: 40, width: 40, color: Colors.blue,),
                        SizedBox(width: 5,),
                        Container(height: 40, width: 40, color: Colors.red,),
                        SizedBox(width: 5,),
                        Container(height: 40, width: 40, color: Colors.green,),
                        SizedBox(width: 5,),
                        Container(height: 40, width: 40, color: Colors.yellow,),
                        SizedBox(width: 5,),
                        Container(height: 40, width: 40, color: Colors.orange,),
                      ],
                    ),
                    TextButton(onPressed: (){
                      }, 
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                        )
                      ),
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      overlayColor: MaterialStateProperty.all(Colors.red[300]),
                      textStyle: MaterialStateProperty.all(
                        TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        )
                      ),
                      ),
                      child: Text('Tweet', 
                        
                      ),
                    ),
                  ],
                  ),
              ),
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
