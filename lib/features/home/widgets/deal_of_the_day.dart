import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DealOfTheDay extends StatefulWidget {
  const DealOfTheDay({super.key});

  @override
  State<DealOfTheDay> createState() => _DealOfTheDayState();
}

class _DealOfTheDayState extends State<DealOfTheDay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 10, top: 15),
          child: const Text(
            'Deal Of The Day!',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        Image.network(
          'https://static.hungphatlaptop.com/wp-content/uploads/2023/07/Lenovo-ThinkPad-X1-Carbon-Gen-11-2023-H3.jpeg.webp',
          height: 235,
          fit: BoxFit.fitHeight,
        ),
        Container(
          padding: const EdgeInsets.only(left: 15, top: 5, right: 40),
          alignment: Alignment.topLeft,
          child: const Text(
            '\$2000',
            style: const TextStyle(fontSize: 18),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 15, top: 5, right: 40),
          child: Text(
            'Lenovo Thinkpad X1 Carbon Gen 11',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                'https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/studio-display-og-202203?wid=600&hei=315&fmt=jpeg&qlt=95&.v=1645125507093',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://m.media-amazon.com/images/I/61DmMRB6wkL._AC_UF894,1000_QL80_.jpg',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/ipad-pro-finish-select-202212-12-9inch-space-gray-wificell_FMT_WHH?wid=1280&hei=720&fmt=jpeg&qlt=90&.v=1670865915535',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://product.hstatic.net/200000465219/product/xdj-rx3_prm_angle_210830_pc_3c7a1720e9ad459c9acbe65b7290bc23_master.png',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://www.electroban.com.py/storage/sku/samsung-s23-ultra-68-256gb-12gb-ram-octa-core-galaxy-s23-ultra-1-1-1682454075.jpeg.webp',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            vertical: 15,
          ).copyWith(
            left: 15,
          ),
          alignment: Alignment.topLeft,
          child: Text(
            'See all deals',
            style: TextStyle(
              color: Colors.cyan[800],
            ),
          ),
        )
      ],
    );
  }
}
