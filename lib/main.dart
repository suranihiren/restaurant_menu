import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: first(),
  ));
}
class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}
class _firstState extends State<first> {
  String gender = "";

 double Discount=0;

  bool alustasus = false;
  bool panistatus = false;
  bool pizstatus = false;
  bool dhostatus = false;
  bool vadastatus = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    discount();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Center(child: Text("manubar")),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Container(
                child: TextField(
                    decoration: InputDecoration(
                        hintText: "ENTER YOUR NAME",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)))),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "male",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Radio(
                    value: "male",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                        print(value);
                      });

                      if(gender=="male")
                        {
                          Discount=20;
                        }
                    },
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "female",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Radio(
                    value: "female",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                        print(value);
                        if(gender=="female")
                            {
                              Discount=10;
                        }
                      });
                    },
                  ),

                ],
              ),
              CheckboxListTile(
                title: Text(
                  "alupuri (RS.70)",
                  style: TextStyle(fontSize: 20),
                ),
                value: alustasus,
                onChanged: (value) {
                  setState(() {
                    alustasus = value!;
                    myalldata(alustasus, 70);
                    //total();
                  });
                  print(value);
                },
              ),
              CheckboxListTile(
                title: Text(
                  "panipuri (RS.80)",
                  style: TextStyle(fontSize: 20),
                ),
                value: panistatus,
                onChanged: (value) {
                  setState(() {
                    panistatus = value!;
                    myalldata(panistatus, 80);
                  });
                  print(value);
                },
              ),
              CheckboxListTile(
                title: Text(
                  "pizza (RS.200)",
                  style: TextStyle(fontSize: 20),
                ),
                value: pizstatus,
                onChanged: (value) {
                  setState(() {
                    pizstatus = value!;
                    myalldata(pizstatus, 200);
                  });
                  print(value);
                },
              ),
              CheckboxListTile(
                title: Text(
                  "dhosa (RS.210)",
                  style: TextStyle(fontSize: 20),
                ),
                value: dhostatus,
                onChanged: (value) {
                  setState(() {
                    dhostatus = value!;
                    myalldata(dhostatus, 210);
                  });
                  print(value);
                },
              ),
              CheckboxListTile(
                title: Text(
                  "vadapav (RS.50)",
                  style: TextStyle(fontSize: 20),
                ),
                value: vadastatus,
                onChanged: (value) {
                  setState(() {
                    vadastatus = value!;
                    myalldata(vadastatus, 50);
                  });
                  print(value);
                },
              ),
              Container(
                child: Text(
                  "Male discount 20%",
                  style: TextStyle(fontSize: 25, color: Colors.black,fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                child: Text(
                  "Female discount 10%",
                  style: TextStyle(fontSize: 25, color: Colors.black,fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "TOTAL AMOUT:=${a}",
                  ),
                ),
                height: 50,
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Text("DISCOUNT:=${(a*Discount)/100}"),
                ),
                height: 50,
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(15),
                 child: Text("NET TOTAl=${a-(a*Discount)/100}"),
                ),
                height: 50,
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ],
          ),
        ),
      ),
    );
  }
  int a = 0;
  void myalldata(bool stu, int i) {
    print(stu);
    print(i);
    setState(() {
      if(stu == true) {
        a = a + i;
      }else {
        a = a - i;
      }
    });
  }

  void discount() {


  }

}
