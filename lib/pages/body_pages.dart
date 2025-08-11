import 'package:flutter/material.dart';

class BodyPages extends StatefulWidget {
  const BodyPages({super.key});

  @override
  State<BodyPages> createState() => _BodyPagesState();
}

class _BodyPagesState extends State<BodyPages> {
  bool isLeftMenuVisible = false; // Track if left menu is visible
  bool isRightMenuVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // المحتوى الرئيسي
          Expanded(child: BodyPages()),
          // عرض القائمة الجانبية في حالة تفعيل isRightMenuVisible
          if (isRightMenuVisible)
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 250,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    // الصورة الشخصية واسم المستخدم
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Color(0xFFFF5722),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                        ),
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                              "assets/images/mohko.jpg",
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('AI240276', style: TextStyle(fontSize: 14)),
                              Text(
                                'Active',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Expanded(
                      child: ListView(
                        children: [
                          ListTile(
                            leading: Icon(Icons.person),
                            title: Text('Biodata'),
                            onTap: () {},
                          ),
                          ListTile(
                            leading: Icon(Icons.grid_view),
                            title: Text('Registration'),
                            onTap: () {},
                          ),
                          ListTile(
                            leading: Icon(Icons.analytics),
                            title: Text('Examination'),
                            onTap: () {},
                          ),
                          ListTile(
                            leading: Icon(Icons.school),
                            title: Text('Graduation'),
                            onTap: () {},
                          ),
                          ListTile(
                            leading: Icon(Icons.account_balance),
                            title: Text('Student Account'),
                            onTap: () {},
                          ),
                          ListTile(
                            leading: Icon(Icons.settings),
                            title: Text('Others'),
                            onTap: () {},
                          ),
                          ListTile(
                            leading: Icon(Icons.app_registration),
                            title: Text('Online Application'),
                            onTap: () {},
                          ),
                          ListTile(
                            leading: Icon(Icons.build),
                            title: Text('Services'),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
