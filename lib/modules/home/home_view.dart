import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendmoney/app/localization/strings.dart';
import 'package:sendmoney/modules/home/home_berral.dart';



 const _kButtonSize = 180.0;
class HomeView extends GetView<HomeController> {
  HomeView({super.key});
  @override
  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(Strings.lblAppName), backgroundColor: Colors.green,),
        body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Padding(
              padding: EdgeInsets.all(10
              ),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          
                          Expanded(child: 
                          Align(alignment: Alignment.topLeft,
                          child:  Text(
                           
                          Strings.lblHomeBalancePrefix, 
                           style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                          
                          )),
                          IconButton(
                  icon: Icon(Icons.visibility),
                  onPressed: () {
                     controller.showBalance.value = ! controller.showBalance.value;
                  },
                              ),
                        ],
                      ),
                     
                      
                    Row(
                      children: [
                        Expanded(child:
                         Obx(() => Text(
                      controller.showBalance.value ? '\$ ${ controller.balance.value}' : ' ******',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    )), 
                        )
                      ],
                    )    
                  
                  
                    ],
                  ),
                ),
              ),
            ),
           Spacer(),
            
            SizedBox(
              width: _kButtonSize,
              child: ElevatedButton(
                onPressed: () {
                  controller.onSendMoneyBtnClicked();
                },
                child: Text(Strings.btnHomeSendMoeny),
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
               width: _kButtonSize,
              child: ElevatedButton(
                onPressed: () {
                  controller.onViewTransactionBtnClicked();
                },
                child: Text(Strings.btnHomeSendTransaction),
              ),
            ),
            SizedBox(height: 16,)
          ],
        ),
      ),
    );
  }
}
