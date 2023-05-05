import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  BoxShadow setShadow() {
    return BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 5,
      blurRadius: 7,
      offset: Offset(0, 3),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Curriculum Vitae"),
        backgroundColor: Colors.amber,
      ),
      backgroundColor: Colors.amber[100],
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  height: 120,
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context)
                          .size
                          .width // Lebar maksimum // Lebar maksimum
                      ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [setShadow()],
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(7),
                        child: const CircleAvatar(
                          backgroundImage: AssetImage('assets/profile.jpg'),
                          radius: 55,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Mochammad Syahrul Kurniawan",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.5),
                          ),
                          Text("S1 Sistem Informasi"),
                          Text("Jurusan Teknik Informatika"),
                          Text("Fakultas Teknik dan Kejuruan"),
                          Text("Universitas Pendidikan Ganesha"),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.only(top: 14, left: 17, right: 17),
                      height: 140,
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [setShadow()],
                      ),
                      child: ListView(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 10),
                            child: const Text(
                              "DESCRIPTION",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const Text(
                            "Hello, I'm Syahrul from Singaraja, Bali. I am a student at the Ganesha University of Education with a focus on Information Systems. I am someone who studies Web Developer, Mobile Developer, and Information System Security.",
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.only(top: 14, left: 17, right: 17),
                      height: 140,
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [setShadow()],
                      ),
                      child: ListView(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 10),
                            child: const Text(
                              "EDUCATION",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.grade),
            label: 'Grade',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        onTap: (index) {},
      ),
    );
  }
}
