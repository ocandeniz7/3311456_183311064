import 'package:flutter/material.dart';
import 'package:flutter_campapp/view/camping_requirements.dart';
import 'package:flutter_campapp/view/detail_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String myCampImageUrl =
      "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.countryliving.com%2Flife%2Ftravel%2Fg20916937%2Fcamping-quotes%2F&psig=AOvVaw3sjUMVQ-luC5lNdCh9ghe1&ust=1649288848364000&source=images&cd=vfe&ved=0CAoQjRxqFwoTCNCTtPKN_vYCFQAAAAAdAAAAABAN";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kamp Uygulaması'),
        leading: GestureDetector(
          onTap: () {/* Write listener code here */},
          child: Icon(
            Icons.menu, // add custom icons also
          ),
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.search,
                  size: 26.0,
                ),
                
              )),
        ],
      ),
      
      body: scaffoldBody(),
    );
  }

  Container scaffoldBody() {
    return Container(
      child: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return myColumn();
        },
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
                    elevation: 10.0,
                    child: Column(
                      children: [
                        const ListTile(
                          title: Text(
                            "Ücretsiz Kamp - Puan",
                            style: TextStyle(color: Colors.green),
                          ),
                          subtitle: Text("Duş ve Tuvalet", style: TextStyle(color: Colors.green),),
                          // kalp ikonu , ikonlar
                          trailing: Icon(Icons.photo_camera),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return DetailPage();
                              },
                            ));
                          },
                          child: Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.black),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/camp_image.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                        )
                      ],
                    )),
              ),
            ),
            Expanded(
              child: SizedBox(
                height:280,
                width: 100,
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 6.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return CampingRequirementsPage();
                          },
                        ));
                      },
                      child: Column(
                        children: [
                          ListTile(
                            title: Text("Ücretli Kamp - Puan", style: TextStyle(color: Colors.orange),),
                            subtitle: Text("Sahli - Orman", style: TextStyle(color: Colors.orange),),
                            trailing: Icon(Icons.forward),
                          ),
                          Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/camp_image.jpg'),
                                    fit: BoxFit.cover)),
                          )
                        ],
                      ),
                    )),
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
                    elevation: 10.0,
                    child: Column(
                      children: [
                        const ListTile(
                          title: Text(
                            "Profesörler Kampı",
                            style: TextStyle(color: Colors.green),
                          ),
                          subtitle: Text("PROF.DR. A.ÇINAR", style: TextStyle(color: Colors.green),),
                          // kalp ikonu , ikonlar
                          trailing: Icon(Icons.photo_camera),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return DetailPage();
                              },
                            ));
                          },
                          child: Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.black),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/CevahirHoca.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                        )
                      ],
                    )),
              ),
            ),
            Expanded(
              child: SizedBox(
                height:280,
                width: 100,
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 6.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return CampingRequirementsPage();
                          },
                        ));
                      },
                      child: Column(
                        children: [
                          ListTile(
                            title: Text("Orman Kampı", style: TextStyle(color: Colors.orange),),
                            subtitle: Text("Wild Life", style: TextStyle(color: Colors.orange),),
                            trailing: Icon(Icons.forward),
                          ),
                          Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/orman.jpg'),
                                    fit: BoxFit.cover)),
                          )
                        ],
                      ),
                    )),
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
                    elevation: 10.0,
                    child: Column(
                      children: [
                        const ListTile(
                          title: Text(
                            "Eğlence Kampı",
                            style: TextStyle(color: Colors.green),
                          ),
                          subtitle: Text("Funny Camp", style: TextStyle(color: Colors.green),),
                          // kalp ikonu , ikonlar
                          trailing: Icon(Icons.photo_camera),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return DetailPage();
                              },
                            ));
                          },
                          child: Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.black),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/abuzer.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                        )
                      ],
                    )),
              ),
            ),
            Expanded(
              child: SizedBox(
                height:280,
                width: 100,
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 6.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return CampingRequirementsPage();
                          },
                        ));
                      },
                      child: Column(
                        children: [
                          ListTile(
                            title: Text("Öğrenci Kampı", style: TextStyle(color: Colors.orange),),
                            subtitle: Text("Mangal-Öğrenci", style: TextStyle(color: Colors.orange),),
                            trailing: Icon(Icons.forward),
                          ),
                          Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/ekmekreis.jpg'),
                                    fit: BoxFit.cover)),
                          )
                        ],
                      ),
                    )),
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
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return CampingRequirementsPage();
                          },
                        ));
                      },
                      child: Column(
                        children: [
                          ListTile(
                            title: Text("Yaz Kampı", style: TextStyle(color: Colors.orange),),
                            subtitle: Text("Summer Camp", style: TextStyle(color: Colors.orange),),
                            trailing: Icon(Icons.forward),
                          ),
                          Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/yaz3.jpg'),
                                    fit: BoxFit.cover)),
                          )
                        ],
                      ),
                    )),
              ),
            ),
            Expanded(
              child: SizedBox(
                height:280,
                width: 100,
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 6.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return CampingRequirementsPage();
                          },
                        ));
                      },
                      child: Column(
                        children: [
                          ListTile(
                            title: Text("Kış Kampı", style: TextStyle(color: Colors.orange),),
                            subtitle: Text("Winter Camp", style: TextStyle(color: Colors.orange),),
                            trailing: Icon(Icons.forward),
                          ),
                          Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/kutupayısı.jpg'),
                                    fit: BoxFit.cover)),
                          )
                        ],
                      ),
                    )),
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
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return CampingRequirementsPage();
                          },
                        ));
                      },
                      child: Column(
                        children: [
                          ListTile(
                            title: Text("Erasmuslular Kampı", style: TextStyle(color: Colors.orange),),
                            subtitle: Text("ERASMUS ONLY", style: TextStyle(color: Colors.orange),),
                            trailing: Icon(Icons.forward),
                          ),
                          Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/erasmuss.jpg'),
                                    fit: BoxFit.cover)),
                          )
                        ],
                      ),
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
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return CampingRequirementsPage();
                          },
                        ));
                      },
                      child: Column(
                        children: [
                          ListTile(
                            title: Text("Oyun Kampı", style: TextStyle(color: Colors.orange),),
                            subtitle: Text("Technology Camp", style: TextStyle(color: Colors.orange),),
                            trailing: Icon(Icons.forward),
                          ),
                          Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/techkamp.jpg'),
                                    fit: BoxFit.cover)),
                          )
                        ],
                      ),
                    )),
              ),
            ),
            
          ],
        ),
      ],
    );
  }
}
