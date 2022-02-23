import 'package:cis_task2/models/colors_model.dart';
import 'package:cis_task2/shared/colors.dart';
import 'package:cis_task2/shared/components.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
       title: Padding(
         padding: EdgeInsets.only(top: height*0.01),
         child: Text('Sofa',style: Theme.of(context).textTheme.subtitle1?.copyWith(
           fontSize: height*0.03
         ),),
       ),
       backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
          color: Colors.black,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_bag,color: defaultColor,size: height*0.035,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: width*0.055),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: height*0.02),
                child: SizedBox(
                  height: height*0.32,
                  width: width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      'https://cdn.mos.cms.futurecdn.net/Um5enK4XtGWd4NMxgyvxiE-768-80.jpg' ,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              SizedBox(height: height*0.01,),
              Row(
                children: [
                  Text('Blue Sofa',style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    fontSize: height*0.03
                  ),),
                  const Spacer(),
                  Text('\$65',style: Theme.of(context).textTheme.subtitle1?.copyWith(
                      fontSize: height*0.03
                  ),),
                ],
              ),
              SizedBox(height: height*0.01,),
              Text(captions,style: Theme.of(context).textTheme.caption?.copyWith(
                fontSize: height*0.02,
                color: Colors.grey.withOpacity(0.7),
              ),),
              SizedBox(height: height*0.002,),
              Row(
                children: [
                  Text('Color',style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    fontSize: height*0.028,
                  ),),
                  SizedBox(width: width*0.04,),
                  SizedBox(
                    height: height*0.08,
                    child: ListView.builder(
                      shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index) => createColorItems(height,width,colors[index]),
                        itemCount: colors.length),
                  )
                ],
              ),
              Row(
                children: [
                  Text('Quantity',style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    fontSize: height*0.027,
                  ),),
                  SizedBox(width: width*0.04,),
                  createQuantity(width,height,context),
                ],
              ),
              SizedBox(height: height*0.035,),
              customButton2(
                  width,height,context,
                  color: containerColor.withOpacity(0.7),
                  title: 'Add to cart'
              ),
              SizedBox(height: height*0.015,),
              customButton2(
                  width,height,context,
                  color: defaultColor,
                  title: 'Buy now',
                  txtColor: Colors.white
              ),
              SizedBox(height: height*0.02,),
            ],
          ),
        ),
      ),
    );
  }
}
