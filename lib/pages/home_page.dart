part of 'pages.dart';

class HomePages extends StatelessWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(height: edge),
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
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Text(
                "Recommended Space",
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SpaceCard(
                    Space(
                      id: 1,
                      imageUrl: 'assets/recomended1.png',
                      name: "Kuretakeso Hott",
                      price: 52,
                      city: "Bandung",
                      country: "Germany",
                      rating: 4,
                    ),
                  ),
                  const SizedBox(height: 30),
                  SpaceCard(
                    Space(
                      id: 2,
                      imageUrl: 'assets/recomended2.png',
                      name: "Roemah Nenek",
                      price: 11,
                      city: "Bogor",
                      country: "Seattle",
                      rating: 5,
                    ),
                  ),
                  const SizedBox(height: 30),
                  SpaceCard(
                    Space(
                      id: 3,
                      imageUrl: 'assets/recomended3.png',
                      name: "Darrling How",
                      price: 20,
                      city: "Jakarta",
                      country: "Indonesia",
                      rating: 3,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            //* NOTE: TIPS AND GUIDANCE
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Text(
                "Recommended Space",
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                children: [
                  TipsGuideCard(
                    Tips(
                      id: 1,
                      name: "City Guidelines",
                      imageUrl: 'assets/icon_tips1.png',
                      upadate: "Updated 20 Apr",
                    ),
                  ),
                  const SizedBox(height: 20),
                  TipsGuideCard(
                    Tips(
                      id: 2,
                      name: "Jakarta Fairship",
                      imageUrl: 'assets/icon_tips2.png',
                      upadate: "Updated 11 Dec",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 75 + edge),
          ],
        ),
      ),
      //* NOTE: NAVIGATION BAR
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(horizontal: edge),
        decoration: BoxDecoration(
          color: const Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            BottomNavigationItem(
              imageUrl: "assets/Icon_home.png",
              isActive: true,
            ),
            BottomNavigationItem(
              imageUrl: "assets/Icon_mail.png",
              isActive: false,
            ),
            BottomNavigationItem(
              imageUrl: "assets/Icon_card.png",
              isActive: false,
            ),
            BottomNavigationItem(
              imageUrl: "assets/Icon_love.png",
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
