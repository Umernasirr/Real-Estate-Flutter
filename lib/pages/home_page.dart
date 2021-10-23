import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate/constants/categories.dart';
import 'package:real_estate/theme/colors.dart';
import 'package:real_estate/widgets/category_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final searchController = TextEditingController();
  int selectedCategory = 0;
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 16.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.location_pin,
                              color: primaryColor.withOpacity(0.7)),
                          const SizedBox(
                            width: 4,
                          ),
                          Text("Location"),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text("Karachi, Pakistan",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16)),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: white,
                    ),
                    child: const Icon(
                      Icons.notifications,
                      color: Colors.black38,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  fillColor: white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  hintText: "Search",
                  hintStyle: TextStyle(color: black.withOpacity(0.3)),
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      searchController.clear();
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Category",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: black.withOpacity(0.7)),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(categories.length, (index) {
                    return InkWell(
                      onTap: () {
                        setSelectedCategory(index);
                      },
                      child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4.0),
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          height: 60,
                          decoration: BoxDecoration(
                            color: selectedCategory == index
                                ? primaryColor.withOpacity(0.08)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                categories[index]['icon'],
                                color: selectedCategory == index
                                    ? black.withOpacity(0.7)
                                    : black.withOpacity(0.4),
                                size: 30,
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(categories[index]['name'],
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: selectedCategory == index
                                          ? black.withOpacity(0.7)
                                          : black.withOpacity(0.4)))
                            ],
                          )),
                    );
                  }),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Recommendation",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: black.withOpacity(0.7)),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(5, (index) {
                  return const CategoryItem();
                })),
              ),
            )
          ],
        ),
      ),
    );
  }

  setSelectedCategory(index) {
    setState(() {
      selectedCategory = index;
    });
  }
}
