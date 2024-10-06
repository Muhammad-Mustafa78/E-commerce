import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rise124/widgets/top_title/top_title.dart';

import '../../models/product_Model/Product_model.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // List<CategoryModel> categoriesList = [];
    List<Productmodel> productModelList = [];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(12.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TopTitle(subtitle: "", title: "E-Commerce"),
                    TextFormField(
                      decoration: InputDecoration(hintText: "Search....."),
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        "Categories",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            categoriesList.isEmpty
                ? Center(
                    child: Text("Categories is Empty"),
                  )
                : SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: categoriesList
                          .map((e) => Padding(
                                padding: const EdgeInsets.only(
                                  left: 8.0,
                                ),
                                child: Card(
                                  color: Colors.white,
                                  elevation: 3.0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  child: Container(
                                      height: 100,
                                      width: 100,
                                      child: Image.network(e)),
                                ),
                              ))
                          .toList(),
                    ),
                  ),
            SizedBox(
              height: 12.0,
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.0, left: 12.0),
              child: Text(
                "Best Product",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            categoriesList.isEmpty
                ? Center(
                    child: Text("Best Product  is empty"),
                  )
                : Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: GridView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        primary: false,
                        itemCount: productModelList.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            childAspectRatio: 0.9,
                            crossAxisCount: 2),
                        itemBuilder: (ctx, index) {
                          Productmodel singleProduct = productModelList[index];
                          return SingleChildScrollView(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Colors.red.withOpacity(0.3),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 38.0,
                                  ),
                                  Image.network(
                                    singleProduct.image,
                                    height: 60,
                                    width: 60,
                                  ),
                                  SizedBox(height: 15.0),
                                  Text(
                                    singleProduct.name,
                                    style: const TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text("price: \$${singleProduct.price}"),
                                  SizedBox(
                                    height: 38.0,
                                  ),
                                  SizedBox(
                                      height: 45,
                                      width: 340,
                                      child: OutlinedButton(
                                          onPressed: () {},
                                          style: OutlinedButton.styleFrom(
                                              foregroundColor: Colors.red,
                                              surfaceTintColor: Colors.red,
                                              shadowColor: Colors.red,
                                              side: BorderSide(
                                                  color: Colors.red,
                                                  width: 1.7)),
                                          child: Text(
                                            "Buy",
                                            style: TextStyle(color: Colors.red),
                                          )))
                                ],
                              ),
                            ),
                          );
                        }),
                  )
          ],
        ),
      ),
    );
  }
}

List<String> categoriesList = [
  "https://images.samsung.com/is/image/samsung/p6pim/pk/sm-a045fzcdpkd/gallery/pk-galaxy-a04-sm-a045-sm-a045fzcdpkd-thumb-535138670?344_344_PNG",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROeIDhiiXZkdnq4uSTL1Po_hlekexx01wF1Q&usqp=CAU",
  "https://png.pngtree.com/png-clipart/20190515/original/pngtree-set-beautiful-cartoon-icons-of-fast-food-png-image_3562461.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNnQ-x7gvj0hOphOfTtQei8Ux2PtZ_6uFoDQ&usqp=CAU.",
];

// List<Productmodel> bestProducts = [
//   Productmodel(
//       image: "../Assets/images/banana.png",
//       id: "1",
//       name: "Banana",
//       price: "19",
//       description: "This is Good For Health and they give you protein",
//       status: "Pending",
//       isFavourite: false),
//   Productmodel(
//       image: "../Assets/images/kiwi.png",
//       id: "1",
//       name: "Kiwi",
//       price: "19",
//       description:
//           "Kiwi berries are edible fruits the size of a large grape, similar to fuzzy kiwifruit in taste and internal appearance but with a thin, smooth green skin. They ...",
//       status: "Pending",
//       isFavourite: false),
//   Productmodel(
//       image: "../Assets/images/apple.png",
//       id: "4",
//       name: "Apple",
//       price: "19",
//       description:
//           "Apples grown from seed tend to be very different from those of their parents, and the resultant fruit frequently lacks desired characteristics. Generally, apple cultivars are propagated by clonal grafting onto rootstocks. ",
//       status: "Pending",
//       isFavourite: false),
//   Productmodel(
//       image: "../Assets/images/mango.png",
//       id: "1",
//       name: "Mango",
//       price: "19",
//       description:
//           "Mango is the national fruit of India, Pakistan and the Philippines,[5][6] while the mango tree is the national tree of Bangladesh.",
//       status: "Pending",
//       isFavourite: false)
// ];
