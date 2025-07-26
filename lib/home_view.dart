import 'package:flutter/material.dart';
import '../features/category_chip.dart';
import '../features/product_card.dart';
import '../features/search_bar.dart';
import '../../../resources/strings.dart';
import '../../../resources/colors.dart';
import '../../../utils/constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  IconData _getIconForCategory(String category) {
    switch (category) {
      case 'Sofas':
        return Icons.weekend;
      case 'Wardrobe':
        return Icons.water_drop;
      case 'Desk':
        return Icons.desktop_mac;
      case 'Dresser':
        return Icons.dry_cleaning;
      default:
        return Icons.category;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: AppColors.yellowHeader,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: ClipOval(
                    child: Image.asset(
                      'lib/images/background7.png',
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  AppStrings.helloPino,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  AppStrings.whatToBuy,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.black87,
                        fontSize: 16,
                      ),
                ),
                const SizedBox(height: 16),
                const SearchBarWidget(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppConstants.defaultPadding,
              vertical: 16,
            ),
            child: GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 4,
              childAspectRatio: 0.8,
              mainAxisSpacing: 8,
              children: List.generate(AppStrings.categories.length, (index) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      _getIconForCategory(AppStrings.categories[index]),
                      size: 28,
                      color: Colors.black,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      AppStrings.categories[index],
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppConstants.defaultPadding),
            child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                ProductCard(
                  title: AppStrings.product1Title,
                  description: AppStrings.product1Desc,
                  price: AppStrings.product1Price,
                  imagePath: 'lib/images/LivingRoom.jpg',
                ),
                SizedBox(height: 16),
                ProductCard(
                  title: AppStrings.product2Title,
                  description: AppStrings.product2Desc,
                  price: AppStrings.product1Price,
                  imagePath: 'lib/images/pic2.jpg',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
