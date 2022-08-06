part of 'widgets.dart';

class SpaceCard extends StatelessWidget {
  const SpaceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Container(
            height: 130,
            width: 110,
            child: Stack(
              children: [
                Image.asset(
                  'assets/recomended3.png',
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                      color: purpleColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/Icon_star_solid.png',
                          width: 22,
                          height: 22,
                        ),
                        Text(
                          '4/5',
                          style: whiteTextStyle.copyWith(fontSize: 13),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
