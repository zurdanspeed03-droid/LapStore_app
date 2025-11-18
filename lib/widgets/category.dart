import 'package:flutter/material.dart';
import 'package:lapstore_app/models/product.dart';
import 'package:lapstore_app/pages/product_detail.dart';
import 'package:lapstore_app/widgets/product_card.dart';

class CategorySection extends StatefulWidget {
  final List<Map<String, dynamic>> laptopCategories;

  const CategorySection({super.key, required this.laptopCategories});

  @override
  State<CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  int? _hoveredIndex;
  int? _tappedIndex;
  int selectedIndex = 0;

  final Map<String, List<Map<String, dynamic>>> laptopProducts = {
    'Laptop Gaming': [
      {
        'name': 'ROG Flow Z13 GZ302',
        'price': 'Rp 35.999.000',
        'image': 'assets/images/produk_gaming.jpg',
        'spec':
            'CPU: AMD Ryzen AI MAX+ 395\nRAM: 32GB / 64GB LPDDR5X\nGPU: Radeon 8060S\nStorage: 1TB NVMe SSD\nDisplay: 13.4" 2.5K 180Hz\nWi-Fi: Wi-Fi 7 + BT 5.4',
        'description':
            'ROG Flow Z13 GZ302 adalah laptop gaming 2-in-1 ultra-portable dengan prosesor AMD Ryzen AI MAX+ 395 serta GPU Radeon 8060S. Dilengkapi layar 13.4” 2.5K 180Hz dan RAM hingga 64GB, perangkat ini sangat cocok untuk gaming modern, pekerjaan kreatif, dan aplikasi AI.',
      },
      {
        'name': 'Predator Triton 900',
        'price': 'Rp 69.999.000',
        'image': 'assets/images/produk_gaming2.jpg',
        'spec':
            'CPU: Intel Core i7-9750H\nRAM: 32GB DDR4\nGPU: NVIDIA GeForce RTX 2080 8GB\nStorage: 1TB NVMe SSD (RAID 0)\nDisplay: 17.3" 4K IPS Touch (Convertible)',
        'description':
            'Predator Triton 900 adalah laptop gaming flagship dengan desain convertible dan layar 4K IPS Touch. Mengusung RTX 2080 dan RAM 32GB, laptop ini cocok untuk gaming AAA, editing profesional, hingga rendering berat.',
      },
      {
        'name': 'Nitro 5 (AN515-58-55E6)',
        'price': 'Rp 12.999.000',
        'image': 'assets/images/produk_gaming3.jpg',
        'spec':
            'CPU: Intel Core i5-12500H\nRAM: 16GB DDR4\nGPU: NVIDIA GeForce RTX 4060 8GB\nStorage: 512GB NVMe SSD\nDisplay: 15.6" FHD 144Hz',
        'description':
            'Acer Nitro 5 AN515-58 menawarkan performa gaming terbaik di kelasnya dengan Intel Core i5-12500H dan RTX 4060. Layar 144Hz memberikan pengalaman gaming lebih halus dan responsif.',
      },
      {
        'name': 'ROG Zephyrus G16 (GA605)',
        'price': 'Rp 20.999.000',
        'image': 'assets/images/produk_gaming4.jpg',
        'spec':
            'CPU: Intel Core i7-13620H\nRAM: 16GB DDR5\nGPU: NVIDIA GeForce RTX 4060 8GB\nStorage: 1TB NVMe SSD\nDisplay: 16" FHD+ 165Hz',
        'description':
            'ROG Zephyrus G16 adalah laptop gaming tipis berperforma tinggi. Dibekali Intel Core i7-13620H dan RTX 4060, laptop ini sangat cocok untuk gamer kompetitif, editor video, dan konten kreator.',
      },
    ],
    'Laptop Kantor': [
      {
        'name': 'HP Spectre x360 14',
        'price': 'Rp 20.999.000',
        'image': 'assets/images/produk_Kantor.jpg',
        'spec':
            'CPU: Intel Core i7-1255U\nRAM: 16GB LPDDR4x\nGPU: Intel Iris Xe Graphics\nStorage: 512GB NVMe SSD\nDisplay: 13.5" 3K2K OLED Touch',
        'description':
            'HP Spectre x360 14 adalah laptop premium 2-in-1 yang ideal untuk pekerjaan kantor, multitasking, meeting online, dan produktivitas. Layar OLED 3K2K memberikan kualitas visual terbaik untuk penggunaan harian.',
      },
    ],
    'Laptop Desain': [
      {
        'name': 'Apple MacBook Pro 14 M3',
        'price': 'Rp 28.499.000',
        'image': 'assets/images/produk_desain.webp',
        'spec':
            'Chip: Apple M3\nRAM: 8GB / 16GB Unified Memory\nGPU: Integrated 10-core GPU\nStorage: 512GB / 1TB SSD\nDisplay: 14" Liquid Retina XDR',
        'description':
            'MacBook Pro 14 M3 adalah laptop terbaik untuk desainer. Layar XDR dan performa chip M3 sangat optimal untuk editing foto/video dan pekerjaan kreatif profesional.',
      },
      {
        'name': 'ASUS ZenBook Pro Duo',
        'price': 'Rp 35.999.000',
        'image': 'assets/images/produk_desain2.webp',
        'spec':
            'CPU: Intel Core i7-12700H\nRAM: 16GB / 32GB DDR5\nGPU: NVIDIA GeForce RTX 3060\nStorage: 1TB NVMe SSD\nDisplay: 15.6" 4K OLED + 14" ScreenPad Plus',
        'description':
            'ZenBook Pro Duo menawarkan dua layar untuk produktivitas maksimal. Sempurna untuk editing video, desain grafis, multitasking, dan workflow kreator profesional.',
      },
      {
        'name': 'Dell XPS 15 (2023)',
        'price': 'Rp 29.999.000',
        'image': 'assets/images/produk_desain3.webp',
        'spec':
            'CPU: Intel Core i7-13700H\nRAM: 16GB / 32GB DDR5\nGPU: NVIDIA RTX 4050 / 4060\nStorage: 512GB / 1TB SSD\nDisplay: 15.6" 3.5K OLED',
        'description':
            'Dell XPS 15 adalah laptop desainer profesional dengan layar OLED 3.5K yang sangat akurat. Cocok untuk editing foto/video dan desain grafis tingkat tinggi.',
      },
    ],
    'Laptop Bisnis': [
      {
        'name': 'Apple MacBook Air M1',
        'price': 'Rp 12.499.000',
        'image': 'assets/images/produk_bisnis.jpg',
        'spec':
            'Chip: Apple M1\nRAM: 8GB / 16GB\nGPU: Integrated 7-core / 8-core GPU\nStorage: 256GB / 512GB SSD\nDisplay: 13.3" Retina',
        'description':
            'MacBook Air M1 adalah laptop bisnis terbaik dengan daya tahan baterai panjang, performa kencang, dan desain yang sangat ringan. Cocok untuk kerja mobile dan produktivitas harian.',
      },
      {
        'name': 'ASUS ExpertBook B9400',
        'price': 'Rp 21.999.000',
        'image': 'assets/images/produk_bisnis1.jpg',
        'spec':
            'CPU: Intel Core i7-1165G7\nRAM: 16GB LPDDR4x\nGPU: Intel Iris Xe\nStorage: 512GB / 1TB NVMe SSD\nDisplay: 14" FHD (Anti-Glare)',
        'description':
            'ASUS ExpertBook B9400 adalah laptop bisnis ultra ringan dengan daya tahan baterai ekstra panjang. Cocok untuk profesional, pekerjaan lapangan, dan mobilitas tinggi.',
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    final activeCategory = widget.laptopCategories[selectedIndex];
    final products = laptopProducts[activeCategory['label']] ?? [];

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // --- CATEGORY (tidak diubah) ---
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 30,
              runSpacing: 30,
              children: List.generate(widget.laptopCategories.length, (index) {
                final item = widget.laptopCategories[index];
                final bool isHovered = _hoveredIndex == index;
                final bool isTapped = _tappedIndex == index;
                final bool isSelected = selectedIndex == index;
                return MouseRegion(
                  onEnter: (_) => setState(() => _hoveredIndex = index),
                  onExit: (_) => setState(() => _hoveredIndex = null),
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () => setState(() => selectedIndex = index),
                    onTapDown: (_) => setState(() => _tappedIndex = index),
                    onTapUp: (_) async {
                      await Future.delayed(const Duration(milliseconds: 150));
                      setState(() => _tappedIndex = null);
                    },
                    onTapCancel: () => setState(() => _tappedIndex = null),
                    child: AnimatedScale(
                      scale: isTapped ? 0.93 : (isHovered ? 1.08 : 1.0),
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeOutBack,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeOutCubic,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: isHovered || isSelected
                              ? RadialGradient(
                                  colors: [
                                    item['color'].withOpacity(0.4),
                                    Colors.transparent,
                                  ],
                                  radius: 1.0,
                                  center: Alignment.center,
                                )
                              : null,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 250),
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: item['color'].withOpacity(0.15),
                                image: DecorationImage(
                                  image: AssetImage(item['image']),
                                  fit: BoxFit.cover,
                                ),
                                border: Border.all(
                                  color: isHovered || isSelected
                                      ? item['color'].withOpacity(0.9)
                                      : Colors.white,
                                  width: 2,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              item['label'],
                              style: TextStyle(
                                color: isHovered || isSelected
                                    ? Colors.white
                                    : Colors.white70,
                                fontSize: 10,
                                fontWeight: isHovered || isSelected
                                    ? FontWeight.bold
                                    : FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),

            const SizedBox(height: 40),

            // --- PRODUK: GANTI WRAP DENGAN GRIDVIEW RESPONSIF ---
            LayoutBuilder(builder: (context, constraints) {
              // responsive columns
              int columns = 1;
              double maxWidth = constraints.maxWidth;
              if (maxWidth >= 1200) {
                columns = 4;
              } else if (maxWidth >= 900) {
                columns = 3;
              } else if (maxWidth >= 600) {
                columns = 2;
              } else {
                columns = 1;
              }

              return GridView.count(
                crossAxisCount: columns,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 0.78,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: products.map((p) {
                  // buat objek Product sesuai model kamu
                  final prod = Product(
                    name: p['name'],
                    image: p['image'],
                    price: p['price'],
                    spec: p['spec'],
                    description: p['description'],
                  );

                  return MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: ProductCard(
                      product: prod,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetailPage(product: prod),
                          ),
                        );
                      },
                    ),
                  );
                }).toList(),
              );
            }),
          ],
        ),
      ),
    );
  }
}
