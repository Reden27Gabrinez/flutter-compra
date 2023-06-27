import 'package:compra/consts/consts.dart';
import 'package:compra/consts/lists.dart';
import 'package:compra/views/profile_screen/components/details_card.dart';
import 'package:compra/widgets_common/bg_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: SafeArea(child: Column(
          children: [


            //edit profile button
            const Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.edit, color: whiteColor,)).onTap(() { }),




            //users details section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset(
                    imgProfile, 
                    width: 100,
                    fit: BoxFit.cover,
                  ).box.roundedFull.clip(Clip.antiAlias).make(),
                  10.widthBox,
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Jamaica Vina".text.fontFamily(semibold).white.make(),
                      "jamaicavina4@gmail.com".text.white.make(),
                    ],
                  )),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: whiteColor,
                      ),
                    ),
                    onPressed: (){}, 
                    child: logout.text.fontFamily(semibold).white.make(),
                  )
                ],
              ),
            ),

            10.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                detailsCard(count: "00", title: "in your cart", width: context.screenWidth / 3.4),
                detailsCard(count: "32", title: "in your wishlist", width: context.screenWidth / 3.4),
                detailsCard(count: "675", title: "your orders", width: context.screenWidth / 3.4),
              ],
             ),




            //buttons sections
            ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return Divider(
                  color: lightGrey,
                );
              },
              itemCount: profileButtonsList.length,
              itemBuilder: (BuildContext context, int index){
                return ListTile(
                  leading: Image.asset(
                    profileButtonsIcon[index],
                    width: 22,
                  ),
                  title: profileButtonsList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
                );
              }, 
            ).box.white.rounded.margin(EdgeInsets.all(12)).padding(EdgeInsets.symmetric(horizontal: 16)).shadowSm.make().box.color(redColor).make(),


          ],
        )),
      ),
    );
  }
}