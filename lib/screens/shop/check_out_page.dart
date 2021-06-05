import 'package:ecommerce_int2/app_properties.dart';
import 'package:ecommerce_int2/models/product.dart';
import 'package:ecommerce_int2/screens/address/add_address_page.dart';
import 'package:ecommerce_int2/screens/payment/unpaid_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'components/credit_card.dart';
import 'components/shop_item_list.dart';

//TODO: NOT DONE. WHEEL SCROLL QUANTITY
class CheckOutPage extends StatefulWidget {
  @override
  _CheckOutPageState createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  SwiperController swiperController = SwiperController();

  List<Product> products = [
    Product('assets/yen_dtht_03.png', 'Yến Đông Trùng Hạ Thảo', 'description',
        650000),
    Product('assets/dtht_kho_transparent.png', 'Đông Trùng Hạ Thảo Khô',
        'description', 750000),
    Product('assets/qt_madaothanhcong.png', 'Quà Tặng Mã Đáo \n Thành Công',
        'description', 2790000),
    Product('assets/ruou_dtht_lon.png', 'Rượu Đông Trùng Hạ Thảo Loại Lớn',
        'description', 9135000)
  ];

  bool isChecked = false;

  // bool isChecked= false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double bottomPadding = MediaQuery.of(context).padding.bottom;

    Widget checkOutButton = InkWell(
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => AddAddressPage())),
      child: Container(
        height: 80,
        width: MediaQuery.of(context).size.width / 1.5,
        decoration: BoxDecoration(
            gradient: mainButton,
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.16),
                offset: Offset(0, 5),
                blurRadius: 10.0,
              )
            ],
            borderRadius: BorderRadius.circular(9.0)),
        child: Center(
          // child: Text("Check Out",
          child: Text("Mua hàng",
              style: const TextStyle(
                  color: const Color(0xfffefefe),
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  fontSize: 20.0)),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        backgroundColor: yellow,
        elevation: 0.0,
        // iconTheme: IconThemeData(color: darkGrey),
        iconTheme: IconThemeData(color: Colors.white),
        actions: <Widget>[
          // IconButton(
          //   icon: Image.asset('assets/icons/denied_wallet.png'),
          //   onPressed: () => Navigator.of(context)
          //       .push(MaterialPageRoute(builder: (_) => UnpaidPage())),
          // )
        ],
        title: Text(
          // 'Checkout',
          'Giỏ hàng',
          style: TextStyle(
              // color: darkGrey, fontWeight: FontWeight.w500, fontSize: 18.0),
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 18.0),
        ),
      ),
      body: Stack(
        // CanhRemove
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            // height: 300,
            // Good height
            height: 400,
            //Canh change
            // height: 460,
            child: Scrollbar(
              child: ListView.builder(
                itemBuilder: (_, index) => ShopItemList(
                  products[index],
                  onRemove: () {
                    setState(() {
                      products.remove(products[index]);
                    });
                  },
                ),
                itemCount: products.length,
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(
                // top: 8.0,
                bottom: bottomPadding != 20 ? 20 : bottomPadding,
              ),
              // decoration: BoxDecoration(
              //     gradient: LinearGradient(
              //         colors: [
              //           Color.fromRGBO(255, 255, 255, 0),
              //           Color.fromRGBO(253, 192, 84, 0.5),
              //           Color.fromRGBO(253, 192, 84, 1),
              //         ],
              //         begin: FractionalOffset.topCenter,
              //         end: FractionalOffset.bottomCenter)),
              width: width,
              // height: 120,
              // height: 84.16,
              height: 180,
              // child: Center(child: viewProductButton),
              // child: Center(child: rowButtons),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Divider(
                    // color: Colors.grey[800],
                    color: Colors.grey,
                    // color: darkGrey,
                    // color: Colors.red,
                    height: 1,
                    // thickness: 1,
                    thickness: 1,
                    indent: 50,
                    endIndent: 72,
                  ),
                  SizedBox(height:20),
                  Padding(
                    padding: const EdgeInsets.only(left: 85.0, right: 72.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Tổng cộng',
                          style: TextStyle(
                            // fontSize: 20, fontWeight: FontWeight.bold),
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            // Divider(),
                            // ListTile(
                            Text(
                              'Tất cả ',
                              style: TextStyle(
                                  // fontSize: 20, fontWeight: FontWeight.bold),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),

                            Transform.scale(
                                scale: 1.35,
                                child:  Checkbox(
                                  // activeColor: darkYellow,
                                  // activeColor: yellow,
                                  // activeColor: Colors.red,
                                  // activeColor: Colors.red[400],
                                  // activeColor: Colors.pink[400],
                                  // activeColor: Colors.orange,
                                  // activeColor: Colors.amber,
                                  // activeColor: Colors.white,
                                  activeColor: red3,
                                  checkColor: Colors.white,
                                  // checkColor: Colors.amber,
                                  tristate: false,
                                  value: isChecked,
                                  onChanged: (bool newValue) {
                                    setState(() {
                                      isChecked = newValue;
                                    });
                                  },
                                )
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  '\đ 18.900.000',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.5),
                                ),

                              ),
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:10),
                  Expanded(
                    child: Align(
                        alignment: Alignment.center, child: checkOutButton),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Scroll extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    LinearGradient grT = LinearGradient(
        colors: [Colors.transparent, Colors.black26],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter);
    LinearGradient grB = LinearGradient(
        colors: [Colors.transparent, Colors.black26],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter);

    canvas.drawRect(
        Rect.fromLTRB(0, 0, size.width, 30),
        Paint()
          ..shader = grT.createShader(Rect.fromLTRB(0, 0, size.width, 30)));

    canvas.drawRect(Rect.fromLTRB(0, 30, size.width, size.height - 40),
        Paint()..color = Color.fromRGBO(50, 50, 50, 0.4));

    canvas.drawRect(
        Rect.fromLTRB(0, size.height - 40, size.width, size.height),
        Paint()
          ..shader = grB.createShader(
              Rect.fromLTRB(0, size.height - 40, size.width, size.height)));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
