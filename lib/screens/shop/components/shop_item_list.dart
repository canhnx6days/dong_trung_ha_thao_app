import 'package:ecommerce_int2/app_properties.dart';
import 'package:ecommerce_int2/models/product.dart';
import 'package:ecommerce_int2/screens/product/components/color_list.dart';
import 'package:ecommerce_int2/screens/product/components/shop_product.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:intl/intl.dart';

class ShopItemList extends StatefulWidget {
  final Product product;
  final Function onRemove;

  ShopItemList(this.product, {Key key, this.onRemove}) : super(key: key);

  @override
  _ShopItemListState createState() => _ShopItemListState();
}

var oCcy = new NumberFormat("#,##0", "vi_VN");

class _ShopItemListState extends State<ShopItemList> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      // height: 130,
      height: 130,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment(0, 0.8),
            child: Container(
                height: 100,
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: shadow,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 12.0, right: 12.0),
                        // width: 200,
                        // CanhChange
                        width: 180,
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              widget.product.name,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: darkGrey,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                width: 160,
                                padding: const EdgeInsets.only(
                                    left: 32.0, top: 8.0, bottom: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      // MainAxisAlignment.spaceBetween,
                                      MainAxisAlignment.end,
                                  children: <Widget>[
                                    //CanhRemove
                                    // ColorOption(Colors.red),
                                    Text(
                                      // '\$${widget.product.price}',
                                      '\đ ${oCcy.format(widget.product.price) ?? 0.0}',
                                      // textAlign: TextAlign.center,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: darkGrey,
                                          // color: darkYellow,
                                          // color: Colors.amber[900],
                                          // color: Colors.yellow[800],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0,
                                          letterSpacing: 0.6),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
//TODO: Work on scroll quantity
                      Theme(
                        data: ThemeData(
                            // accentColor: Colors.black,
                            // accentColor: darkGrey,
                            // accentColor: Colors.brown[900],
                            // accentColor: Colors.amber[900],
                            accentColor: darkYellow,
                            // accentColor: red3,
                            // accentColor: Colors.yellow[800],
                            textTheme: TextTheme(
                              headline: TextStyle(
                                  fontFamily: 'Montserrat',
                                  // fontSize: 14,
                                  fontSize: 17.5,
                                  // color: Colors.red,
                                  // color: mediumYellow,
                                  fontWeight: FontWeight.bold),
                              body1: TextStyle(
                                fontFamily: 'Montserrat',
                                // fontSize: 12,
                                fontSize: 15.5,
                                // color: Colors.grey[400],
                                color: Colors.grey[400],
                              ),
                            )),
                        child: NumberPicker.integer(
                          // initialValue: quantity,
                          initialValue: quantity,
                          minValue: 0,
                          maxValue: 10,
                          onChanged: (value) {
                            setState(() {
                              quantity = value;
                            });
                          },
                          //CanhAdd
                          // textStyle: (fontsize: FontWeight.bold),
                          // itemExtent: 30,
                          itemExtent: 30,
                          // listViewWidth: 40,
                          listViewWidth: 45,
                        ),
                      )
                    ])),
          ),
          Positioned(
              top: 5,
              child: ShopProductDisplay(
                widget.product,
                onPressed: widget.onRemove,
              )),
        ],
      ),
    );
  }
}
