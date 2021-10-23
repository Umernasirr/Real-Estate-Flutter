import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate/theme/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 20.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.location_pin),
                        SizedBox(
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
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                fillColor: white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                hintText: "Search",
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    print("Search Cleared");
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
