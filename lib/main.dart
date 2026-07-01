
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(title: 'Animation'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  String activeCard =" ";

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
       title: Text(widget.title),
       
      ),
      backgroundColor: Colors.black,
      
      body: Center(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: 
          Stack(
            children: [
              AnimatedPositioned(
                duration: const Duration(
                  milliseconds:  800
                ),
                curve: Curves.easeInOut,
                top: activeCard == "Blue" ? 0 : 220,
                left: 500,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      activeCard = activeCard == "Blue" ? " " : "Blue";
                    });
                  },
                  child: card(
                const LinearGradient(colors: [
                Color(0xFF1E3C72),
                Color(0xFF2A5298),
              ]
              ),
              ),
                ),
                
              ),

               AnimatedPositioned(
                duration: const Duration(
                  milliseconds: 800
                ),
                curve: Curves.easeInOut,
                top: activeCard == "green" ? 0 : 240,
                left: 500,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      activeCard =activeCard == "green" ? " " : "green";
                    });
                  },
                    child: card(
                const LinearGradient(colors: [
                Color(0xFF11998E),
                Color(0xFF38EF7D),
              ]
              ),
              ),
                ),
                
              ),


              AnimatedPositioned(
                duration: const Duration(
                  milliseconds: 800
                ),
                curve: Curves.easeInOut,
                top: activeCard == "purple" ? 0 : 260,
                left: 500,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      activeCard = activeCard == "purple" ? " " : "purple";
                    });
                  },
                
                    child: card(
                const LinearGradient(colors: [
                Color(0xFF6A11CB),
                Color(0xFF2575FC),
              ]
              ),
              ),
                
                ),
              ),


              AnimatedPositioned(
                duration: const Duration(
                  milliseconds: 800
                ),
                curve: Curves.easeInOut,
                top: activeCard == "pink" ? 0 : 280,
                left:500,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      activeCard = activeCard == "pink" ? " " : "pink";
                    });
                  },
                  
                    child: card(
                const LinearGradient(colors: [
                Color(0xFFFF512F),
                Color(0xFFDD2476),
              ]
              ),
              ),
                ),
                
              ),


              AnimatedPositioned(
                duration: const Duration(
                  milliseconds: 800
                ),
                curve: Curves.easeInOut,
                top: activeCard == "grey" ? 0 : 300,
                left: 500,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      activeCard = activeCard == "grey" ? " " :"grey";
                    });
                  },
                  
                    child: card(
                const LinearGradient(colors: [
               Color(0xFF232526),
                Color(0xFF414345),
              ]
              ),
              ),
                ),
                
              ),


              AnimatedPositioned(
                duration: const Duration(
                  milliseconds: 800
                ),
                curve: Curves.easeInOut,
                top: activeCard ==  "yellow" ? 0: 320,
                left: 500,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      activeCard = activeCard == "yellow" ? " " : "yellow";
                    });
                  },
                    child: card(
                const LinearGradient(colors: [
               Color(0xFFF7971E),
                Color(0xFFFFD200),
              ]
              ),
              ),
                ),
                ),
              
              
            ],
          ),
        ),
      ),
    
    );
 
  }
 
   Widget card (LinearGradient gradient){
    return Container(
      width: 280,
      height: 170,
      padding :const EdgeInsets.all(18),
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            spreadRadius: 2,
            offset: const Offset(4, 6),
          ),
        ]
      ),
    
     child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "CREDIT CARD",
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            letterSpacing: 2,
          ),
        ),
        const SizedBox(height: 15,),
        Row(
          children: [
            Container(
              width: 40,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            const SizedBox(width: 15,),
            const Icon(
              Icons.wifi,
              color: Colors.white,
              size: 28,
            ),
          ],
        ),
        const Spacer(),

        const Text(
          "1234 **** **** 5678",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            letterSpacing: 2,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 10,),

        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "VALID/n01/24",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 10
              ),
            ),
            Text(
               "VALID/n02/28",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 10
              ),
            ),
          ],
        ),
        const SizedBox(height: 8,),

        const Text(
          "YOUR NAME",
          style: TextStyle(
            color: Colors.white,
            fontSize: 6,
            letterSpacing: 2,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
     ),
    );
  }

}
