part of 'pages.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      bottom: false,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset("assets/splash.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/logo.png"),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  "Find Cozy House\nto Stay and Happy",
                  style: blackTextStyle.copyWith(fontSize: 24),
                ),
                const SizedBox(height: 10),
                Text(
                  "Stop membuang banyak waktu pada tempat yang tidak habitable",
                  style: greyTextStyle.copyWith(fontSize: 16),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  height: 50,
                  width: 210,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePages(),
                          ));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(purpleColor),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                    ),
                    child: Text(
                      "Explore Now",
                      style: whiteTextStyle.copyWith(fontSize: 18),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
