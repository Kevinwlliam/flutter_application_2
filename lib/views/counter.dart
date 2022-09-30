part of 'pages.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  IconData icon = Icons.favorite_border;
  int angka = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Apps"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              angka.toString(),
              style: TextStyle(fontSize: 42),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        angka = angka + 1;
                      });
                    },
                    child: Text(
                      "+",
                      style: TextStyle(fontSize: 24),
                    )),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        angka = angka - 1;
                      });
                    },
                    child: Text(
                      "-",
                      style: TextStyle(fontSize: 24),
                    )),
                FloatingActionButton(onPressed: () {
                  setState(() {
                    Icons.favorite;
                  });
                })
              ],
            )
          ],
        ),
      ),
    );
  }
}
