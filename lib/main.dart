import 'package:flutter/material.dart';
import 'package:itelective6falguii/views/secondScreen.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    //home: LogInPage(),
    routes: {
      '/' : (context) => LogInPage(),
      '/item-list' : (context) => secondScreen(),
    },
  )
);


class LogInPage extends StatelessWidget {
  const LogInPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Root Widget
      backgroundColor: Colors.grey,
      body: 
      Container( // Container widget for the Card widget
        child: Card( // Card widget for the row widget which will have or hold two column widgets
          margin: EdgeInsets.fromLTRB(245, 125, 245, 125),
          //margin: EdgeInsets.all(200),
          child: Row( // Row widget for the two columns
            children: [ // children for each column/container
              Container( // Container for the first column, the left/picture side
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * .38,
                color: Colors.green[200],
                child: 
                Column( // Para malagay ang picture
                  children: [
                    SizedBox(
                      width: 450,
                      height: 500,
                      child: Image.asset("assets/image/doggo.png"),
                    ),

                    Text("Maecenas mattis egestas", // CHANGE THIS FONT
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(height: 10), //gap sa dalawang messages 'Maecenas' ug 'Erdum'

                    Text("Erdum et malesuadafames ac ante ipsum primis",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text("in faucibus uspendisse porta.",
                      style:  TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                ),

            //SizedBox(width: 1), //optional i guess.(?)

              Container( // Container for the second column, the login form
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * .35,
                child: 
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("LoveDogs", // CHANGE THE FONT
                        style: TextStyle(
                          fontSize: 75,
                          fontFamily: 'Allison',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600],
                        ),
                      ),

                      SizedBox(height: 100,), //Gap sa lovebirds and sa welcome to love birds

                      Text("Welcome to LoveDogs",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.grey[400],
                        ),
                      ),

                      SizedBox(height: 45), // gap sa welcome to lovebirds and enter username

                      Container(
                        width: MediaQuery.of(context).size.width * .15,
                        child: 
                          TextField(
                          obscureText: false,
                          maxLines: 1,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Users name or Email",
                            ),
                          ),
                        ),

                      SizedBox(height: 15), // gap sa username and password field

                      Container(
                        width: MediaQuery.of(context).size.width * .15,
                        child: 
                          TextField(
                          obscureText: true,
                          maxLines: 1,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Password",
                            ),
                          ),
                      ),

                      SizedBox(height: 1,),

                      Container(
                        padding: EdgeInsets.only(top: 1, left: 200, bottom: 1),
                        child: TextButton(onPressed: (){}, 
                        child: 
                          Text("Forgot Password?",
                            style: TextStyle(
                              fontSize: 10,
                              fontStyle: FontStyle.italic,
                              decoration: TextDecoration.underline,
                              color: Colors.grey[500],
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 15),

                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[700],
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width: MediaQuery.of(context).size.width * .1,
                        height: 50,
                        child: TextButton(
                          onPressed: (){
                            Navigator.popAndPushNamed(context, '/item-list');
                          }, 
                          child: Text("Sign in",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )),                        
                      ),

                      SizedBox(height: 40),

                      Row(
                        children: [
                          Expanded(child: Divider()
                          ),

                          Text("or",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                          ),

                          Expanded(child: Divider()
                          ),
                        ],
                      ),

                      SizedBox(height: 30),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/image/logogugil.jpg', height: 35, width: 35,),
                          Text("Sign in with Google"),
                        ],
                      ),
/*
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width: MediaQuery.of(context).size.width * .09,
                        height: 35,
                        child: TextButton(
                          onPressed: (){}, 
                          child: Text("Sign in with Google",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),                        
                      ),
*/
                      SizedBox(height: 20),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Text("New Lovebirds? ",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black,
                              ),
                            ),
                          ),

                          Container(
                            child: TextButton(onPressed: (){}, 
                            child: Text("Create Account",
                              style: TextStyle(
                                fontSize: 10,
                                fontStyle: FontStyle.italic,
                                decoration: TextDecoration.underline,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          ),
                        ],
                      )
                    ],
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

