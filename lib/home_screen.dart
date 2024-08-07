import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int counter = 0;
  Counter() {
    setState(() {
      counter++;
    });
  }

  reset() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromARGB(63, 8, 28, 129),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(44, 49, 194, 255),
        centerTitle: true,
        title: Text(
          "﴾ فَسَبِّحْ بِحَمْدِ رَبِّكَ وَاسْتَغْفِرْهُ إِنَّهُ كَانَ تَوَّابًا﴿",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.height / 1.5,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(1, 9),
                          blurRadius: 20,
                        )
                      ]),
                  child: Center(
                      child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Text(
                      counter.toString(),
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  )),
                ),
                SizedBox(
                  height: 30,
                ),
                Transform.translate(
                  offset: Offset(1, 9),
                  child: Container(
                    width: 190,
                    height: 190,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(50),
                            bottomLeft: Radius.circular(50)
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(1,9),
                            blurRadius: 20,
                            color: Colors.black,
                          )
                        ]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(onPressed: () => Counter(), child:
                        Container(
                         decoration: BoxDecoration(
                           color: Colors.blue,
                           shape: BoxShape.circle,
                         ),
                        ),
                          style: ElevatedButton.styleFrom(maximumSize: Size(80,80)),
                        ),
                        SizedBox(height: 30,),
                        Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(onPressed: () => reset(),
                            child: Icon(Icons.wifi_protected_setup),
                            style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.deepPurple),

                        ),
                      ],
                    ),
                   ],
                  ),
                ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
