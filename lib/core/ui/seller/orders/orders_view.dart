import 'package:eco_eaters_app/core/constants/app_colors.dart';
import 'package:eco_eaters_app/core/data/order_data_model.dart';
import 'package:eco_eaters_app/core/ui/seller/orders/widgets/custom_order_container.dart';
import 'package:eco_eaters_app/core/ui/seller/orders/widgets/custom_tab_bar_item.dart';
import 'package:flutter/material.dart';

class OrdersView extends StatefulWidget {
  const OrdersView({super.key});

  @override
  State<OrdersView> createState() => _OrdersViewState();
}

class _OrdersViewState extends State<OrdersView> {
  int selectedIndex = 0;

  List<OrderDataModel> orders = [
    OrderDataModel(
      orderNumber: "ORD-2025001",
      orderStatus: "Pending",
      orderStatusColor: AppColors.red,
      orderDetails: "3x Vegan Burger, 2x Green Salad",
      orderAmount: "45.90",
      customerName: "John Smith",
      customerAddress: "123 Green Street, New York",
      time: "Jan 15, 2025 - 14:30",
    ),
    OrderDataModel(
      orderNumber: "ORD-2025002",
      orderStatus: "In Progress",
      orderStatusColor: AppColors.orange,
      orderDetails: "1x Buddha Bowl, 1x Smoothie",
      orderAmount: "28.50",
      customerName: "Emma Wilson",
      customerAddress: "456 Eco Avenue, Brooklyn",
      time: "Jan 15, 2025 - 15:45",
    ),
    OrderDataModel(
      orderNumber: "ORD-2025003",
      orderStatus: "Confirmed",
      orderStatusColor: AppColors.green,
      orderDetails: "2x Pasta Primavera, 1x Fresh Juice",
      orderAmount: "39.75",
      customerName: "Michael Brown",
      customerAddress: "789 Fresh Street, Los Angeles",
      time: "Jan 15, 2025 - 16:00",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Text(
          "Order Management",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: AppColors.green,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_rounded),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          SafeArea(
            child: DefaultTabController(
              length: 4,
              child: TabBar(
                onTap: (index) {
                  onTabBarItemTapped(index);
                },
                isScrollable: true,
                indicatorColor: Colors.transparent,
                dividerColor: Colors.transparent,
                tabAlignment: TabAlignment.start,
                tabs: [
                  CustomTabBarItem(
                      title: "All",
                      isSelected: selectedIndex == 0,
                      tabColor: AppColors.black),
                  CustomTabBarItem(
                      title: "Pending",
                      isSelected: selectedIndex == 1,
                      tabColor: AppColors.red),
                  CustomTabBarItem(
                    title: "In Progress",
                    isSelected: selectedIndex == 2,
                    tabColor: AppColors.orange,
                  ),
                  CustomTabBarItem(
                    title: "Confirmed",
                    isSelected: selectedIndex == 3,
                    tabColor: AppColors.green,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Expanded(
            child: ListView.builder(
              itemCount: orders.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 16.0),
                  child: CustomOrderContainer(orderDataModel: orders[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void onTabBarItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
