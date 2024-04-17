import 'package:flutter/material.dart';
import 'package:mad_soft/home/data/model/custom_object.dart';
import 'package:mad_soft/utils/text_style.dart';

class CardOfObject extends StatelessWidget {
  final CustomObject responsePayload;
  final String diskTotalSpace;

  const CardOfObject({
    super.key,
    required this.responsePayload,
    required this.diskTotalSpace,
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
          onTap: () => Navigator.of(context).pushNamed('/plan'),
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
                                text: '${responsePayload.remainingPoints}',
                                style: AppTextStyle.customTextMedium,
                                children: [
                                  TextSpan(
                                    text:
                                        ' / ${responsePayload.totalPointsCount} осталось',
                                    style: AppTextStyle.customTextSmall,
                                  )
                                ]),
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
                                text:
                                    '${(responsePayload.totalPointsCount * 5).toDouble()} ГБ',
                                style: AppTextStyle.customTextMedium,
                                children: [
                                  TextSpan(
                                    text: ' / $diskTotalSpace ГБ доступно',
                                    style: AppTextStyle.customTextSmall,
                                  )
                                ]),
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
