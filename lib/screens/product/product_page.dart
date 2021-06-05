import 'package:ecommerce_int2/app_properties.dart';
import 'package:ecommerce_int2/models/product.dart';
import 'package:ecommerce_int2/screens/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ecommerce_int2/screens/shop/check_out_page.dart';
import 'package:ecommerce_int2/screens/product/components/shop_bottomSheet.dart';

import 'components/product_display.dart';
import 'view_product_page.dart';

class ProductPage extends StatefulWidget {
  final Product product;

  ProductPage({Key key, this.product}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState(product);


}



class _ProductPageState extends State<ProductPage> {
  final Product product;

  _ProductPageState(this.product);

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double bottomPadding = MediaQuery.of(context).padding.bottom;

    Widget viewProductButton = InkWell(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (_) => ViewProductPage(
                product: product,
              ))),
      child: Container(
        height: 80,
        width: width / 1.5,
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
          child: Text("View Product",
              style: const TextStyle(
                  color: const Color(0xfffefefe),
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  fontSize: 20.0)),
        ),
      ),
    );


    Widget rowButtons = Container(
      // height: 50,
      // width: 300,
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            InkWell(
              onTap: () {
                _scaffoldKey.currentState.showBottomSheet((context) {
                  return ShopBottomSheet();
                });
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 2.33,
                decoration: BoxDecoration(
                    // color: Colors.red,
                    // color: Colors.white,
                    color: Color.fromRGBO(255,255, 255, 0.30),
                    // border: Border.all(color: Colors.red),
                    //  gradient: mainButton,
                    // borderRadius: BorderRadius.only(
                    //     topLeft: Radius.circular(10.0),
                    //     bottomLeft: Radius.circular(10.0))
                    borderRadius: BorderRadius.circular(10.0)),
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Center(
                  child: Text(
                    'Thêm vào giỏ',
                    style: TextStyle(
                        // color: Colors.white,
                        // color: Colors.red,
                        color: Color.fromRGBO(234, 60, 3, 1),
                        fontWeight: FontWeight.bold,
                        //CanhAdd
                        fontSize: 15.4),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () async {
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>CheckOutPage()));

              },
              child: Container(
                width: MediaQuery.of(context).size.width / 2.33,
                decoration: BoxDecoration(
                    color: Colors.red,
                    gradient: mainButton,
                    // borderRadius: BorderRadius.only(
                    //     topLeft: Radius.circular(10.0),
                    //     bottomLeft: Radius.circular(10.0))
                    borderRadius: BorderRadius.circular(10.0)),
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Center(
                  child: Text(
                    'Mua ngay',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold, //CanhAdd
                        fontSize: 15.4),
                  ),
                ),
              ),
            )
          ],
        ),
      ),

    );

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: yellow,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: darkGrey),
        actions: <Widget>[
          IconButton(
            icon: new SvgPicture.asset(
              'assets/icons/search_icon.svg',
              fit: BoxFit.scaleDown,
            ),
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => SearchPage())),
          )
        ],
        title: Text(
          // 'Headphones',
          product.name,
          style: const TextStyle(
              color: darkGrey, fontWeight: FontWeight.w500, fontSize: 18.0),
        ),
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 80.0,
                ),
                ProductDisplay(
                  product: product,
                ),
                SizedBox(
                  height: 16.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 16.0),
                  child: Text(
                    product.name,
                    style: const TextStyle(
                        color: const Color(0xFFFEFEFE),
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0),
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 90,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(253, 192, 84, 1),
                          borderRadius: BorderRadius.circular(4.0),
                          border:
                              Border.all(color: Color(0xFFFFFFFF), width: 0.5),
                        ),
                        child: Center(
                          child: new Text("Details",
                              style: const TextStyle(
                                  color: const Color(0xeefefefe),
                                  fontWeight: FontWeight.w300,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12.0)),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Padding(
                    padding:
                        EdgeInsets.only(left: 20.0, right: 40.0, bottom: 130),
                    child: new Text(product.description,
                        style: const TextStyle(
                            color: const Color(0xfefefefe),
                            fontWeight: FontWeight.w800,
                            fontFamily: "NunitoSans",
                            fontStyle: FontStyle.normal,
                            fontSize: 16.0)))
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(
                  top: 8.0, bottom: bottomPadding != 20 ? 20 : bottomPadding),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                    Color.fromRGBO(255, 255, 255, 0),
                    Color.fromRGBO(253, 192, 84, 0.5),
                    Color.fromRGBO(253, 192, 84, 1),
                  ],
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter)),
              width: width,
              // height: 120,
              height: 84.16,
              // child: Center(child: viewProductButton),
              child: Center(child: rowButtons),
            ),
          ),
        ],
      ),
    );
  }
}
