import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main()
{
  runApp(App());
}
class App extends StatelessWidget {
  TextEditingController name=TextEditingController();
  TextEditingController rollno=TextEditingController();
  TextEditingController admission=TextEditingController();
  TextEditingController college=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("STUDENT APP"),
        ),
        body:
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  TextField(
                    controller: name,
                    decoration: InputDecoration(
                      prefix: CircularProgressIndicator(),
                      prefixIcon: Icon(Icons.account_box),
                      labelText: "Name",
                      hintText: "Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: rollno,
                    decoration: InputDecoration(
                      prefix: CircularProgressIndicator(),
                      prefixIcon: Icon(Icons.visibility_off_sharp),
                      labelText: "Rollno:",
                      hintText: "Roll no:",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: admission,
                    decoration: InputDecoration(
                      prefix: CircularProgressIndicator(),
                      prefixIcon: Icon(Icons.lock),
                      labelText: "Admission no:",
                      hintText: "Admission no:",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    maxLines: 2,
                    controller: college,
                    decoration: InputDecoration(
                      prefix: CircularProgressIndicator(),
                      prefixIcon: Icon(Icons.account_balance),
                      labelText: "College",
                      hintText: "College",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Colors.blue,
                      onPressed: (){
                        var getName =name.text;
                        var getRollno =int.parse(rollno.text);
                        var getAdmissionno =int.parse(admission.text);
                        var getCollege=college.text;
                        print(getName);
                        print(getRollno);
                        print(getAdmissionno);
                        print(getCollege);

                      },
                      child: Text("SUBMIT",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),

                ],//children
              ),
            ),
          ),
      ),
    );
  }
}
