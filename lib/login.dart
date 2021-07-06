import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatelessWidget {
  TextEditingController name=TextEditingController();
  TextEditingController roll=TextEditingController();
  TextEditingController adm=TextEditingController();
  TextEditingController clg=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 20,),
            TextField(
              controller: name,
             decoration: InputDecoration(
               prefix: CircularProgressIndicator(),
               prefixIcon: Icon(Icons.account_circle,color: Colors.deepOrange,size: 40,),
               hintText:"Name" ,
               labelText: "Name",
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),
               ),
             ),
            ),
            SizedBox(height: 20,),
            TextField(
              obscureText: true,
              controller: roll,
              decoration: InputDecoration(
                hintText: "Roll no:",
                labelText: "Roll no:",
                prefix: CircularProgressIndicator(),
                prefixIcon: Icon(Icons.visibility_off_rounded,color: Colors.green,size: 40,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              obscureText: true,
              controller: adm,
              decoration: InputDecoration(
                prefix: CircularProgressIndicator(),
                prefixIcon: Icon(Icons.visibility_off_rounded,color: Colors.purple,size: 40,),
                hintText: "Admisssion no:",
                labelText: "Admission no:",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: clg,
              decoration: InputDecoration(
                hintText: "College",
                labelText: "College",
                prefix: CircularProgressIndicator(),
                prefixIcon: Icon(Icons.account_balance,color: Colors.cyan,size: 40,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 60,
              width: double.infinity,
              child:RaisedButton(
                  color: Colors.teal,
                  onPressed: (){
                    var getName=name.text;
                    var getRollno=int.parse(roll.text);
                    var getAdmission=adm.text;
                    var getCollege=clg.text;
                    print(getName);
                    print(getRollno);
                    print(getAdmission);
                    print(getCollege);


                  },
                  child: Text("SUBMIT",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                    ),
                  ),

              ),
            ),
          ],//children
        ),
      ),
    );
  }
}
