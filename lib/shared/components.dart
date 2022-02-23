import 'package:cis_task2/models/furniture_model.dart';
import 'package:cis_task2/shared/colors.dart';
import 'package:flutter/material.dart';

Widget customButton(
    height,width,context,
    {
  required String title,
  required bool active,
  required Function onTap,
})
{
 return SizedBox(
   width: width*0.23,
   height: height*0.05,
   child: OutlinedButton(
      onPressed: () {
        onTap();
      },
      child: Text(title,style: TextStyle(color: active?Colors.white:defaultColor,fontSize: height*0.02),),
      style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          primary: defaultColor,
          backgroundColor: active?defaultColor:Colors.white,
        side: BorderSide(width: 1.5, color: defaultColor),
      ),
    ),
 );
}

Widget newFurnitureItems(
    width,
    height,
    context,
    NewModel model
    )
{
  return Center(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: width*0.03 ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: height*0.23,
            width: width*0.44,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: containerColor
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: height*0.23,left: width*0.27),
            child: Container(
              height: height*0.025,
              width: width*0.13,
              decoration: BoxDecoration(
                color: defaultColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(child: Text('New',style: Theme.of(context).textTheme.bodyText1?.copyWith(
                fontSize: height*0.02
              ),)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top:height*0.07,left: width*0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(model.name,style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  fontSize: height*0.023
                ),),
                SizedBox(height: height*0.005,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(model.price,style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        fontSize: height*0.023,
                    ),),
                    SizedBox(width: width*0.20,),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 1.0),
                      child: Icon(Icons.star,size: height*0.025,color: defaultColor,),
                    ),
                    SizedBox(width: width*0.005,),
                    Text('${model.rate}',style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      fontSize: height*0.020,
                      fontWeight: FontWeight.w600
                    ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: height*0.13),
            child: SizedBox(
              height: height*0.20,
              width: width*0.40,
              child: Image.asset(model.image),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget createFurniture(height,width,FurnitureModel model) {
  return Padding(
    padding: EdgeInsets.only( left: width*0.04, top: height*0.18,right: width*0.04,),
    child: SizedBox(
      height: height*0.27,
      width: width*0.42,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          model.image,
          fit: BoxFit.fill,
        ),
      ),
    ),
  );
}

Widget createColorItems(height,width,color)
{
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: width*0.017),
    child: Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow:[
            BoxShadow(
              color: Colors.black.withOpacity(.25),
              blurRadius: 1.0, // soften the shadow
              spreadRadius: 2.0,
              offset: const Offset(
                0.0,
                1.0,
              ),
            ),
          ]
      ),
      child:Center(
        child: InkWell(
          onTap: () {},
          child: CircleAvatar(
            backgroundColor: color,
            radius: height*0.015,
          ),
        ),
      ),
    ),
  );
}
Widget createQuantity(width,height,context)
{
  return Container(
      decoration: BoxDecoration(
      color: containerColor.withOpacity(0.6),
      borderRadius: BorderRadius.circular(25),
      ),
    child: Padding(
      padding: const EdgeInsets.all(6.0),
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow:[
                  BoxShadow(
                    color: Colors.black.withOpacity(.25),
                    blurRadius: 4.0, // soften the shadow
                    spreadRadius: 1.0,
                    offset: const Offset(
                      0.0, // Move to right 10  horizontally
                      1.0, // Move to bottom 10 Vertically
                    ),
                  ),
                ],
              ),
              child: CircleAvatar(
                radius: height*0.018,
                backgroundColor: defaultColor,
                child: Text('+',style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    fontSize: height*0.03,
                    fontWeight: FontWeight.normal
                ),),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width*0.015),
            child: Text('01',style: Theme.of(context).textTheme.subtitle1?.copyWith(
                fontSize: height*0.026
            ),),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow:[
                    BoxShadow(
                      color: Colors.black.withOpacity(.25),
                      blurRadius: 4.0, // soften the shadow
                      spreadRadius: 1.0,
                      offset: const Offset(
                        0.0, // Move to right 10  horizontally
                        1.0, // Move to bottom 10 Vertically
                      ),
                    ),
                  ]
              ),
              child: CircleAvatar(
                radius: height*0.018,
                backgroundColor: defaultColor,
                child: Text('−',style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    fontSize: width*0.058,
                    fontWeight: FontWeight.normal
                ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget customButton2(
    width,height,context,
{
  required String title,
  required Color color,
  Color txtColor = Colors.black,

}
    ) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: width*0.18),
    child: InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(40),
      child: Container(
        width: width,
        height: height*0.062,
        decoration: BoxDecoration(
          color: color,//containerColor.withOpacity(0.7),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(child: Text(
            title,
            style: TextStyle(
                fontSize: height*0.027,
                color: txtColor
            )
        ),
        ),
      ),
    ),
  );
}
String captions = 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.';