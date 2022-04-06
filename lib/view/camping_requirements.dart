import 'package:flutter/material.dart';

class CampingRequirementsPage extends StatefulWidget {
  const CampingRequirementsPage({Key? key}) : super(key: key);

  @override
  State<CampingRequirementsPage> createState() =>
      _CampingRequirementsPageState();
}

class _CampingRequirementsPageState extends State<CampingRequirementsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 25.0),
        child: Center(
          child: Column(
            children: [
              Text(
                "Ücretli Kamping",
                style: TextStyle(fontSize: 30),
              ),
              myColumn(),
            ],
          ),
        ),
      ),
    );
  }

  Column myColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 280,
                width: 100,
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 6.0,
                    
                    child: Column(
                      children: [
                        const ListTile(
                          title: Text(
                            "ŞirinBaba Kamping",
                            style: TextStyle(color: Colors.red),
                          ),
                          subtitle: Text("6/10", style: TextStyle(color: Colors.blue),),
                          // ikonlar
                          //trailing: Icon(Icons.favorite_outline),
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/şirinbabakamp.jpg'),
                                  fit: BoxFit.cover)),
                        )
                      ],
                    )),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 280,
                width: 100,
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 6.0,
                    child: Column(
                        children: [
                          ListTile(
                            title: Text("Barbaros Kamping", style: TextStyle(color: Colors.red),),
                            subtitle: Text("4/10",style: TextStyle(color: Colors.blue),),
                            //trailing: Icon(Icons.favorite_outline),
                          ),
                          Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/barbaroskamp.jpg'),
                                    fit: BoxFit.cover)),
                          )
                        ],
                      ),
                    ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 280,
                width: 100,
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 6.0,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text("Çayırhan Kamping",style: TextStyle(color: Colors.red),),
                          subtitle: Text("5/10",style: TextStyle(color: Colors.blue),),
                          trailing: Icon(Icons.favorite_outline),
                        ),
                        Container(
                          height: 200,
                          width: 200, 
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/çayırhan.jpg'),
                                  fit: BoxFit.cover)),
                        )
                      ],
                    )),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 280,
                width: 100,
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 6.0,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text("Uygur Kamping",style: TextStyle(color: Colors.red),),
                          subtitle: Text("3/10",style: TextStyle(color: Colors.blue),),
                          trailing: Icon(Icons.favorite_outline),
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/uygurkamp.jpg'),
                                  fit: BoxFit.cover)),
                        )
                      ],
                    )),
              ),
            ),
          ],
        ),
        
      ],
    );
  }
}
