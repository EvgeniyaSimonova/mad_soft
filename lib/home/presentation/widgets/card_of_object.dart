import 'package:flutter/material.dart';
import 'package:mad_soft/home/data/model/custom_object.dart';
import 'package:mad_soft/utils/text_style.dart';

class CardOfObject extends StatelessWidget {
  final CustomObject responsePayload;

  const CardOfObject({
    super.key,
    required this.responsePayload,
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
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  child: Text(
                    responsePayload.title,
                    style: const TextStyle(
                      fontSize: 16,
                      letterSpacing: 0.15,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                FittedBox(
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Отснято сегодня:',
                            style: AppTextStyle.customTextSmall,
                          ),
                          RichText(
                            text: TextSpan(
                              text: '${responsePayload.totalPointsCount * 5}',
                              style: AppTextStyle.customTextMedium,
                              children: const [
                                TextSpan(
                                  text: ' / 20 осталось',
                                  style: AppTextStyle.customTextSmall,
                                )
                              ]
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Съемка займет:',
                            style: AppTextStyle.customTextSmall,
                          ),
                          RichText(
                            text: TextSpan(
                                text: '${responsePayload.totalPointsCount * 5}',
                                style: AppTextStyle.customTextMedium,
                                children: const [
                                  TextSpan(
                                    text: ' / 20 доступно',
                                    style: AppTextStyle.customTextSmall,
                                  )
                                ]
                            ),
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
