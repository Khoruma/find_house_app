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
            //* NOTE: TITLE/HEADER
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
            //* NOTE: POPULAR CITIES
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                "Popular Cities",
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(width: 24),
                  CityCard(
                    City(id: 1, name: 'Jakarta', imageUrl: 'assets/city1.png'),
                  ),
                  const SizedBox(width: 20),
                  CityCard(
                    City(
                        id: 2,
                        name: 'Bandung',
                        imageUrl: 'assets/city2.png',
                        isPopular: true),
                  ),
                  const SizedBox(width: 20),
                  CityCard(
                    City(id: 3, name: 'Surabaya', imageUrl: 'assets/city3.png'),
                  ),
                  const SizedBox(width: 24),
                ],
              ),
            ),
            const SizedBox(height: 30),
            //* NOTE: RECOMMENDED SPACE
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                "Recommended Space",
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SpaceCard(),
          ],
        ),
      ),
    );
  }
}
