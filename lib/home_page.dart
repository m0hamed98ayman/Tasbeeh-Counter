import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int num = 0;
  String selectedText = 'سُبْحـانَ اللهِ وَبِحَمْـدِهِ'; // Default text

  // List of selectable texts
  List<String> texts = [
    "سُبْحـانَ اللهِ وَبِحَمْـدِهِ",
    "الْحَمْدُ لِلَّهِ",
    "اللهُ أكبَرَ",
    "لَا إِلَٰهَ إِلَّا ٱللَّٰهُ",
    "أسْتَغْفِرُ اللهَ وَأتُوبُ إلَيْهِ",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(150, 31, 31, 31),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(150, 31, 31, 31),
        title: const Text(
          'عداد الذكر',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ))
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: const Color.fromARGB(255, 75, 128, 117),
                    context: context,
                    builder: (context) {
                      return ListView.builder(
                        itemCount: texts.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: ListTile(
                              title: Text(
                                texts[index],
                                style: const TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontFamily: 'Amiri',
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  selectedText = texts[index];
                                });
                                Navigator.pop(
                                    context); // Close the bottom sheet
                              },
                            ),
                          );
                        },
                      );
                    },
                  );
                },
                child: Text(
                  selectedText,
                  style: const TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontFamily: 'Amiri',
                  ),
                ),
              ),
              const SizedBox(height: 80),
              Text(
                '$num',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 70,
                ),
              ),
              const SizedBox(height: 180),
              Row(
                children: [
                  SizedBox(
                    height: 85,
                    width: 85,
                    child: FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          num = 0;
                        });
                      },
                      backgroundColor: const Color.fromARGB(179, 117, 228, 182),
                      child: const Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  const SizedBox(width: 70),
                  SizedBox(
                    height: 85,
                    width: 85,
                    child: FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          num++;
                        });
                      },
                      backgroundColor: const Color.fromARGB(179, 117, 228, 182),
                      child: const Icon(
                        Icons.add,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
