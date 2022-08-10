part of 'widgets.dart';

class BottomNavigationItem extends StatelessWidget {

  final String? imageUrl;
  final bool? isActive;

  const BottomNavigationItem({this.imageUrl, this.isActive});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          imageUrl!,
          width: 26,
        ),
        const Spacer(),
        isActive! ? Container( 
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: purpleColor,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(1000),
            ),
          ),
        ) : Container(),
      ],
    );
  }
}
