part of 'game_widgets.dart';

class DrawDataTable extends StatelessWidget {
  final List<Map<String, String>> data;

  const DrawDataTable({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        SizedBox(
          width: context.screenWidth / 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (var i in data)
                for (var heading in i.keys)
                  Text(
                    heading,
                    style: const TextStyle(
                      color: ZeplinColors.brownish_grey_three,
                      fontWeight: FontWeight.w500,
                    ),
                  ).py4(),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var i in data)
              for (var values in i.values)
                Text(
                  values,
                  style: const TextStyle(
                    color: ZeplinColors.dark_violet,
                    fontWeight: FontWeight.w600,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ).py4(),
          ],
        ),
      ],
    );
  }
}
