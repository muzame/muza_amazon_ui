import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF018197),
        title: Row(
          children: [
            Container(
              width: 100,
              child: Image(image: AssetImage('assets/images/amazon_logo.png'),),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.mic, color: Colors.white,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart, color: Colors.white,)),
          SizedBox(width: 20,)
        ],
      ),

      body: Container(
        color: Colors.grey.shade300,
        child: Column(
          children: [
            // #search
            Container(
              padding: EdgeInsets.only(bottom: 10, right: 10, left: 10),
              height: 55,
              color: Color(0xFF018197),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1
                  ),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.search, color: Color(0xFF018197),),
                          hintText: 'What are you looking for?',
                          border: InputBorder.none
                        ),
                      ),
                    ),
                    Icon(Icons.camera_alt, color: Color(0xFF018197),),
                    // SizedBox(width: 10,)
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  // #location
                  Container(
                    height: 45,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    color: Colors.blueGrey,
                    child: Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.white,),
                        SizedBox(width: 5,),
                        Text("Deliver to Korea, Repablic of", style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),

                  // #reklama
                  Container(
                    height: 140,
                    child: Row(
                      children: [
                        // #reklama left
                        Container(
                          padding: EdgeInsets.all(20),
                          width: 180,
                          color: Colors.white,
                          child: Center(child: Text("We ship 45million products", style: TextStyle(fontSize: 16),)),
                        ),

                        // #reklama right
                        Expanded(
                          child: Container(
                            color: Colors.white,
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/image_1.png'),
                                      fit: BoxFit.cover
                                  ),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(70), bottomLeft: Radius.circular(70))
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),

                  // #sign_in
                  Container(
                    padding: EdgeInsets.all(20),
                    height: 160,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Sign in for the best experience", style: TextStyle(fontSize: 18, color: Colors.black),),
                        SizedBox(height: 10,),
                        Container(
                          color: Colors.orange,
                          child: Center(child: Text("Sign in"),),
                          height: 50,
                        ),
                        SizedBox(height: 10,),
                        Text("Create an account", style: TextStyle(color: Colors.blueAccent, fontSize: 18),)
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),

                  // #deal
                  Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Deal of the day", style: TextStyle(color: Colors.black, fontSize: 22),),
                        SizedBox(height: 16,),
                        Image(
                          width: double.infinity,
                          height: 240,
                          image: AssetImage('assets/images/item_7.png'),
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 16,),
                        Text('Up to 31% of APC UPC Battery Back', style: TextStyle(fontSize: 17, color: Colors.grey),),
                        SizedBox(height: 6,),
                        Text("\$10.99 - \$79.9", style: TextStyle(fontSize: 17, color: Colors.grey),),


                      ],
                    )
                  ),
                  SizedBox(height: 8,),

                  // #best
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Best sellers in electronics', style: TextStyle(fontSize: 22, color: Colors.black),),
                        SizedBox(height: 16,),
                        Container(
                          height: MediaQuery.of(context).size.width,
                          width: double.infinity,
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          width: double.infinity,
                                          height: double.infinity,
                                          child: Image(
                                            image: AssetImage('assets/images/item_7.png'),
                                            fit: BoxFit.cover,
                                          ),
                                        )
                                      ),
                                      SizedBox(width: 5,),
                                      Expanded(
                                        child: Container(
                                          height: double.infinity,
                                          width: double.infinity,
                                          child: Image(
                                            image: AssetImage('assets/images/item_6.png'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              // SizedBox(height: 5,),
                              Expanded(
                                child: Container(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Image(
                                          image: AssetImage('assets/images/item_5.png'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(width: 5,),
                                      Expanded(
                                          child: Image(
                                            image: AssetImage('assets/images/item_4.png'),
                                            fit: BoxFit.cover,
                                          )
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
