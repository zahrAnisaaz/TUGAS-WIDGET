import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(Cobaaja());
}

class Cobaaja extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hyro App",
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(title: "Hyro App"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
 
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color.fromARGB(255, 239, 146, 210),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                textStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: Text('Keranjang'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(16.0),
              padding: EdgeInsets.all(16),
               decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 255, 209, 240),
                        Color.fromARGB(255, 255, 202, 236),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                icon: Icon(Icons.money),
                onPressed: () {},
              ),
                  Text(
                    'Uang Anda',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Rp 1.000.000',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Point Anda',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '700.000',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.add_circle),
                            SizedBox(width: 8),
                            Text('Top Up'),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.swap_horiz),
                            SizedBox(width: 8),
                            Text('Transfer'),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      //   child: Row(
                      //     children: [
                      //       Icon(Icons.arrow_downward),
                      //       SizedBox(width: 8),
                      //       Text('Tarik Tunai'),
                      //     ],
                      //   ),
                      // ),
                      // ElevatedButton(
                      //   onPressed: () {},
                      //   style: ElevatedButton.styleFrom(
                      //     padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                      //     textStyle: TextStyle(
                      //       fontSize: 16,
                      //       fontWeight: FontWeight.bold,
                      //     ),
                        //  ),
                        child: Row(
                          children: [
                            Icon(Icons.history),
                            SizedBox(width: 8),
                            Text('History'),
                          ],
                        ),
                      ),
                    ],
                  ),     
                ],
              ),
            ),
            Container(
              child: Column(
              children: [
              SizedBox(height: 32),
                          Container(
                            margin: EdgeInsets.all(16.0),
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.settings),
                                    SizedBox(width: 8),
                                    Text(
                                      'Upgrade ke Hyro Premium',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Dapatkan lebih banyak keuntungan!',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(height: 32),
                          GridView.count(
                            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            children: [
                              _buildFeatureCard(
                                icon: Icons.local_offer,
                                title: 'Pakaian',
                                onPressed: () {
                                print('Pakaian pressed');
                                },
                              ),
                              _buildFeatureCard(
                                icon: Icons.arrow_upward,
                                title: 'Pulsa',
                                onPressed: () {
                                print('Pulsa pressed');
                                },
                              ),
                              _buildFeatureCard(
                                icon: Icons.favorite,
                                title: 'Peduli\nLindungi',
                                onPressed: () {
                                print('Peduli\nLindungi pressed');
                                },
                              ),
                              _buildFeatureCard(
                                icon: Icons.account_balance,
                                title: 'Hyro Plus',
                                onPressed: () {
                                print('Hyro Plus pressed');
                                },
                              ),
                              _buildFeatureCard(
                                icon: Icons.receipt_long,
                                title: 'Angsuran\nKredit',
                                onPressed: () {
                                print('Angsuran\nKredit pressed');
                                },
                              ),
                              _buildFeatureCard(
                                icon: Icons.play_circle,
                                title: 'Internet & TV\nKabel',
                                onPressed: () {
                                print('Internet & TV\nKabel pressed');
                                },
                              ),
                              _buildFeatureCard(
                                icon: Icons.umbrella,
                                title: 'Proteksi',
                                onPressed: () {
                                print('Proteksi pressed');
                                },
                              ),
                              _buildFeatureCard(
                                icon: Icons.settings_suggest,
                                title: 'Lainnya',
                                onPressed: () {
                                print('Lainnya pressed');
                                },
                              ),
                            ],
                          ),
                          SizedBox(height: 32),
                          Text(
                            'Info dan Promo Spesial',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            child: Text('Lihat Semua'),
                          ),
                          SizedBox(height: 16),
                          Container(
                            height: 150,
                            child: Row(
                              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white, // existing decoration
                      borderRadius: BorderRadius.circular(10), // existing decoration
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [ // add box shadow here
                          BoxShadow(
                            color: Color.fromARGB(255, 188, 187, 187),
                            offset: Offset(2.0, 2.0),
                            blurRadius: 2.0,
                          ),
                        ],
                      ),
                       child: Container(
                            width: 200,
                            height: 200,
                            child: Image.asset(
                              'assets/promo1.jpg', // your another image widget here
                              fit: BoxFit.cover,
                            ),
                          ), 
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white, // existing decoration
                      borderRadius: BorderRadius.circular(10), // existing decoration
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [ // add box shadow here
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(2.0, 2.0),
                            blurRadius: 2.0,
                          ),
                        ],
                      ),
                          child: Container(
                            width: 200,
                            height: 200,
                            child: Image.asset(
                              'assets/promo 2.jpg', // your another image widget here
                              fit: BoxFit.cover,
                            ),
                          ), 
                          ),
                        ),
                      ),
                    ],
                            ),
                          ),
                          SizedBox(height: 32),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.home),
                                iconSize: 32,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.account_balance_wallet),
                                iconSize: 32,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.payment),
                                iconSize: 32,
                              ),
                              IconButton(
                                onPressed: () {}, 
                                icon: Icon(Icons.notifications),
                                iconSize: 32,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.person),
                                iconSize: 32,
                              ),
                            ],
                          ),
            ],),)
          ],
        ),
      ),
    );
  }
  Widget _buildFeatureCard({required IconData icon, required String title, required Null Function() onPressed}) {
    return Card(
      elevation: 2,
      child: Container(
        margin: EdgeInsets.all(16.0),
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 48,
              color: Color.fromARGB(255, 239, 161, 219),
            ),
            SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],  
        ),
      ),
    );
  }
}