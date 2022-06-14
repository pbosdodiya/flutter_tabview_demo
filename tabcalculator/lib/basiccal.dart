import 'package:flutter/material.dart';
import 'package:tabcalculator/caldata.dart';
import 'package:tabcalculator/rowsetup.dart';

// first tab page
Widget basiccal(BuildContext context, TextEditingController myCtrl,
    CalData mydata) {
  return SingleChildScrollView(
    child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height,
        ),
        child: Container(
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/calbg1.png"), fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Container(
                    padding: EdgeInsets.all(10.0),
                    child: TextField(                      
                      autofocus: false,
                      readOnly: true,
                      controller: myCtrl,                      
                      maxLines: 1,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(
                          Icons.numbers,
                          color: Colors.grey,
                        ),
                        hintText: 'Number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                    )),
                const SizedBox(height: 20),
                // this column for calculator paid
                Column(
                children:rowsetup(context, myCtrl, mydata)
                ),                
                const SizedBox(height: 10),
              ],
            ))),
  );
}
