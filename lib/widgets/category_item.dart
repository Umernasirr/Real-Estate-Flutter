import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate/theme/colors.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: InkWell(
        onTap: () {},
        splashColor: primaryColor.withOpacity(0.3),
        child: Container(
          width: 300.0,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: white.withOpacity(0.4),
              borderRadius: BorderRadius.circular(12)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 300.0,
                  height: 160.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          image:
                              NetworkImage("https://picsum.photos/300/200")))),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Minimalist House",
                    style: TextStyle(fontSize: 18),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.orangeAccent),
                      Text(
                        "4.5",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              RichText(
                  text: TextSpan(children: [
                const TextSpan(
                    text: "\$734",
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text: "/Month",
                    style: TextStyle(
                        color: black.withOpacity(0.4),
                        fontSize: 18,
                        fontWeight: FontWeight.w500)),
              ])),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_pin, color: black.withOpacity(0.4)),
                      Text("Padamara, Java Tengah"),
                    ],
                  ),
                  const Icon(
                    Icons.bookmark_add_outlined,
                    size: 30,
                  ),
                ],
              ),
              Container(
                height: 8,
              )
            ],
          ),
        ),
      ),
    );
  }
}
