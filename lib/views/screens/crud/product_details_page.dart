import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test1/service/model/index_product_modle.dart';
import 'package:test1/utils/colors/colors.dart';

import '../../../widgets/text/description_text_widget.dart';
import '../../../widgets/text/smail_text.dart';

class ProductDetailsPage extends StatefulWidget {
//  IndexProductModel indexProductModel;
  ProductDetailsPage({Key? key}) : super(key: key);

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      appBar: AppBar(
        title: Text(
          'Name'.tr,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: AppColors.mainColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                // margin: EdgeInsets.only(top: 15),
                width: width,
                height: height * 0.45,
                child: Stack(
                  children: [
                    Positioned(
                        width: width,
                        height: height * 0.45,
                        child: Image(
                          image: AssetImage('images/assets/pob.jpg'),
                          fit: BoxFit.fill,
                        )),
                    Positioned(
                        right: 10,
                        top: 10,
                        child: Container(
                          margin: EdgeInsets.all(4),
                          child: Row(
                            children: [
                              Icon(
                                Icons.remove_red_eye,
                                color: AppColors.gray400,
                              ),
                              SmailText(
                                textbody: '54',
                                color: AppColors.blue,
                              ),
                            ],
                          ),
                        ))
                  ],
                )),
            Container(
              width: width,
              height: height * 0.10,
              //margin: EdgeInsets.only(top: 8,bottom: 8),
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.production_quantity_limits,
                        color: AppColors.blue,
                        size: 30,
                      ),
                      SmailText(
                          maxline: 1,
                          textbody: '5',
                          size: 18,
                          color: AppColors.titleColor),
                    ],
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.category_outlined,
                        color: AppColors.blue,
                        size: 30,
                      ),
                      SmailText(
                        textbody: 'Category'.tr,
                        color: AppColors.titleColor,
                        size: 18,
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.price_change,
                        color: AppColors.blue,
                        size: 30,
                      ),
                      SmailText(
                          maxline: 1,
                          textbody: "\$1287",
                          size: 18,
                          color: AppColors.titleColor),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 8, right: 8),
              width: width,
              height: 1,
              color: AppColors.gray200,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: AppColors.blue,
                    size: 30,
                  ),
                  SmailText(
                      maxline: 2,
                      textbody: "syria damascus muzzi",
                      size: 18,
                      color: AppColors.titleColor),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 8, right: 8),
              width: width,
              height: 1,
              color: AppColors.gray200,
            ),
            Container(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: DescriptionTextWidget(
                  text:
                      'muzza daa damascus muzmuzzi near MTNsyria damascus muzzi near MTNsyria damascus muzzi near MTNsyria damascus muzzi near MTNsyria damascus muzzi near MTNsyria damascus muzzi near MTNsyria damascus muzzi near MTNsyria damascus muzzi near MTNsyria damascus muzzi near MTNsyria damascus muzzi near MTNsyria damascus muzzi near MTNsyria damascus muzzi near MTN',
                )),
            Container(
              margin: EdgeInsets.only(left: 8, right: 8),
              width: width,
              height: 1,
              color: AppColors.gray200,
            ),
          ],
        ),
      ),
    );
  }
}
