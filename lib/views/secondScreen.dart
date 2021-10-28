import 'package:flutter/material.dart';

// ignore: camel_case_types
class secondScreen extends StatefulWidget {
  const secondScreen({ Key? key }) : super(key: key);

  @override
  _secondScreenState createState() => _secondScreenState();
}

// ignore: camel_case_types
class _secondScreenState extends State<secondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.green[200],
        //leading: Icon,
        title: Text("LoveDogs",
          style: TextStyle(
            fontSize: 35,
            fontFamily: 'Allison',
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      endDrawer: Drawer(
        elevation: 10.0,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green.shade400
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage("assets/image/kobpick.jpg"),
                    radius: 35.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Reginald Juan M. Falgui II',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ),

                      SizedBox(height: 10.0,),

                      Text('rjmfalgui2@gmail.com',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 12.0,
                        ),
                      ),
                    ],                    
                  ),
                ],
              ),
            ),

            SizedBox(height: 10.0,),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(onPressed: (){}, 
                  child: 
                  Text("Home",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:Colors.black,
                      fontSize: 35.0,
                      fontFamily: 'Allison'
                    ),
                  ),
                ),
                
                SizedBox(height: 15),

                TextButton(onPressed: (){}, 
                  child: 
                  Text("Settings",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:Colors.black,
                      fontSize: 35.0,
                      fontFamily: 'Allison'
                    ),
                  ),
                ),

                SizedBox(height: 15),

                TextButton(onPressed: (){}, 
                  child: 
                  Text("Log Out",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:Colors.black,
                      fontSize: 35.0,
                      fontFamily: 'Allison'
                    ),
                  ),
                ),           
              ],
            ),
          ],
        ),
      ),

      body: Container(
        margin: EdgeInsets.all(30),
        color: Colors.white70,
        child: GridView.count(
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 20.0,
          crossAxisCount: 4,
          children: [
            Container( //FIRST
              margin: EdgeInsets.only(left: 15, top: 15),
              color: Colors.white,
                child: Column(
                  children: [
                    Image.asset("assets/image/leash1.png", height: 360, width: 360),
                    Text("Pet Leash",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),

                    Text("₱500",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
                  ],
                )
            ),

            Container( //SECOND
              margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.all(8),
              color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Image.asset("assets/image/leash2.png", height: 300, width: 300),
                    SizedBox(height: 40),
                    Text("Retractable Leash",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text("₱700",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
            ),

            Container( //THIRD
              margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.all(8),
              color: Colors.white,
                child: Column(
                  children: [
                    Image.asset("assets/image/dogplate.png", height: 300, width: 300),
                    SizedBox(height: 50),
                    Text("Plastic Water/Food Tray",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text("₱400",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
            ),

            Container( //FOURTH
              margin: EdgeInsets.only(top: 15, right: 15),
              padding: EdgeInsets.all(8),
              color: Colors.white,
                child: Column(
                  children: [
                    Image.asset("assets/image/dogplate2.jpg", height: 350, width: 350),
                    Text("Stainless Water/Food Tray",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text("₱600",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
            ),

            //-------------------------------------------------------

            Container( //FIFTH
              margin: EdgeInsets.only(left: 15),
              padding: EdgeInsets.all(8),
              color: Colors.white,
                child: Column(
                  children: [
                    Image.asset("assets/image/petcage.png", height: 350, width: 350),
                    SizedBox(height: 5),
                    Text("Pet Cage",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text("₱2000",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
            ),

            Container( //SIXTH
              margin: EdgeInsets.only(bottom:15),
              padding: EdgeInsets.all(8),
              color: Colors.white,
                child: Column(
                  children: [
                    Image.asset("assets/image/petcarrier.png", height: 350, width: 350),
                    SizedBox(height: 5),
                    Text("Pet Carrier",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text("₱1500",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
            ),

            Container( //SEVENTH
              margin: EdgeInsets.only(bottom:15),
              padding: EdgeInsets.all(8),
              color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Image.asset("assets/image/petbed.png"),
                    SizedBox(height: 80),
                    Text("Pet Bed",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text("₱1200",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
            ),

            Container( //EIGTH
              margin: EdgeInsets.only(bottom:15, right: 15),
              padding: EdgeInsets.all(8),
              color: Colors.white,
                child: Column(
                  children: [
                    Image.asset("assets/image/petbackpack.jpg"),
                    SizedBox(height: 55),
                    Text("Pet Backpack",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text("₱2500",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
            ),            

          ],
        ),
      ),
    );
  }
}