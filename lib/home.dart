import 'package:flutter/material.dart';
import 'package:curriculum_vitae/home.dart';

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
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              height: 120,
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width, // Lebar maksimum
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
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(top: 14, left: 17, right: 17),
              height: 510,
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width, // Lebar maksimum
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [setShadow()],
              ),
              child: ListView(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "hello, I'm Syahrul from Singaraja, Bali. I am a student at the Ganesha University of Education with a focus on Information Systems. I am someone who studies Web Developer, Mobile Developer, and Information System Security.",
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
