// lib/features/dashboard/screens/health_home_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Import Provider
import 'package:healthcare/core/global_component/typografy.dart';
import 'package:healthcare/features/dashboard/controller/dashboard_controller.dart'; // Import the controller
import 'package:healthcare/features/dashboard/widgets/dashboard_widget.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Building DashboardScreen...");

    return ChangeNotifierProvider(
      create: (_) => DashboardController(), // Provide the controller
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Container utama dengan border besar yang mengelilingi profil hingga bagian tombol "Checkup"
              Container(
                width: double.infinity,
                constraints: BoxConstraints(
                  minHeight: 350, // Tinggi minimum
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(40), // Sudut border
                ),
                margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                padding: EdgeInsets.only(top: 55, left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Top Section with Profile and Notification
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            // Stack untuk lingkaran abu-abu dengan gambar profil di tengahnya
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 4, // Border putih
                                    ),
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 20,
                                  backgroundImage:
                                      AssetImage('assets/images/profile.png'),
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Good Morning.',
                                  style: AppTypography.header(
                                    Colors.black,
                                    FontWeight.normal,
                                  ),
                                ),
                                Text(
                                  'Assyfa',
                                  style: AppTypography.header(
                                    Colors.black,
                                    FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        // Lingkaran notifikasi dengan ikon lonceng
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[200],
                            border: Border.all(
                              color: Colors.white,
                              width: 4, // Border putih
                            ),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.notifications_outlined),
                            color: Colors.black,
                            iconSize: 20,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    // Greeting and Actions
                    Text(
                      'How Are You\nFeeling Today?',
                      style: AppTypography.h2(Colors.black),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        DashboardWidget.buildActionButton(
                          Icons.favorite_border,
                          'Checkup',
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        DashboardWidget.buildActionButton(
                          Icons.chat_bubble_outline,
                          'Consult',
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        DashboardWidget.ActionButton(
                          Icons.local_phone_outlined,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(
                        height: 40), // Tambahkan jarak untuk memanjang ke bawah
                  ],
                ),
              ),
              SizedBox(height: 15), // Tambahkan jarak untuk memanjang ke bawah
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Condition Section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Your condition',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.blue[50],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            'Health',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Grid for Health Options
                    Consumer<DashboardController>(
                      builder: (context, controller, child) {
                        return GridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                            DashboardWidget.buildConditionItem(
                              context,
                              'assets/images/liver.jpg',
                              'Liver',
                              isActive: controller.activeCondition == 'Liver',
                              onTap: () =>
                                  controller.setActiveCondition('Liver'),
                            ),
                            DashboardWidget.buildConditionItem(
                              context,
                              'assets/images/heart.jpg',
                              'My Heart',
                              isActive:
                                  controller.activeCondition == 'My Heart',
                              onTap: () =>
                                  controller.setActiveCondition('My Heart'),
                            ),
                            DashboardWidget.buildConditionItem(
                              context,
                              'assets/images/blood.jpg',
                              'Blood',
                              isActive: controller.activeCondition == 'Blood',
                              onTap: () =>
                                  controller.setActiveCondition('Blood'),
                            ),
                            DashboardWidget.buildConditionItem(
                              context,
                              'assets/images/brain.jpg',
                              'Brain',
                              isActive: controller.activeCondition == 'Brain',
                              onTap: () =>
                                  controller.setActiveCondition('Brain'),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.blue),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'Health',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: 'Settings',
            ),
          ],
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }
}
