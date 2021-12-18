part of 'home_widgets.dart';

class MediaTile extends StatelessWidget {
  const MediaTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ZeplinColors.light_gold,
      child: Row(
        children: [
          SizedBox(
            height: 150,
            child: Image.asset('assets/images/media.png').p(10),
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'MAHAJANA SAMPATHA',
                  style: TextStyle(
                    color: ZeplinColors.deep_purple_two,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.',
                  style: TextStyle(
                    color: ZeplinColors.deep_purple_two,
                    fontSize: 12,
                    fontFamily: 'SegoeUI',
                  ),
                ),
                PrimaryButton(
                  onPressed: () {},
                  color: ZeplinColors.deep_purple_two,
                  textColor: ZeplinColors.light_gold,
                  text: 'More Videos'.toUpperCase(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
