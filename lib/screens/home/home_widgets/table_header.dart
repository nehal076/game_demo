part of 'home_widgets.dart';

class TableHeader extends StatelessWidget {
  final String title;
  final String? date;
  const TableHeader({
    Key? key,
    required this.title,
    this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: const BoxDecoration(
        color: Color(0xff270132),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title.toUpperCase(),
            style: const TextStyle(
              color: ZeplinColors.light_gold,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ).px8(),
          date != null
              ? Flexible(
                  flex: 2,
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Row(
                      children: [
                        Text(
                          date!,
                          style: const TextStyle(
                            color: Color(0xfff3f3f3),
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : const SizedBox()
        ],
      ).px4(),
    );
  }
}
