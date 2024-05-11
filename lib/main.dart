import 'package:flutter/material.dart';

void main() {
  runApp(const Movie());
}

class Movie extends StatelessWidget {
  const Movie({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1F2025),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 270,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF25272D),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Search",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFF291F25)),
                      child: const Icon(
                        Icons.filter_list_rounded,
                        color: Color.fromARGB(255, 76, 8, 88),
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.network(
                    "https://qph.cf2.quoracdn.net/main-qimg-69cb78e483fddd27d3acad4d24e0c53c-lq",
                    width: 150,
                    height: 200,
                  ),
                  Image.network(
                    "https://cdn.marvel.com/content/1x/thorloveandthunder_lob_crd_04.jpg",
                    width: 150,
                    height: 200,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.network(
                    "https://13thdimension.com/wp-content/uploads/2018/03/D1nkY7UVAAUs7KN-580x859.jpg",
                    width: 150,
                    height: 200,
                  ),
                  Image.network(
                    "https://beebom.com/wp-content/uploads/2023/08/4ssDuvEDkSArWEdyBl2X5EHvYKU.jpg?w=600",
                    width: 150,
                    height: 200,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.network(
                    "https://m.media-amazon.com/images/M/MV5BMTE0YWFmOTMtYTU2ZS00ZTIxLWE3OTEtYTNiYzBkZjViZThiXkEyXkFqcGdeQXVyODMzMzQ4OTI@._V1_.jpg",
                    width: 150,
                    height: 200,
                  ),
                  Image.network(
                    "https://cdn.marvel.com/content/1x/blackpantherwakandaforever_lob_crd_06.jpg",
                    width: 150,
                    height: 200,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF1F2025),
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined),
            label: 'My List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download),
            label: 'Download',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 0,
        onTap: (int index) {
          switch (index) {
            case 0:
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ExplorePage()),
              );
              break;
            case 2:
              break;
            case 3:
              break;
            case 4:
              break;
          }
        },
      ),
    );
  }
}

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1F2025),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Image.network(
                    'https://static1.colliderimages.com/wordpress/wp-content/uploads/2022/02/marvel-movies-to-watch-before-endgame.jpg',
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Text(
                        'Avengers: Endgame',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(width: 80),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.bookmark_add_sharp,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.star_half,
                          color: Colors.purple,
                        ),
                        const Text(
                          "9.8",
                          style: TextStyle(color: Colors.purple),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.keyboard_arrow_right_outlined,
                              color: Colors.purple,
                            )),
                        const Text(
                          "22",
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(width: 10),
                        const Chip(
                          label: Text("13+"),
                          backgroundColor: Colors.purple,
                        ),
                        const SizedBox(width: 10),
                        const Chip(
                          label: Text("United States"),
                          backgroundColor: Colors.purple,
                        ),
                        const SizedBox(width: 10),
                        const Chip(
                          label: Text("Subtitle"),
                          backgroundColor: Colors.purple,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.purple,
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                              ),
                              Text(
                                'Play',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black,
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.download,
                                color: Colors.white,
                              ),
                              Text(
                                'Download',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Wrap(
                    children: [
                      Text(
                        "Genre: Action, Adventure,Superhero,Romance,Drama...Lorem ipsum dolar sit amet adsjasjasd intereseting and good films",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text("View more", style: TextStyle(color: Colors.purple)),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          _buildItem(
                            imageUrl:
                                "https://tricky-photoshop.com/wp-content/uploads/2017/08/final-1.png",
                            text: "James\nCameron\nDirector",
                          ),
                          _buildItem(
                            imageUrl:
                                "https://kidzartworx.com.au/wp-content/uploads/2017/01/circle-man.png",
                            text: "Sam\nWorthington\nCast",
                          ),
                          _buildItem(
                            imageUrl:
                                "https://www.pngitem.com/pimgs/m/128-1284293_marina-circle-girl-picture-in-circle-png-transparent.png",
                            text: "Zoe\nSoldana\nCast",
                          ),
                          _buildItem(
                            imageUrl:
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZcsVaOflHr9kVRKa_voybME0NUIV0s6Ks8IPWPfwDlDqFB4ZKRE0Pjx1gAUfWVdGzOi4&usqp=CAU",
                            text: "Katrina\nKaif\nCast",
                          ),
                        ],
                      ),
                    ),
                  ),
                  ExpansionTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.person,
                                size: 18, color: Colors.white),
                            const SizedBox(width: 10),
                            const Text(
                              'Trailer',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                      ],
                    ),
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Image.network(
                                  "https://i.ytimg.com/vi/TcMBFSGVi1c/maxresdefault.jpg",
                                  width: 200,
                                  height: 150,
                                ),
                                Text(
                                  "TRAILER\n 1 minute 45 seconds",
                                  style: TextStyle(color: Colors.white),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Watch Trailer",
                                    style: TextStyle(color: Colors.purple),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                            Column(
                              children: [
                                Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeP5icEFf5B1D1Iq2S7tb4xItI0jaQfPL0afjKKi-Lxg&s",
                                  width: 200,
                                  height: 150,
                                ),
                                Text(
                                  "TRAILER 2\n 1 minute 45 seconds",
                                  style: TextStyle(color: Colors.white),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Watch Trailer",
                                    style: TextStyle(color: Colors.purple),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.person,
                                size: 18, color: Colors.white),
                            const SizedBox(width: 10),
                            const Text(
                              'More Like this',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                      ],
                    ),
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Image.network(
                                  "https://i.ytimg.com/vi/TcMBFSGVi1c/maxresdefault.jpg",
                                  width: 200,
                                  height: 150,
                                ),
                                Image.network(
                                  "https://m.media-amazon.com/images/M/MV5BNDYxNjQyMjAtNTdiOS00NGYwLWFmNTAtNThmYjU5ZGI2YTI1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg",
                                  width: 200,
                                  height: 150,
                                ),
                                Image.network(
                                  "https://cdn.britannica.com/60/182360-050-CD8878D6/Avengers-Age-of-Ultron-Joss-Whedon.jpg",
                                  width: 200,
                                  height: 150,
                                ),
                                Image.network(
                                  "https://helios-i.mashable.com/imagery/articles/033kBmLCuB3k8dcc8kpMftI/hero-image.fill.size_1248x702.v1623370357.jpg",
                                  width: 200,
                                  height: 150,
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.person,
                                size: 18, color: Colors.white),
                            const SizedBox(width: 10),
                            const Text(
                              'Coments',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                      ],
                    ),
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "24.6k\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "See all",
                                          style:
                                              TextStyle(color: Colors.purple),
                                        ))
                                  ],
                                ),
                                Image.network(
                                  "https://kidzartworx.com.au/wp-content/uploads/2017/01/circle-man.png",
                                  width: 100,
                                  height: 100,
                                ),
                                Text(
                                  "Joy Baydon",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "This film is very good. Thanks for your comany to create this one.",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildItem({required String imageUrl, required String text}) {
  return Row(
    children: [
      Image.network(
        imageUrl,
        width: 50,
        height: 50,
      ),
      const SizedBox(width: 10),
      Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    ],
  );
}
