import 'package:abayecommerce/pages/home/main_product_page.dart';
import 'package:abayecommerce/route/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:abayecommerce/colors/AppColors.dart';
import 'package:abayecommerce/utils/dimensions.dart';
import 'package:abayecommerce/widgets/app_column.dart';
import 'package:abayecommerce/widgets/app_icon.dart';
import 'package:abayecommerce/widgets/big_text.dart';
import 'package:abayecommerce/widgets/expandable_text_widget.dart';
import 'package:get/get.dart';

class PopularProductDetail extends StatelessWidget {
  const PopularProductDetail({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //  background image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImageSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/image1.jpg")),
              ),
            ),
          ),
          //  icon widget
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Get.toNamed(RouteHelper.intial);
                    },
                    child: AppIcon(icon: Icons.arrow_back_ios)),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),
          // interoduction of food
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImageSize - 20,
            child: Container(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius20),
                  topLeft: Radius.circular(Dimensions.radius20),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(text: "Ethiopia Product"),
                  SizedBox(height: Dimensions.height20),
                  BigText(text: "Introuduce"),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(
                        text:
                            "በስመ አብ ወወልድ ወመንፈስ ቅዱስ አሐዱ አምላክ አሜን የተወደዳችሁ ወገኖቻችን እንኳን ለታላቅ የበረከት የጸሎት የስግደት ዕለታት በሰላም አደረሳችሁ። ከዚህ በፊት ቤተ ክርስቲያንን እንዲሁም ኢትዮጵያን የሚያስቀጥል ትውልድ ለማፍራት በማሰብ የሙሓዘ ምሥጢራት አራቱ ጉባኤያት ትምሕርት ደፋ ቀና እያለ እንደሆነ በጽሑፍም በቪድዮም መግለጻችንን ታስታውሳላች ይሁን እንጂ ቤተ ክርስቲያኗም ሆነ ሀገሪቷ አንዱን አጀንዳ ሳትፈታ ሌላ እየተጨመረላት ስናይ እኛም እየተሰቀቅን ገፋ አድርገን አልጠየቅናችሁ። መከራው ግን እየገፋ እየባሰ ከመሄድ ውጭ ለውጥ እንደማይመጣ እኛ ተረድተናል እናንተም ልትረዱ ይገባል ይህን መከራ ሊያርቅ የሚችለው አንዱ እኛ የጀመርነው ሥራ ነው። ለምሳሌ አንደኛ እኛ ያሰብነው የሁሉም ቋንቋ ተናጋሪዎች ልጆች ወደጉባኤ ቤቱ ገብተው እግዚአብሔርን እንዲያውቁ ሃይማኖት እንዲማሩ በአንድነት ተስማምቶ መኖር እንደሚቻል አስተምረን አንዲት ቤተ ክርስቲያንን አንዲት ኢትዮጵያን ማስረከብ ነው። እርግጠኛ ነን በዚህ ሥራ ላይ በደንብ ከተሳተፍን አሥር አመት ባልሞላ ጊዜ ውስጥ አንድ እንሆናለን። ሁለተኛ ጉባኤ ቤቶች በደንብ ከጠነከሩ ለሀገር ለወገን የሚጸልዩ ቅዱሳን አባቶችን በብዛት ማግኘት እንችላለን። ሦስተኛ ግራ የተጋባውን ትውልድ ከጨለማ ወደብርሃን እናወጣለን። በአጠቃላይ ሁሉም ሰው ሰላም ያገኛል። አሁን  አብዛኛው የዓለም ሰው ሰላምን መረጋጋትን ይፈልጋል ነገር ግን የሚፈልገው በማይገኝበት ቦታ  ነው ላም ባልዋለበት ኩበት ለቀማ ነው የሆነበት ወገኖቻችን እናንተ በአቅማችሁ ማገዝ ብቻ ነው የማጠበቅባችሁ ሥራው የሚከብደው ለእኛ ነው ባንድፊት ሕንጻ ማሰራት ባንድ ፊት ማስተማር ባንድ ፊት የደቀ መዛሙርት ምግብ መፈለግ እጅግ ከባድ ነው ይሁን እንጂ በእግዚአብሔር አጋዥኘት እንደምንወጣው እናምናለን። ወገኖቻችን ገንዘባችሁን ጉልበታችሁን እውቀታችሁን በሐላፊ ነገር ላይ አትጣሉት ለትውልድ በሚያልፍ እና በሰማይ ለዘለዓልም በክብር በሚያኖር ላይ ጣሉት። ከዚህ በፊት ብዙ ጊዜ ጠይቀን ነበር ግን አንድ ሣንቲም የለም ዓላማው  እጅግ አስፈላጊ ስለሆነ ሁላችሁም በተቻላችሁ መጠን ትረዱን ዘንድ በድንግል ማርያም ስም እንጠይቃለን። የጉባኤ ቤታችን አካውንት 1000354747662 አንሳስ መንበረ ብርሃን ቅድስት ማርያም ብሉይ ኪዳን ጉባኤ። ለበለጠ መረጃ 0921202229ለብርሃነ ትንሳኤው እንኳን በሰላም አደረሳችሁልባችሁን እንጂ ልብሳችሁን አትቅደዱ፤ አምላካችሁም እግዚአብሔር ቸርና መሐሪ፥ ቍጣው የዘገየ፥ ምሕረቱም የበዛ፥ ለክፋትም የተጸጸተ ነውና ወደ እርሱ ተመለሱበውኑ ኢትዮጵያዊ መልኩን ወይስ ነብር ዝንጕርጕርነትን ይለውጥ ዘንድ ይችላል በዚያን ጊዜ ክፋትን የለመዳችሁ እናንተ ደግሞ በጎ ለማድረግ ትችላላችሁ ለብርሃነ ትንሳኤው እንኳን በሰላም አደረሳችሁልባችሁን እንጂ ልብሳችሁን አትቅደዱ፤ አምላካችሁም እግዚአብሔር ቸርና መሐሪ፥ ቍጣው የዘገየ፥ ምሕረቱም የበዛ፥ ለክፋትም የተጸጸተ ነውና ወደ እርሱ ተመለሱበውኑ ኢትዮጵያዊ መልኩን ወይስ ነብር ዝንጕርጕርነትን ይለውጥ ዘንድ ይችላል በዚያን ጊዜ ክፋትን የለመዳችሁ እናንተ ደግሞ በጎ ለማድረግ ትችላላችሁ",
                        margin: EdgeInsets.only(left: 20, right: 20),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
          // expandable text widget
        ],
      ),
      bottomNavigationBar: Container(
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
                child: Row(
                  children: [
                    Icon(Icons.remove, color: AppColors.signColor),
                    SizedBox(width: Dimensions.width10 / 2),
                    BigText(text: "0"),
                    SizedBox(width: Dimensions.width10 / 2),
                    Icon(Icons.add, color: AppColors.signColor),
                  ],
                )),
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height20,
                bottom: Dimensions.height20,
                right: Dimensions.width20,
                left: Dimensions.width20,
              ),
              child: BigText(text: "\$10 | Add to cart", color: Colors.white),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
