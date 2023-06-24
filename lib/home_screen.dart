import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutorialgetx/screen_one.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Tutorial'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(onPressed:(){
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen()));

              // Get.to(Screen(name:'Deepesh'));
              Get.toNamed('/screen');

            }, child: Text('Go to Next screen')),
          ),
          
          Card(
            child: ListTile(
              title: Text('GetX Dialogbox Alert'),
              onTap: (){
                Get.defaultDialog(
                  title: 'Delete chat',
                  middleText: 'Are you sure,you want to delete the chat if yes then click on yes it doesnot allow more then three line?',
                  titlePadding: EdgeInsets.all(10),
                  contentPadding: EdgeInsets.all(10),
                  // textConfirm: 'Yes',
                  // textCancel: "No"
                  confirm: TextButton(onPressed: (){
                    // Navigator.pop(context);
                    Get.back();
                  }, child: Text('Ok')),
                  cancel: TextButton(onPressed: (){}, child: Text('Cancel')),


                  // ####Content in Dialog box
                  // content: Column(
                  //   children: [
                  //     Text('Cancel'),
                  //     // Text('Cancel'),   Here We can Add More then three line it will help to overcome from middleText bug
                  //     // Text('Cancel'),
                  //     // Text('Cancel'),
                  //     // Text('Cancel'),
                  //     // Text('Cancel'),
                  //     // Text('Cancel'),
                  //     // Text('Cancel'),
                  //     // Text('Cancel'),
                  //
                  //   ],
                  // )

                );
              },
              subtitle: Text('Dialog Alert'),
            ),
          ),


          Card(
            child: ListTile(
              title: Text('GetX Bottomsheet Alert'),
              onTap: (){
                Get.bottomSheet(
                  Container(

                    // decoration: BoxDecoration(
                    //   color: Colors.pink,
                    //   borderRadius: BorderRadius.only(
                    //     topLeft: Radius.circular(30),
                    //     topRight: Radius.circular(30),
                    //   )
                    //
                    // ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text('Light Theme'),
                          onTap: (){
                            // Get.changeThemeMode(ThemeMode.dark);
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          onTap: (){
                            // Get.changeThemeMode(ThemeMode.light);
                            Get.changeTheme(ThemeData.dark());
                          },
                          leading: Icon(Icons.dark_mode),
                          title: Text('Dark Theme',style: TextStyle(color: Colors.white),),
                        )
                      ],
                    ),
                  )
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(backgroundColor:Colors.cyan,onPressed:(){
        Get.snackbar('Deepesh',
            'Come Here',
          backgroundColor: Colors.blue,
          icon: Icon(Icons.add),
          mainButton: TextButton(onPressed: (){}, child: Text('Click'))
        );
      }),
    );
  }
}




