part of 'widgets.dart';

class CityCard extends StatelessWidget {
  final City city;

  const CityCard(this.city);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        height: 150,
        width: 120,
        color: const Color(0xffF6F7F8),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  city.imageUrl!,
                  height: 102,
                  width: 120,
                  fit: BoxFit.cover,
                ),
                city.isPopular ? Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                      color: purpleColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                      ),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/Icon_star_solid.png',
                        width: 22,
                        height: 22,
                      ),
                    ),
                  ),
                ) : Container(),
              ],
            ),
            const SizedBox(height: 11),
            Text(
              city.name!,
              style: blackTextStyle.copyWith(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
