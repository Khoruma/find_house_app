part of 'pages.dart';

class HomePages extends StatelessWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(vertical: edge),
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: edge),
            child: Text(
              "Explore Now",
              style: blackTextStyle.copyWith(fontSize: 24),
            ),
          ),
          const SizedBox(height: 2),
          Padding(
            padding: EdgeInsets.only(left: edge),
            child: Text(
              "Mencari kosan yang cozy",
              style: greyTextStyle.copyWith(fontSize: 16),
            ),
          ),
          const SizedBox(height: 30),
          Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                "Popular Cities",
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    ));
  }
}
