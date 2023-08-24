// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Theme.dart';
import 'constant.dart';
import 'details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late Animation<double> _animation2;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _animation = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut))
      ..addListener(() {
        setState(() {});
      });

    _animation2 = Tween<double>(begin: -30, end: 0)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward();
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppTheme.isDark ? cDark : cLight,
      body: Stack(
        children: [
          /// ListView
          ListView(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(w / 17, w / 20, 0, w / 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Travel Guide',
                            style: TextStyle(
                              fontSize: 27,
                              color: AppTheme.isDark ? cDarkColor : cLightColor,
                              fontWeight: FontWeight.w700,
                            ),
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              AppTheme.isDark = !AppTheme.isDark;
                            });
                          },
                          icon: AppTheme.isDark
                              ? Icon(
                                  Icons.wb_sunny_outlined,
                                  color: cLight,
                                )
                              : Icon(
                                  Icons.nightlight,
                                  color: cDark,
                                ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Choose your tour from hundreds of tours within the governorates of Egypt !',
                        style: TextStyle(
                          fontSize: 20,
                          color: AppTheme.isDark
                              ? cDarkColor.withOpacity(.7)
                              : cLightColor.withOpacity(.7),
                          fontWeight: FontWeight.w700,
                        ),
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                  ],
                ),
              ),
              homePageCardsGroup(
                Color(0xfff37736),
                "assets/images/alexandria.jpg",
                'Alexandria',
                context,
                DetailsScreen(
                  title: 'Alexandria',
                  place: "Montazah Palace ",
                  text:
                      "is a complex of royal palaces in Egypt located on an area of 370 acres in the Thane Al-Montazah neighborhood east of Alexandria in Egypt. It includes two palaces: the Salamlek Palace, which was built by Khedive Abbas Helmy II in 1892 to be a resting place for him, and the Haramlek Palace, which was built by King Fouad I in 1925 to be the summer residence of the royal family. The complex also includes several other tourist facilities and hotels.",
                  image: "assets/images/alexandria1.jpg",
                  place1: "Bibliotheca Alexandria ",
                  text1:
                      "The ancient Library of Alexandria, known as the Royal Library of Alexandria or the Great Library, is the largest library of its time, and it was built by Ptolemy I. It is said that it was established by Alexander the Great about twenty-three centuries ago It is also said that it was established by Ptolemy II in the early third century in the year (285-247) ,The library was exposed to many The fires were completely destroyed in the year 48 BC. In 2002 it was rebuilt under the name of the New Library of Alexandria.",
                  image1: "assets/images/alexandria2.jpg",
                  place2: "The Citadel of Qaitbay ",
                  text2:
                      "Qaitbay Citadel is located at the end of Pharos Island in the far west of Alexandria. It was built in the place of the ancient lighthouse of Alexandria, which was destroyed in the year 702 AH, following the devastating earthquake that occurred during the reign of Sultan Al-Nasir Muhammad bin Qalawun. Sultan Al-Ashraf Abu Al-Nasr Qaitbay began building this castle in the year 882 AH and finished From its construction in the year 884 AH.",
                  image2: "assets/images/alexandria3.jpg",
                  place3: "The Royal Jewelry Museum",
                  text3:
                      "The Royal Jewelry Museum is a museum that displays the jewelry of the royal families that ruled Egypt, and it is located in the city of Alexandria. The palace was built in 1919 in the Zizinia region, and it is an architectural masterpiece. Its area is 4,185 square meters. It belonged to Princess Fatima Al-Zahra, one of the princesses of the royal family. It was designed according to the style of European buildings in the nineteenth century. From the inside, the palace was decorated with distinctive artistic units.  ",
                  image3: "assets/images/alexandria4.jpg",
                  place4: "El-Mursi Abul Abbas Mosque",
                  text4:
                      "El-Mursi Abul Abbas Mosque, or as the people of Alexandria call it the Mosque of al-Mursi Abu al-Abbas, is one of the oldest and most famous mosques built in Alexandria, Egypt.",
                  image4: "assets/images/alexandria5.jpg",
                ),
                Color(0xffFF6D6D),
                "assets/images/cairo.png",
                'Cairo',
                DetailsScreen(
                  title: 'Cairo',
                  place: " The Egyptian Museum in Cairo",
                  text:
                      "The Egyptian Museum is one of the largest and most famous international museums, located in the heart of the Egyptian capital, Cairo, on the northern side of Tahrir Square. Its establishment dates back to the year 1835 and its location at that time was in Azbekiya Park, where at that time it included a large number of various antiquities.",
                  image: "assets/images/cairo1.jpg",
                  place1: "Khan Al-Khalily",
                  text1:
                      "Khan El Khalili is one of the neighborhoods of Old Cairo. It enjoys a great tourist attraction for visitors to Cairo and Egypt in general. It is characterized by the presence of popular bazaars, shops and restaurants. It is also characterized by the large number of tourists and the familiarity of its residents with them.",
                  image1: "assets/images/cairo2.jpg",
                  place2: "Salah al-den al-ayobi's castle ",
                  text2:
                      "The Citadel of Salah al-Din al-Ayyubi in Cairo is considered one of the most luxurious military castles that were built in the Middle Ages. The castle and the city are in a state of siege, and it will become the last stronghold to sit in in the event that the city falls into the hands of the enemy.",
                  image2: "assets/images/cairo3.jpg",
                  place3: "Cairo Tower ",
                  text3:
                      "The Cairo Tower (sometimes called the “Al Jazeera Tower”) is a tower located in the Egyptian capital, Cairo. It was built between 1956 and 1961 from reinforced concrete on the design of the Egyptian lotus flower. It reached a height of 187 meters and is about 43 meters higher than the Great Pyramid of Giza. At the top of the Cairo Tower, there is a tourist restaurant on a revolving platform that rotates with the restaurant's patrons so they can see the sights of Cairo from all sides.",
                  image3: "assets/images/cairo4.jpg",
                  place4: "Abdeen Palace",
                  text4:
                      "Abdeen Palace is one of the most famous historical palaces in Egypt. It witnessed many events from the royal era until the establishment of modern Cairo. Abdeen Palace is a rare historical masterpiece in the form that transformed it into a museum that reflects the luxury with which the palace was built and the important events it witnessed since the royal era until the July 1952 revolution.",
                  image4: "assets/images/cairo5.jpg",
                ),
              ),
              homePageCardsGroup(
                  Colors.lightGreen,
                  "assets/images/loxurjpg.png",
                  'Luxor',
                  context,
                  DetailsScreen(
                    title: 'Luxor',
                    place: "Karnak Temple  ",
                    text:
                        "Karnak or the Karnak Temple Complex, which is better known as the Karnak Temple, is a group of temples, buildings and columns, where expansion and construction operations continued since the Pharaonic era, specifically the kings of the Middle Kingdom until the Roman era in Luxor in Egypt on the eastern shore. The temple was built for the divine trinity, Amun (Amun Ra in modern times), his wife, the goddess Mut, and their son, the god Khonsu; Each of them has a temple belonging to the Karnak temple complex. Sometimes tourists and non-specialists mean only the Karnak temple, the temple belonging to Amun i Amon Ra.",
                    image: "assets/images/Luxor1.jpg",
                    place1: "Luxor temple ",
                    text1:
                        "Luxor Temple is a large complex of ancient Egyptian temples located on the eastern bank of the Nile River in the city of Luxor today known as (ancient Thebes). It was founded in 1400 BC. [The Luxor Temple was built for the worship of Amun Ra, his wife Mut, and their son Khonsu; They are the deities, which are also called the Tayyibi Trinity (Theban Trinity).",
                    image1: "assets/images/Luxor2.jpg",
                    place2: "Valley of the Kings  ",
                    text2:
                        "is a valley in Egypt that was used over the course of 500 years during the period between the sixteenth and eleventh centuries BC to construct tombs for the pharaohs and nobles of the modern state that extended during the eighteenth and even the twentieth dynasties in Egypt The ancient valley is located on the west bank of the Nile, facing Thebes (currently Luxor), in the heart of the ancient funerary city of Thebes. The Valley of the Kings is divided into two valleys; The eastern valley (where most of the royal tombs are located) and the western valley.",
                    image2: "assets/images/Luxor3.jpg",
                    place3: "Abu Simbel Temple ",
                    text3:
                        "Abu Simbel is an archaeological site located on the western bank of Lake Nasser, about 290 km southwest of Aswan. It is one of the Nubian Antiquities sites included in the UNESCO list of World Heritage Sites.[2] Which starts from the direction of flow of the river from Abu Simbel to Philae (near Aswan).",
                    image3: "assets/images/Luxor4.jpg",
                    place4: "	The Temple of Hatshepsut ",
                    text4:
                        "The Temple of Hatshepsut or the mortuary temple of Hatshepsut is a temple from the Eighteenth Dynasty of Egypt, and the best remaining temples were built about 3,500 years ago in Deir el-Bahari, Egypt. It was built by Queen Hatshepsut on the west bank of the Nile opposite Thebes (the capital of ancient Egypt and the seat of worship of Amun) (Luxor today). The Temple of Hatshepsut is distinguished by its unique architectural design, compared to the Egyptian temples that were built on the eastern bank of the Nile in Thebes.",
                    image4: "assets/images/Luxor5.jpg",
                  ),
                  Color(0xffffa700),
                  "assets/images/sharmshekh.png",
                  'Sharm El-Sheikh',
                  DetailsScreen(
                    title: "Sharm El-Sheikh",
                    place: "Ne'ema bay   ",
                    text:
                        "Naama Bay is a natural bay and a tourist area in Sharm El-Sheikh (South Sinai Governorate). The bay is located at the confluence of the continents of Asia and Africa. The area is considered the main center for attracting tourists in Sharm El-Sheikh, as it has all the necessary complexes, markets and restaurants of various kinds, in addition to A lot of nightclubs in order to attract foreign tourists.",
                    image: "assets/images/Sharm El-Shaikh1.jpg",
                    place1: "	Ras Mohammed Reserve",
                    text1:
                        "Ras Mohammed is an Egyptian nature reserve in South Sinai, 12 km from Sharm el-Sheikh, adjacent to the Gulf of Aqaba to the east and the Gulf of Suez to the west.",
                    image1: "assets/images/Sharm El-Shaikh2.jpg",
                    place2: "St. Catherine's Monastery ",
                    text2:
                        "It is an Eastern Orthodox monastery located in the Sinai Peninsula, at the mouth of a strait at the foot of Mount Sinai below Mount Catherine, the highest mountain in Egypt, near the city of Saint Catherine, Egypt. The monastery was named after Catherine of Alexandria",
                    image2: "assets/images/Sharm El-Shaikh3.jpg",
                    place3: "	Dahab",
                    text3:
                        "Dahab is an Egyptian tourist city belonging to the South Sinai Governorate and is located on the Gulf of Aqaba, about 100 km from the city of Sharm el-Sheikh and 87 km from the city of Nuweiba. It was named after the color of its golden sands. The city is divided into two parts, the first is located in the south and is called the village of Al-Assala and is famous for the simple Bedouin life, and the second section is located in the north and is considered the soul and pulse of the city because it includes commercial markets and recreational places, and the city is famous for its pure virgin beaches and natural diving sites rich in coral reefs",
                    image3: "assets/images/Sharm El-Shaikh4.jpg",
                    place4: "",
                    text4: "",
                    image4: "",
                  )),
              homePageCardsGroup(
                  Color(0xff63ace5),
                  "assets/images/borsaied.png",
                  'Port Said',
                  context,
                  DetailsScreen(
                    title: 'Port Said',
                    place: " Port Said Military Museum",
                    text:
                        "The Port Said Military Museum is one of the museums in the city of Port Said. The Port Said Museum was established in 1964 to commemorate the 1956 tripartite aggression against the city of Port Said, in order to be a witness throughout history to the valiant heroism of the people of Port Said in defending the land.[1] The museum was established on an area of approximately 7,000 square meters in its current location on July 23 Street, in front of Mubarak Military Hospital, in 1964.",
                    image: "assets/images/PortSaid1.jpg",
                    place1: " Ferial Garden",
                    text1:
                        "Ferial Park is located in Port Said, Egypt. It was named after Princess Ferial, daughter of King Farouk.[1] The park is a tourist attraction in the city. The park includes green spaces, flowers, plants and trees in aesthetic shapes, a red mill that serves as a center for surveillance cameras, as well as a wooden bridge and a number of murals that tell excerpts from the history of Port Said, in addition to a theatre, an Andalusian-style mosque, and private seating areas for adults. Age, decorative columns",
                    image1: "assets/images/PortSaid2.jpg",
                    place2: "	Salt Mountains",
                    text2:
                        "The Salt Mountains in the city of Port Fouad are a large group of mountains, characterized by their bright white color, and take large areas similar to the snow mountains in the Arctic",
                    image2: "assets/images/PortSaid3.jpg",
                    place3: "",
                    text3: "",
                    image3: "",
                    place4: "",
                    text4: "",
                    image4: "",
                  ),
                  Color(0xfff37736),
                  "assets/images/fayoum.png",
                  'Fayoum',
                  DetailsScreen(
                    title: 'Fayoum',
                    place: " Hawara pyramid ",
                    text:
                        "The Hawara pyramid is one of the pyramids of Egypt.[1] It was built by Pharaoh Amenemhat III of Egypt, one of the kings of the 12th dynasty, in the village of Hawara, 9 km southeast of Fayoum. It is made of mud bricks covered with limestone. The original height of the pyramid was 58 meters and the length of each side was 105 meters, and now only 20 meters of its height remain.",
                    image: "assets/images/Fayoum1.jpg",
                    place1: "	Wadi El Rayan Reserve",
                    text1:
                        "Wadi El Rayan Reserve is located in the southwestern part of Fayoum Governorate. Wadi El Rayan consists of the upper lake, the lower lake, the waterfalls area that connects the two lakes, the Uyun al Rayyan area south of the lower lake, the Jabal al Rayan area, which is the area surrounding the eyes, and the Mudawara mountain area, which is located near Lower lake",
                    image1: "assets/images/Fayoum2.jpg",
                    place2: "	Qarun Palace",
                    text2:
                        "Qasr Qarun, an archaeological site, is a temple in an ancient city located near Lake Qarun in Fayoum Governorate. Qasr Qarun Temple, as mentioned in archaeological sources, is a temple from the Greco-Roman era and was dedicated to the worship of the god Sobek and Dionysius, the god of wine and love among the Romans. They called it Qasr Qarun because it is located near Lake Qarun, which is adjacent to it. Which was named by this name due to the large number of pods and bays in it, so it was called at the beginning Lake (the pods).",
                    image2: "assets/images/Fayoum3.jpg",
                    place3: "",
                    text3: "",
                    image3: "",
                    place4: "",
                    text4: "",
                    image4: "",
                  )),
              homePageCardsGroup(
                  Color(0xffFF6D6D),
                  "assets/images/herghada.png",
                  'Marsa Matrouh',
                  context,
                  DetailsScreen(
                    title: 'Marsa Matrouh',
                    place: " Agiba Beach  ",
                    text:
                        "This beach is located in front of a giant rock, under which people walk, enjoying this wonderful scene that is distinguished among the beaches of the world. water.",
                    image: "assets/images/Marsa Matrouh1.jpg",
                    place1: " Rommel Museum ",
                    text1:
                        "The museum is a cave that Nazi leader Erwin Rommel took as his headquarters during the Nazis' plan to control Egypt and the Suez Canal.",
                    image1: "assets/images/Marsa Matrouh2.jpg",
                    place2: " El Alamein Military Museum  ",
                    text2:
                        "The El Alamein Military Museum is a museum that commemorates the decisive battles of El Alamein that took place during World War II on and around the Egyptian land of El Alamein.",
                    image2: "assets/images/Marsa Matrouh3.jpg",
                    place3: "",
                    text3: "",
                    image3: "",
                    place4: "",
                    text4: "",
                    image4: "",
                  ),
                  Colors.lightGreen,
                  "assets/images/ismalia.png",
                  'Ismailia',
                  DetailsScreen(
                    title: 'Ismailia',
                    place: " Crocodile Lake",
                    text:
                        "Lake Timsah is one of four salt water lakes that pass through the Suez Canal in northeastern Egypt (the lakes, in order from north to south, are: Lake Manzala, Lake Timsah, Greater Bitter Lake and Lesser Bitter Lake. Most of the lake is shallow, with a depth of no more than one meter, and an area of about 14 km2",
                    image: "assets/images/Ismailia1.jpg",
                    place1: "	Al-Fardan Bridge",
                    text1:
                        "Al-Fardan Bridge is a movable railway bridge that passes over the Suez Canal near Ismailia in Egypt. It is the longest movable bridge in the world, with a length of 340 meters.",
                    image1: "assets/images/Ismaila2.jpg",
                    place2: " Ismailia Antiquities Museum",
                    text2:
                        "The Ismailia Antiquities Museum is a museum in Ismailia, Egypt. The museum was built by the engineers working for the International Maritime Navigation Company (currently the Suez Canal Authority) in 1911. The museum was opened for visitors in 1913. The museum includes a collection of artifacts from the different eras of Egypt’s history, beginning with the Pharaonic era until the era of the governor, Muhammad Ali.",
                    image2: "assets/images/Ismailia3.jpg",
                    place3: "",
                    text3: "",
                    image3: "",
                    place4: "",
                    text4: "",
                    image4: "",
                  )),
            ],
          ),

          /// SETTING ICON
          Padding(
            padding: EdgeInsets.fromLTRB(0, w / 9.5, w / 15, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [],
            ),
          ),

          // Blur the Status bar
        ],
      ),
    );
  }

  Widget homePageCardsGroup(
      Color color,
      String image,
      String title,
      BuildContext context,
      Widget route,
      Color color2,
      String image2,
      String title2,
      Widget route2) {
    double w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(bottom: w / 17),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          homePageCard(color, image, title, context, route),
          homePageCard(color2, image2, title2, context, route2),
        ],
      ),
    );
  }

  Widget homePageCard(Color color, String image, String title,
      BuildContext context, Widget route) {
    double w = MediaQuery.of(context).size.width;
    return Opacity(
      opacity: _animation.value,
      child: Transform.translate(
        offset: Offset(0, _animation2.value),
        child: InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () {
            HapticFeedback.lightImpact();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return route;
                },
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.all(15),
            height: w / 2,
            width: w / 2.4,
            decoration: BoxDecoration(
              color: AppTheme.isDark ? cDark2 : cLight,
              boxShadow: [
                BoxShadow(
                  color: AppTheme.isDark
                      ? cDark2.withOpacity(.4)
                      : cDark.withOpacity(.5),
                  spreadRadius: 3,
                  blurRadius: 7,
                  offset: Offset(5, 3),
                ),
              ],
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                SizedBox(
                    height: w / 4, width: w / 4, child: Image.asset(image)),
                Text(
                  title,
                  maxLines: 4,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 18,
                    color: AppTheme.isDark ? cDarkColor : cLightColor,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
