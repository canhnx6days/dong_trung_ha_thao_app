import 'package:ecommerce_int2/app_properties.dart';
import 'package:ecommerce_int2/screens/rating/rating_page.dart';
import 'package:ecommerce_int2/screens/tracking_page.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[100],
      child: SafeArea(
        child: Container(
            margin: const EdgeInsets.only(top: kToolbarHeight),
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    // 'Notification',
                    'Thông báo',
                    style: TextStyle(
                      color: darkGrey,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CloseButton()
                ],
              ),
              Flexible(
                child: ListView(
                  children: <Widget>[
                    // Request amount
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      margin: const EdgeInsets.symmetric(vertical: 4.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                  // 'assets/background.jpg',
                                  'assets/dtht_kho_transparent.png',
                                ),
                                maxRadius: 24,
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: RichText(
                                    text: TextSpan(
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          color: Colors.black,
                                        ),
                                        children: [
                                          TextSpan(
                                              // text: 'Sai Sankar Ram',
                                              text: 'Đông Trùng Hạ Thảo',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              )),
                                          TextSpan(
                                            // text: ' Requested for ',
                                            text: ' Gợi ý sản phẩm ',
                                          ),
                                          TextSpan(
                                            text: '\đ 300.000',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ]),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.check_circle,
                                    size: 14,
                                    color: Colors.blue[700],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    // child: Text('Pay',
                                    child: Text('Mua',
                                        style:
                                            TextStyle(color: Colors.blue[700])),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.cancel,
                                    size: 14,
                                    color: Color(0xffF94D4D),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    // child: Text('Decline',
                                    child: Text('Từ chối',
                                        style: TextStyle(
                                            color: Color(0xffF94D4D))),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    // Send amount
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 4.0),
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                  // 'assets/background.jpg',
                                  'assets/dtht_kho_transparent.png',
                                ),
                                maxRadius: 24,
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: RichText(
                                    text: TextSpan(
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          color: Colors.black,
                                        ),
                                        children: [
                                          TextSpan(
                                              // text: 'Sai Sankar Ram',
                                              text: 'Đông Trùng Hạ Thảo',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              )),
                                          TextSpan(
                                            text: ' Gửi bạn một lời chúc ',
                                          ),
                                          TextSpan(
                                            // text: '\$45.25',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ]),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.check_circle,
                                    size: 14,
                                    color: Colors.blue[700],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    // child: Text('Accept',
                                    child: Text('Xem',
                                        style:
                                            TextStyle(color: Colors.blue[700])),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.cancel,
                                    size: 14,
                                    color: Color(0xffF94D4D),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    // child: Text('Decline',
                                    child: Text('Từ chối',
                                        style: TextStyle(
                                            color: Color(0xffF94D4D))),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    // Share your feedback.
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 4.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                              SizedBox(
                                height: 110,
                                width: 110,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                    left: 5.0,
                                    bottom: -10.0,
                                    child: SizedBox(
                                      height: 100,
                                      width: 100,
                                      child: Transform.scale(
                                        scale: 1.2,
                                        child: Image.asset(
                                            'assets/bottom_yellow.png'),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 8.0,
                                    left: 10.0,
                                    child: SizedBox(
                                        height: 80,
                                        width: 80,
                                        child: Image.asset(
                                            'assets/ruou_dtht_lon.png')),
                                  )
                                ]),
                              ),
                              Flexible(
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                  Text(
                                      'Rượu Đông Trùng Hạ Thảo Loại Lớn',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10)),
                                  SizedBox(height:4.0),
                                  Text(
                                      // 'Your package has been delivered. Thanks for shopping!',
                                      'Sản phẩm của bạn đã được chuyển đi. Cảm ơn vì đã mua sản phẩm!',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 10))
                                ]),
                              )
                            ]),
                          ),
                          InkWell(
                            onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (_) => RatingPage())),
                            child: Container(
                                padding: const EdgeInsets.all(14.0),
                                decoration: BoxDecoration(
                                    color: yellow,
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(5.0),
                                        bottomLeft: Radius.circular(5.0))),
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      // 'Share your feedback',
                                      'Phản hồi của bạn',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10),
                                    ))),
                          )
                        ],
                      ),
                    ),
                    // Track the product.
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 4.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                              SizedBox(
                                height: 110,
                                width: 110,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                    left: 5.0,
                                    bottom: -10.0,
                                    child: SizedBox(
                                      height: 100,
                                      width: 100,
                                      child: Transform.scale(
                                        scale: 1.2,
                                        child: Image.asset(
                                            'assets/bottom_yellow.png'),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 8.0,
                                    left: 10.0,
                                    child: SizedBox(
                                        height: 80,
                                        width: 80,
                                        child: Image.asset(
                                            'assets/nam_nguyentai.png')),
                                  )
                                ]),
                              ),
                              Flexible(
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                  Text(
                                      'Nấm Linh Chi Đà Lạt (Loại Nguyên tai)',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10)),
                                  SizedBox(height:4.0),
                                  Text(
                                      // 'Your package has been dispatched. You can keep track of your product.',
                                      'Sản phẩm của bạn đã được gửi đi. Bạn có thể theo dõi sản phẩm của mình.',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 10))
                                ]),
                              )
                            ]),
                          ),
                          InkWell(
                            onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) => TrackingPage())),
                            child: Container(
                                padding: const EdgeInsets.all(14.0),
                                decoration: BoxDecoration(
                                    color: yellow,
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(5.0),
                                        bottomLeft: Radius.circular(5.0))),
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      // 'Track the product',
                                      // 'Track the product',
                                      'Xem hành trình',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10),
                                    ))),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ])),
      ),
    );
  }
}
