import 'package:cis_task2/models/furniture_model.dart';
import 'package:cis_task2/shared/colors.dart';
import 'package:cis_task2/shared/components.dart';
import 'package:flutter/material.dart';
enum FurnitureType { chairs , sofa , tables }
class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  FurnitureType furnitureIndex = FurnitureType.tables;

  @override
  Widget build(BuildContext context) {
   double width = MediaQuery.of(context).size.width;
   double height = MediaQuery.of(context).size.height;
   return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            size: height*0.03,
          ),
          onPressed: () {},
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search,
                    size: height*0.03,
                  )
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0,left: 4.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: height*0.043,
                        width: width*0.11,
                        color: Colors.white,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://img.freepik.com/free-photo/indoor-picture-cheerful-handsome-young-man-having-folded-hands-looking-directly-smiling-sincerely-wearing-casual-clothes_176532-10257.jpg?size=626&ext=jpg&ga=GA1.2.2038481392.1638748800',
                          height: height*0.04,
                          width: width*0.1,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children: [
                Container(
                  width: width,
                  height: height*0.35,
                  decoration: BoxDecoration(
                      color: defaultColor,
                      borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(55),bottomRight: Radius.circular(55),)),
                  ),
                Positioned(
                  left: width*0.04,
                    top: height*0.08,
                    child: Text(
                      'Explore',
                      style: Theme.of(context).textTheme.bodyText1!
                          .copyWith(
                          fontSize: height*0.05)
                      ,)),
                SizedBox(
                  height: height*0.42,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index) => createFurniture(height, width,furnituresItems[index]),
                    itemCount: furnituresItems.length,
                  ),
                )
              ],
            ),
            SizedBox(height: height*0.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customButton(
                  height,width,context,
                    title: 'Chairs',
                    active: furnitureIndex == FurnitureType.chairs?true:false,
                    onTap: () {
                      setState(() {
                        furnitureIndex = FurnitureType.chairs;
                      });
                    }),
                SizedBox(width: width*0.04,),
                customButton(
                    height,width,context,
                    title: 'Sofa',
                    active: furnitureIndex == FurnitureType.sofa?true:false,
                    onTap: () {
                      setState(() {
                        furnitureIndex = FurnitureType.sofa;
                      });
                    }),
                SizedBox(width: width*0.04,),
                customButton(
                    height,width,context,
                    title: 'Tables',
                    active: furnitureIndex == FurnitureType.tables?true:false,
                    onTap: () {
                      setState(() {
                        furnitureIndex = FurnitureType.tables;
                      });
                    }),
              ],
            ),
           SizedBox(
             height: height*0.35,
             child: ListView.builder(
               scrollDirection: Axis.horizontal,
                 itemBuilder: (context,index) => newFurnitureItems(width, height, context, newItems[index]),
                 itemCount: newItems.length),
           ),
          ],
        ),
      ),
      );
  }
}


