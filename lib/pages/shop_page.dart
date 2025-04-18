import 'package:flutter/material.dart';
import 'package:sneaker_app/components/shoe_tile.dart';
import 'package:sneaker_app/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // search bar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Search', style: TextStyle(color: Colors.grey)),
              Icon(Icons.search, color: Colors.grey),
            ],
          ),
        ),

        // message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: (25.0)),
          child: Text(
            'everyone flies... some fly longer than others',
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),

        // hot picks
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Hot Picks🔥',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Text(
                'See all',
                style: TextStyle(
                  color: Colors.blue[800],
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 24),

              Expanded(
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    // create a shoe
                    Shoe shoe = Shoe(
                      name: 'Air Jordan',
                      price: '450',
                      description:
                          'very cool shoe but too pricey and too many people use it',
                      imagePath: 'lib/assets/products/product-1.png',
                    );
                    return ShoeTile(shoe: shoe);
                  },
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(top: 25.0, left: 25, right: 25),
                child: Divider(color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
