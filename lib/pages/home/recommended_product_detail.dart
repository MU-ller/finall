// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:abayecommerce/colors/AppColors.dart';
import 'package:abayecommerce/route/route_helper.dart';
import 'package:abayecommerce/utils/dimensions.dart';
import 'package:abayecommerce/widgets/app_icon.dart';
import 'package:abayecommerce/widgets/big_text.dart';
import 'package:abayecommerce/widgets/expandable_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecommendedProductDetail extends StatelessWidget {
  const RecommendedProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(RouteHelper.getIntial());
                  },
                ),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
                child: Center(
                    child: BigText(
                        size: Dimensions.font26, text: "Ethiopian Product")),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20),
                    )),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/image1.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                child: ExpandableTextWidget(
                  text:
                      " ፖሊስ ልብስ በመልበስ በጦር መሣሪያ በማስፈራራት ከ395 ሺህ ብር በላይ ንብረት ዘርፈው የወሰዱት ተከሳሾች በፅኑ እስራት ተቀጡ በፍትሕ ሚኒስቴር የጠቅላይ ዐቃቤ ሕግ ዘርፍ የልዩ ልዩ ወንጀል ጉዳዮች ዳይሬክቶሬት ዐቃቤ ሕግ የፌዴራል ፖሊስ ልብስ በመልበስ በጦር መሣሪያ በማስፈራራት ከ395 ሺህ ብር በላይ ንብረት ይዛችሁ ተሰውራችኋል ባላቸው ተከሳሾች ላይ ክስ መስርቶባቸው 1ኛ እና 2ኛ ተከሳሾችን በ14 ዓመት ፅኑ እስራት፣ 3ኛ ተከሳሽን በ13 ዓመት የፌዴራል ፖሊስ ልብስ በመልበስ በጦር መሣሪያ በማስፈራራት ከ395 ሺህ ብር በላይ ንብረት ዘርፈው የወሰዱት ተከሳሾች በፅኑ እስራት ተቀጡ በፍትሕ ሚኒስቴር የጠቅላይ ዐቃቤ ሕግ ዘርፍ የልዩ ልዩ ወንጀል ጉዳዮች ዳይሬክቶሬት ዐቃቤ ሕግ የፌዴራል ፖሊስ ልብስ በመልበስ በጦር መሣሪያ በማስፈራራት ከ395 ሺህ ብር በላይ ንብረት ይዛችሁ ተሰውራችኋል ባላቸው ተከሳሾች ላይ ክስ መስርቶባቸው 1ኛ እና 2ኛ ተከሳሾችን በ14 ዓመት ፅኑ እስራት፣ 3ኛ ተከሳሽን በ13 ዓመት ፅኑ እስራት እንዲቀጡ አድርጓል። 1ኛ አሸብር ተስፋዬ፣ 2ኛ ኢ/ር አብዲ ሰይድ፣ 3ኛ ሰለሞን አየለ የተባሉ ተከሳሾች በ1996 ዓ.ም የወጣውን የወንጀል ሕግ አንቀጽ 32/1/ሀ/ እና 671/1/ለ/ ስር የተመለከተውን በመተላለፍ የተሳትፎ ደረጃቸው ተጠቅሶ በዐቃቤ ሕግ ተከሰዋል። የዐቃቤ ሕግ የክስ መዝገብ እንደሚያስረዳው ተከሳሾች ተገቢ ያልሆነ ብልፅግና ለራሳቸው ለማግኘት አስበው ሐምሌ 1 ቀን 2013 ዓ.ም በኮልፌ ቀራኒዮ ክፍለ ከተማ ወረዳ 03 ሰለፊያ መስጂድ ተብሎ ከሚጠራው አካባቢ የፌዴራል ፖሊስ ልብስ በመልበስ እና የጦር መሣሪያ በመያዝ የግል ተበዳይ አቶ ሳሊሞ ጀማል የፌዴራል ፖሊስ ልብስ በመልበስ በጦር መሣሪያ በማስፈራራት ከ395 ሺህ ብር በላይ ንብረት ዘርፈው የወሰዱት ተከሳሾች በፅኑ እስራት ተቀጡ በፍትሕ ሚኒስቴር የጠቅላይ ዐቃቤ ሕግ ዘርፍ የልዩ ልዩ ወንጀል ጉዳዮች ዳይሬክቶሬት ዐቃቤ ሕግ የፌዴራል ፖሊስ ልብስ በመልበስ በጦር መሣሪያ በማስፈራራት ከ395 ሺህ ብር በላይ ንብረት ይዛችሁ ተሰውራችኋል ባላቸው ተከሳሾች ላይ ክስ መስርቶባቸው 1ኛ እና 2ኛ ተከሳሾችን በ14 ዓመት ፅኑ እስራት፣ 3ኛ ተከሳሽን በ13 ዓመት ፅኑ እስራት እንዲቀጡ አድርጓል። 1ኛ አሸብር ተስፋዬ፣ 2ኛ ኢ/ር አብዲ ሰይድ፣ 3ኛ ሰለሞን አየለ የተባሉ ተከሳሾች በ1996 ዓ.ም የወጣውን የወንጀል ሕግ አንቀጽ 32/1/ሀ/ እና 671/1/ለ/ ስር የተመለከተውን በመተላለፍ የተሳትፎ ደረጃቸው ተጠቅሶ በዐቃቤ ሕግ ተከሰዋል። የዐቃቤ ሕግ የክስ መዝገብ እንደሚያስረዳው ተከሳሾች ተገቢ ያልሆነ ብልፅግና ለራሳቸው ለማግኘት አስበው ሐምሌ 1 ቀን 2013 ዓ.ም በኮልፌ ቀራኒዮ ክፍለ ከተማ ወረዳ 03 ሰለፊያ መስጂድ ተብሎ ከሚጠራው አካባቢ የፌዴራል ፖሊስ ልብስ በመልበስ እና የጦር መሣሪያ በመያዝ የግል ተበዳይ አቶ ሳሊሞ ጀማል ረዳ ቤት ሄደው የውጭ በር በማንኳኳት እና ሕጋዊ ሰዎች ነን፣ ሕጋዊ ወረቀት ይዘናል፣ ረዳ ቤት ሄደው የውጭ በር በማንኳኳት እና ሕጋዊ ሰዎች ነን፣ ሕጋዊ ወረቀት ይዘናል፣ ፅኑ እስራት እንዲቀጡ አድርጓል። 1ኛ አሸብር ተስፋዬ፣ 2ኛ ኢ/ር አብዲ ሰይድ፣ 3ኛ ሰለሞን አየለ የተባሉ ተከሳሾች በ1996 ዓ.ም የወጣውን የወንጀል ሕግ አንቀጽ 32/1/ሀ/ እና 671/1/ለ/ ስር የተመለከተውን በመተላለፍ የተሳትፎ ደረጃቸው ተጠቅሶ በዐቃቤ ሕግ ተከሰዋል። የዐቃቤ ሕግ የክስ መዝገብ እንደሚያስረዳው ተከሳሾች ተገቢ ያልሆነ ብልፅግና ለራሳቸው ለማግኘት አስበው ሐምሌ 1 ቀን 2013 ዓ.ም በኮልፌ ቀራኒዮ ክፍለ ከተማ ወረዳ 03 ሰለፊያ መስጂድ ተብሎ ከሚጠራው አካባቢ የፌዴራል ፖሊስ ልብስ በመልበስ እና የጦር መሣሪያ በመያዝ የግል ተበዳይ አቶ ሳሊሞ ጀማል ረዳ ቤት ሄደው የውጭ በር በማንኳኳት እና ሕጋዊ ሰዎች ነን፣ ሕጋዊ ወረቀት ይዘናል፣ የፌዴራል ፖሊስ ልብስ በመልበስ በጦር መሣሪያ በማስፈራራት ከ395 ሺህ ብር በላይ ንብረት ዘርፈው የወሰዱት ተከሳሾች በፅኑ እስራት ተቀጡ በፍትሕ ሚኒስቴር የጠቅላይ ዐቃቤ ሕግ ዘርፍ የልዩ ልዩ ወንጀል ጉዳዮች ዳይሬክቶሬት ዐቃቤ ሕግ የፌዴራል ፖሊስ ልብስ በመልበስ በጦር መሣሪያ በማስፈራራት ከ395 ሺህ ብር በላይ ንብረት ይዛችሁ ተሰውራችኋል ባላቸው ተከሳሾች ላይ ክስ መስርቶባቸው 1ኛ እና 2ኛ ተከሳሾችን በ14 ዓመት ፅኑ እስራት፣ 3ኛ ተከሳሽን በ13 ዓመት ፅኑ እስራት እንዲቀጡ አድርጓል። 1ኛ አሸብር ተስፋዬ፣ 2ኛ ኢ/ር አብዲ ሰይድ፣ 3ኛ ሰለሞን አየለ የተባሉ ተከሳሾች በ1996 ዓ.ም የወጣውን የወንጀል ሕግ አንቀጽ 32/1/ሀ/ እና 671/1/ለ/ ስር የተመለከተውን በመተላለፍ የተሳትፎ ደረጃቸው ተጠቅሶ በዐቃቤ ሕግ ተከሰዋል። የዐቃቤ ሕግ የክስ መዝገብ እንደሚያስረዳው ተከሳሾች ተገቢ ያልሆነ ብልፅግና ለራሳቸው ለማግኘት አስበው ሐምሌ 1 ቀን 2013 ዓ.ም በኮልፌ ቀራኒዮ ክፍለ ከተማ ወረዳ 03 ሰለፊያ መስጂድ ተብሎ ከሚጠራው አካባቢ የፌዴራል ፖሊስ ልብስ በመልበስ እና የጦር መሣሪያ በመያዝ የግል ተበዳይ አቶ ሳሊሞ ጀማል ረዳ ቤት ሄደው የውጭ በር በማንኳኳት እና ሕጋዊ ሰዎች ነን፣ ሕጋዊ ወረቀት ይዘናል፣",
                  margin: EdgeInsets.only(left: 20, right: 20),
                ),
                margin: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
              )
            ],
          ))
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20 * 2.5,
                right: Dimensions.width20 * 2.5,
                top: Dimensions.height10,
                bottom: Dimensions.height10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(
                      iconSize: Dimensions.iconSize24,
                      iconColor: Colors.white,
                      backgroundColor: AppColors.mainColor,
                      icon: Icons.remove),
                  BigText(
                    text: "\$12.88" + " X " + " 0 ",
                    color: AppColors.mainBlackColor,
                  ),
                  AppIcon(
                      iconSize: Dimensions.iconSize24,
                      iconColor: Colors.white,
                      backgroundColor: AppColors.mainColor,
                      icon: Icons.add),
                ]),
          ),
          Container(
            height: Dimensions.bottomHieghtBar,
            margin: EdgeInsets.only(left: 20, right: 20),
            padding: EdgeInsets.only(
              top: Dimensions.height30,
              bottom: Dimensions.height30,
              left: Dimensions.width30,
              right: Dimensions.height30,
            ),
            decoration: BoxDecoration(
                color: AppColors.buttonBackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius20 * 2),
                  topRight: Radius.circular(Dimensions.radius20 * 2),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      right: Dimensions.width20,
                      left: Dimensions.width20,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white,
                    ),
                    child: Icon(Icons.favorite, color: AppColors.mainColor)),
                Container(
                  padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    right: Dimensions.width20,
                    left: Dimensions.width20,
                  ),
                  child:
                      BigText(text: "\$10 | Add to cart", color: Colors.white),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: AppColors.mainColor,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
