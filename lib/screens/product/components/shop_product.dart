import 'package:ecommerce_int2/app_properties.dart';
import 'package:ecommerce_int2/models/product.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ShopProduct extends StatefulWidget {
// class ShopProduct extends StatefulWidget {
  final Product product;
  final Function onRemove;

  const ShopProduct(this.product, {Key key, this.onRemove}) : super(key: key);

  @override
  _ShopProductState createState() => _ShopProductState();
}

var oCcy = new NumberFormat("#,##0", "vi_VN");

class _ShopProductState extends State<ShopProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        width: MediaQuery.of(context).size.width / 2,
        // width: MediaQuery.of(context).size.width / 2.5,
        child: Column(
          children: <Widget>[
            ShopProductDisplay(
              widget.product,
              onPressed: widget.onRemove,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.product.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: darkGrey,
                ),
              ),
            ),
            Text(
              // '\$${widget.product.price}',
              'đ ${oCcy.format(widget.product.price) ?? 0.0}',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: darkGrey,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  letterSpacing: 0.5),
            ),
          ],
        ));
  }
}

class ShopProductDisplay extends StatefulWidget {
// class ShopProductDisplay extends StatefulWidget {
  final Product product;
  final Function onPressed;

  const ShopProductDisplay(this.product, {Key key, this.onPressed})
      : super(key: key);

  @override
  _ShopProductDisplayState createState() =>
      _ShopProductDisplayState();
}

class _ShopProductDisplayState
    extends State<ShopProductDisplay> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    // bool isChecked = false;
    return SizedBox(
      height: 150,
      width: 200,
      child: Stack(children: <Widget>[
        Positioned(
          left: 25,
          child: SizedBox(
            // height: 150,
            height: 150,
            // width: 150,
            width: 150,
            child: Transform.scale(
              scale: 1.2,
              child: Image.asset('assets/bottom_yellow.png'),
            ),
          ),
        ),
        Positioned(
          // left: 50,
          // Canh Change
          left: 40,
          top: 5,
          child: SizedBox(
              height: 80,
              width: 80,
              child: Image.asset(
                '${widget.product.image}',
                fit: BoxFit.contain,
              )),
        ),
        Positioned(
          //CanhChange
          right: 50,
          // left: 30,
          bottom: 25,
          child: Align(
              child:
                  // Checkbox(
                  //   value: isChecked,
                  //   onChanged: (value){toggleCheckbox(value);},
                  //   activeColor: Colors.pink,
                  //   checkColor: Colors.white,
                  //   tristate: false,
                  // ),
                  Transform.scale(
                      scale: 1.35,
                      child: Checkbox(
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
                      ))

              //   IconButton(
              //     icon: Image.asset('assets/red_clear.png'),
              //     onPressed: widget.onPressed,
              //   ),

              ),
        )
      ]),
    );
  }
}

//CanhCheck StafulWidget
class CheckboxClass extends StatefulWidget {
  @override
  _CheckboxClassState createState() => _CheckboxClassState();
}

class _CheckboxClassState extends State<CheckboxClass> {
  bool isChecked = false;

  //
  // Widget checkboxWidget =             Checkbox(
  //   value: isChecked,
  //   onChanged: (value){toggleCheckbox(value);},
  //   activeColor: Colors.pink,
  //   checkColor: Colors.white,
  //   tristate: false,
  // );

  @override
  Widget build(BuildContext context) {
    // return Container();
    // return Checkbox(
    //   value: isChecked,
    //   onChanged: (bool newValue) {
    //     setState(() {
    //       isChecked = newValue;
    //     });
    //   },
    // );
    return Checkbox(
      value: isChecked,
      onChanged: (bool _newvalue) {
        setState(() {
          isChecked = _newvalue;
        });
      },
      activeColor: Colors.pink,
      checkColor: Colors.white,
      tristate: false,
    );
  }
}
