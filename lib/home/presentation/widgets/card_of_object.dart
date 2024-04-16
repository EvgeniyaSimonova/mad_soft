import 'package:flutter/material.dart';
import 'package:mad_soft/utils/text_style.dart';

class CardOfObject extends StatelessWidget {
  const CardOfObject({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        shadowColor: Colors.grey,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        color: Colors.white,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  child: Text(
                    'ЖК Цвета радуги',
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 0.15,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 6),
                FittedBox(
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Отснято сегодня:',
                            style: AppTextStyle.customTextSmall,
                          ),
                          Text(
                            '0 / 20 доступно',
                            style: AppTextStyle.customTextSmall,
                          ),
                        ],
                      ),
                      SizedBox(width: 16),
                      Column(
                        children: [
                          Text(
                            'Съемка займет:',
                            style: AppTextStyle.customTextSmall,
                          ),
                          Text(
                            '0 / 20 доступно',
                            style: AppTextStyle.customTextSmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
