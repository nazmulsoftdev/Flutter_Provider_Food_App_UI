import 'package:app1/UI_widget/Complete_orderUI.dart';
import 'package:app1/UI_widget/empty_err.dart';
import 'package:app1/provider/completeOrder_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CurrentOrder extends StatelessWidget {
  const CurrentOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Order Complete Provider
    var completeProvider = Provider.of<Complete_OrderProvider>(context);

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            completeProvider.currentOrder.length <= 0
                ? NotFoundPage("Not found Order")
                : Container(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                      physics: ScrollPhysics(),
                      itemBuilder: (_, index) {
                        return CompleteOrderUI(context, index);
                      },
                      itemCount: completeProvider.currentOrder.length,
                    ),
                  )
          ],
        ),
      )),
    );
  }
}
