import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MYHomePage(),
    );
  }
}

class MYHomePage extends StatefulWidget {
  const MYHomePage({super.key});

  @override
  State<MYHomePage> createState() => _MYHomePageState();
}

class _MYHomePageState extends State<MYHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Assignment 02',
          style: TextStyle(
            fontFamily: 'Pangolin',
            fontSize: 24,
          ),
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.blue, Colors.green],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                blurRadius: 20,
                offset: Offset(5, 5),
              ),
            ],
          ),
          width: 300,
          height: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 50,
                backgroundImage: NetworkImage(
                  'https://imgs.search.brave.com/b1Yefevwu7KD9sEZCYxCUjjw74Z47Va0guWifNuKchs/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pbWdz/LnNlYXJjaC5icmF2/ZS5jb20vWkRKNnkt/U3h1VmlUNHJ3OU1G/MURLemh3SlMtNmg4/R0VQc0NXVE1hSG5t/by9yczpmaXQ6NTAw/OjA6MDowL2c6Y2Uv/YUhSMGNITTZMeTl0/WldScC9ZUzVwYzNS/dlkydHdhRzkwL2J5/NWpiMjB2YVdRdk1U/UTEvTVRVNE56Z3dO/eTkyWldOMC9iM0l2/ZFhObGNpMXdjbTlt/L2FXeGxMV2xqYjI0/dGRtVmovZEc5eUxX/RjJZWFJoY2kxdi9j/aTF3WlhKemIyNHRh/V052L2JpMXdjbTlt/YVd4bExYQnAvWTNS/MWNtVXRjRzl5ZEhK/aC9hWFF0YzNsdFlt/OXNMWFpsL1kzUnZj/aTVxY0djX2N6MDIv/TVRKNE5qRXlKbmM5/TUNaci9QVEl3Sm1N/OWVVUktORWxVL1dE/RmpTRTFvTWpWTWRE/RjIvU1RGNlFtNHlZ/MEZMUzBGcy9RbmxJ/UW5aUVNqaG5SV2xK/L1p6MA.jpeg',
                ),
              ),
              const SizedBox(width: 10),
              Container(
                color: Colors.transparent,
                width: 140,
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Name :- John Doe',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'Pangolin',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Role :- Developer",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'Pangolin',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Have a nice day!",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: 'Pangolin',
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
