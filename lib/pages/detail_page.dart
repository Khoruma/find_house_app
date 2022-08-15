part of 'pages.dart';

class DetailPage extends StatelessWidget {
  final Space space;

  DetailPage(this.space);

  @override
  Widget build(BuildContext context) {
    final Uri toLaunch = Uri.parse(space.mapUrl!);
    Future<void>? launched;

    Future<void> makePhoneCall(String phoneNumber) async {
      final Uri launchUri = Uri(
        scheme: 'tel',
        path: phoneNumber,
      );
      await launchUrl(launchUri);
    }

    Future<void> _launchInBrowser(Uri url) async {
      if (!await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      )) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ErrorPage()));
      }
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.network(
              space.imageUrl!,
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                const SizedBox(height: 328),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      //* NOTE: TITLE
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  space.name!,
                                  style: blackTextStyle.copyWith(
                                    fontSize: 22,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text.rich(
                                  TextSpan(
                                    text: "\$ ${space.price}",
                                    style:
                                        purpleTextStyle.copyWith(fontSize: 16),
                                    children: [
                                      TextSpan(
                                        text: " / month",
                                        style: greyTextStyle.copyWith(
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [1, 2, 3, 4, 5].map((index) {
                                return Container(
                                  margin:const EdgeInsets.only(left: 2),
                                  child: RatingItem(
                                    index: index,
                                    rating: space.rating,
                                  ),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      //* NOTE: MAIN FACILITES
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          "Main Facilities",
                          style: blackTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FacilityItem(
                              name: "Kithcen",
                              imageUrl: 'assets/icon_kitchen.png',
                              total: space.numberOfKitchens,
                            ),
                            FacilityItem(
                              name: "Bedroom",
                              imageUrl: 'assets/icon_bedroom.png',
                              total: space.numberOfBedrooms,
                            ),
                            FacilityItem(
                              name: "Big Lemari",
                              imageUrl: 'assets/icon_almari.png',
                              total: space.numberOfCupboards,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      //* NOTE: PHOTO
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          "Photos",
                          style: blackTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        height: 88,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: space.photos!.map((item) {
                            return Container(
                              margin: const EdgeInsets.only(
                                left: 24,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.network(
                                  item,
                                  height: 88,
                                  width: 110,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      const SizedBox(height: 30),
                      //* NOTE: LOCATION
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          "Location",
                          style: blackTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      const SizedBox(height: 6),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${space.address} \n ${space.city}",
                              style: greyTextStyle.copyWith(fontSize: 14),
                            ),
                            InkWell(
                              onTap: () {
                                launched = _launchInBrowser(toLaunch);
                              },
                              child: Image.asset(
                                'assets/btn_location.png',
                                width: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: edge),
                        height: 50,
                        width: MediaQuery.of(context).size.width - (2 * edge),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(purpleColor),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17),
                              ),
                            ),
                          ),
                          onPressed: () {
                            launched = makePhoneCall(space.phone!);
                          },
                          child: Text(
                            'Book Now',
                            style: whiteTextStyle.copyWith(fontSize: 18),
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: edge,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Image.asset(
                      'assets/btn_back.png',
                      width: 40,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Image.asset(
                    'assets/btn_wishlist.png',
                    width: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
