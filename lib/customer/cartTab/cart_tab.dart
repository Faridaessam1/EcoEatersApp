import 'package:eco_eaters_app/Data/food_card_in_cart_tab_data.dart';
import 'package:eco_eaters_app/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import '../../core/constants/app_assets.dart';
import '../../core/constants/app_colors.dart';

class CartTab extends StatefulWidget {


  @override
  State<CartTab> createState() => _CartTabState();
}

class _CartTabState extends State<CartTab> {
List<FoodCardInCartTabData> cardData=[
    FoodCardInCartTabData(
      foodImgPath: AppAssets.recentlyAddedImg,
      foodName: "Buddha Bowl",
      foodPrice:100,
      foodQuantity: 1,
    ),
  FoodCardInCartTabData(
      foodImgPath: AppAssets.recentlyAddedImg,
      foodName: "Buddha Bowl",
      foodPrice:340,
      foodQuantity: 1,
    ),
  FoodCardInCartTabData(
      foodImgPath: AppAssets.recentlyAddedImg,
      foodName: "Buddha Bowl",
      foodPrice:200,
      foodQuantity: 1,
    ),
  ];
  void increment(int index) {
    setState(() {
      cardData[index].foodQuantity++;

    });
  }

  void decrement(int index) {
      setState(() {
        cardData[index].foodQuantity--;
      });

  }
double calculateSubtotal() {
  return cardData.fold(
           0,
          (sum, item) => sum + (item.foodQuantity * item.foodPrice));
}

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    double subtotal = calculateSubtotal();
    double deliveryFees = 50;
    double tax = 30;
    double totalPrice = subtotal + deliveryFees + tax;
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          AppAssets.appLogo,
          height: height * 0.02,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      Image.asset(
                        cardData[index].foodImgPath,
                        height: height * 0.10,
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Column(
                        children: [
                          Text(
                            cardData[index].foodName,
                            style: TextStyle(
                              color: AppColors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            width: height * 0.02,
                          ),
                          Text(
                            "${cardData[index].foodPrice} L.E",
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Icon(
                            Icons.delete_rounded,
                            color: AppColors.black,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 14),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  width: 1,
                                  color: AppColors.grey,
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                  onPressed:() => decrement(index),
                                  icon: Icon(
                                    Icons.remove,
                                  ),
                                  color: AppColors.primaryColor,
                                ),
                                Text(
                                  cardData[index].foodQuantity.toString(),
                                  style: TextStyle(
                                      color: AppColors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                IconButton(
                                  onPressed:() => increment(index),
                                  icon: Icon(
                                    Icons.add,
                                  ),
                                  color: AppColors.primaryColor,
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  );
                },
                separatorBuilder: (BuildContext context, int index) => SizedBox(height: 10,),
                itemCount: cardData.length,
              ),
            ),
            SizedBox(
              height: height * 0.06,
            ),
            Row(
              children: [
                Text(
                  "SubTotal",
                  style: TextStyle(
                    color: AppColors.darkGrey,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
                Spacer(),
                Text(subtotal.toString(),
                  style: TextStyle(
                    color: AppColors.darkGrey,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Delivery Fees",
                  style: TextStyle(
                    color: AppColors.darkGrey,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
                Spacer(),
                Text(
                  deliveryFees.toString(),
                  style: TextStyle(
                    color: AppColors.darkGrey,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Tax",
                  style: TextStyle(
                    color: AppColors.darkGrey,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
                Spacer(),
                Text(
                  tax.toString(),
                  style: TextStyle(
                    color: AppColors.darkGrey,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Divider(
              color: AppColors.primaryColor,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            Row(
              children: [
                Text(
                  "Total Price",
                  style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Spacer(),
                Text(
                 totalPrice.toString(),
                  style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: CustomElevatedButton(
                    onPressed: () {
                      print("");
                    },
                    text: "Proceed To Checkout",
                    buttonColor: AppColors.primaryColor,
                    borderRadius: 40,
                    textColor: AppColors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
