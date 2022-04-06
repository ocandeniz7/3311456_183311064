import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        child: ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) {
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
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.grey),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/ışıkdağı.jpg'),
                                        fit: BoxFit.cover)),
                              )),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 280,
                          width: 100,
                          child: Card(
                              shape: RoundedRectangleBorder(
                                //borderRadius: BorderRadius.circular(15.0),
                              ),
                              elevation: 6.0,
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text("Kızılcahamam Işık Dağı", style: TextStyle(color: Colors.red),),
                                    subtitle: Text("7/10", style: TextStyle(color: Colors.red),),
                                    trailing: Icon(Icons.book_rounded),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: Text(
                                          "Soldaki resim Ankara/Bolu arasında bulunan Işık Dağı kamp alanına aittir. Kızılcahamam'daki bu kamp alanı ücretsiz olup Ankaraya 250 km uzaklıktadır. Ortasında küçük bir göl bulunan bu alan yeşillikleriyle kampçılara büyüleyici bir kamp deneyimi sunar. "),
                                    ),
                                  )
                                ],
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
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.blue),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/aliağa.jpg'),
                                        fit: BoxFit.cover)),
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
                                    title: Text("İzmir Aliağa Camping", style: TextStyle(color: Colors.blue),),
                                    subtitle: Text("8/10", style: TextStyle(color: Colors.blue),),
                                    trailing: Icon(Icons.favorite_outline),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: Text("Soldaki resim İzmir Aliağa Kamp alanına aittir. Merkeze 95 kilometre uzaklıktadır. Sahil kamping olarak değerlendirilen bu kamp alanı adeta orman ve sahilin birleşiminden oluşmaktadır. Sıcak duş ve tuvalet özelliği ise bu kamp alanını ön plana çıkarmaktadır.")
                                    ),)
                                ],
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
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.grey),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/konyaaltı.jpg'),
                                        fit: BoxFit.cover)),
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
                                    title: Text("Konyaaltı Camping", style: TextStyle(color: Colors.yellow.shade700),),
                                    subtitle: Text("10/10", style: TextStyle(color: Colors.yellow.shade700),),
                                    trailing: Icon(Icons.camera_front),
                                  ),
                                  Padding(padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: Text(
                                      "Antalyada bulunan Konyaaltı sahili şimdilerde ücretsiz olmasından dolayı popüler bir hal almış durumdadır. Türkiyenin öncü sahillerinden birisine sahip olan bu kamp alanında eşsiz bir sahil kampı tecrübe edebilirsiniz. Otostop vasıtasıyla merkezi de gezebilirsiniz."
                                    ) ),)
                                ],
                              )),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            }),
      ),
    );
  }
}
