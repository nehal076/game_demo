part of 'home_widgets.dart';

class WinnerTile extends StatelessWidget {
  const WinnerTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: ZeplinColors.white_two,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 100,
            child: Image.asset('assets/images/winner.png').pOnly(right: 10),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Winner Name : ",
                style: TextStyle(
                  color: ZeplinColors.grape,
                  fontStyle: FontStyle.italic,
                  fontSize: 14,
                ),
              ),
              const Text(
                "Sampatha Lagna Verama",
                style: TextStyle(
                  color: ZeplinColors.grape,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.normal,
                  fontSize: 16,
                ),
              ),
              const Text(
                "Motor Car ",
                style: TextStyle(
                  color: ZeplinColors.grape,
                  fontSize: 16,
                ),
              ),
              const Text(
                "Mahajana sampatha",
                style: TextStyle(
                  color: ZeplinColors.grape,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.normal,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 50,
                child: Image.asset('assets/images/lottery5.png'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
