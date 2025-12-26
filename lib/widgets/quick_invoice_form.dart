import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/widgets/custom_button.dart';
import 'package:responsive_dashboard/widgets/title_textField.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextfield(
                hintText: 'type Customer name',
                title: 'Customer name',
              ),
            ),
            Gap(20),
            Expanded(
              child: TitleTextfield(
                hintText: 'type Customer Email',
                title: 'Customer Email',
              ),
            ),
          ],
        ),
        Gap(20),
        Row(
          children: [
            Expanded(
              child: TitleTextfield(
                hintText: 'Type customer name',
                title: 'customer name',
              ),
            ),
            Gap(20),
            Expanded(
              child: TitleTextfield(hintText: 'USDs', title: 'Item mount'),
            ),
          ],
        ),
        Gap(20),
        Row(
          children: [
            Expanded(child: CustomButton(backgroundColor: Color(0xffffffff),textColor: Color(0xff4DB7F2), title: 'Add More Details',),),
            Gap(16),
             Expanded(child: CustomButton(backgroundColor: Color(0xff4DB7F2),textColor: Colors.white,title: 'Send Money',)),
          ],
        ),
      ],
    );
  }
}
