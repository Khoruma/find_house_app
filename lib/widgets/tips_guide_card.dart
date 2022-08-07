part of 'widgets.dart';

class TipsGuideCard extends StatelessWidget {


  final Tips tips;

  const TipsGuideCard(this.tips);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 80,
          height: 80,
          child: Image.asset(tips.imageUrl!),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.name!,
              style: blackTextStyle.copyWith(fontSize: 18),
            ),
            const SizedBox(height: 4),
            Text(
              tips.upadate!,
              style: greyTextStyle.copyWith(fontSize: 14),
            )
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_right,
            color: greyColor,
          ),
        ),
      ],
    );
  }
}
