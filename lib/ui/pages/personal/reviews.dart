import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewsPage extends StatefulWidget {
  const ReviewsPage({super.key});

  @override
  State<ReviewsPage> createState() => _ReviewsPageState();
}

class _ReviewsPageState extends State<ReviewsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 24.h,
        ),
        Row(
          children: [
            Text('Отзывы',
                style: TextStyle(
                    color: Color(0xff4A4A4A),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700)),
            SizedBox(
              width: 8.h,
            ),
            Container(
                height: 22.h,
                width: 19.w,
                decoration: BoxDecoration(
                    color: Color(0xff2F2F2),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    '10',
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
                  ),
                )),
          ],
        ),
        SizedBox(
          height: 24.h,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              height: 40.h,
              width: 40.w,
              child: Image.asset('assets/images/second.png'),
            ),
            SizedBox(
              width: 10.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Виталий',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '17.08.2016',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 12.sp),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    RatingBar.builder(
                      initialRating: 3,
                      itemSize: 12,
                      minRating: 4,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 14.h,
                ),
                Container(
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.7),
                    child: Container(
                        child: Text(
                            'Отличная компания! Уже который год сотрудничаем с ребятами, берем краски оптом. Все всегда высшего качества, и цены приятно радуют.')))
              ],
            )
          ],
        ),
      ],
    );
  }
}
