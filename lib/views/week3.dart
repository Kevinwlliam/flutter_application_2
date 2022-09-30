part of 'pages.dart';

class Week3Page extends StatefulWidget {
  const Week3Page({super.key});

  @override
  State<Week3Page> createState() => _Week3PageState();
}

class _Week3PageState extends State<Week3Page> {
  IconData icon = Icons.favorite_border;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello, Goodbye!"),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.red.shade900, Colors.brown.shade900])),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Flexible(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: new Image.asset(
                    "assets/images/88.png",
                    fit: BoxFit.fitWidth,
                  ),
                )),
            Flexible(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                        Colors.red.shade900,
                        Colors.brown.shade900
                      ])),
                  width: double.infinity,
                  height: double.infinity,
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/j.jfif',
                              width: 100,
                              height: 100,
                              fit: BoxFit.fill,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/n.jfif',
                              width: 100,
                              height: 100,
                              fit: BoxFit.fill,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/r.jfif',
                              width: 100,
                              height: 100,
                              fit: BoxFit.fill,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/warren.jfif',
                              width: 100,
                              height: 100,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
            Flexible(
                flex: 0,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                        Colors.red.shade900,
                        Colors.brown.shade900
                      ])),
                  width: double.infinity,
                  height: 50,
                  child: Center(
                    child: new Text(
                      "88 Rising",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                          fontSize: 28.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                )),
            Flexible(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                        Colors.red.shade900,
                        Colors.brown.shade900
                      ])),
                  height: double.infinity,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: new Text(
                      "88rising (stylized as 88⬆), formerly known as CXSHXNLY, (pronounced cash only), is an American music company that founder Sean Miyashiro describes as a hybrid management, record label, video production, and marketing company."
                      "\n"
                      "\n"
                      "The company has gained popularity as a musical platform and record label primarily for Asian American and Asian artists who release music in the United States, such as Joji, Keith Ape, Rich Brian, and Niki."
                      "\n"
                      "\n"
                      "Miyashiro states 88rising is The Disney of Asian hip-hop. Miyashiro also hopes 88rising can bridge the gap between Asian and American music.[3] The New Yorker writes about 88rising, With artists like Joji, Rich Brian and Higher Brothers, Sean Miyashiro's company is an authority on how to create pop-culture crossovers."
                      "\n"
                      "\n"
                      "Asian rap collective 88rising has quickly become one of the most popular, and groundbreaking, crews in music. says Rolling Stone. A Paper article stated that 88rising provides not only the cultural support, but also the strategic and technical know-how to help emerging Asian artists cross over in an efficient but meaningful way."
                      "\n"
                      "\n"
                      " In 2019, 88rising was awarded Label of the Year by Netease, one of the largest music streaming platforms in China. Headquartered in New York City, the company also has offices in Los Angeles and Shanghai. Outside of its core group, the company has collaborated with many artists, most notably KOHH, CL, DPR Live, Yaeji, Phum Viphurit, Verbal, and Hikaru Utada.",
                      style: new TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                        letterSpacing: 1,
                        wordSpacing: 1,
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              icon = icon == Icons.favorite
                  ? Icons.favorite_border
                  : Icons.favorite;
            });
          },
          tooltip: 'Favorite',
          backgroundColor: Colors.white,
          foregroundColor: Colors.red,
          child: Icon(icon),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
