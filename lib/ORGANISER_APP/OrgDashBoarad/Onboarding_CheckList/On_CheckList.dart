import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/CreateEvents/Process/CE_Step1.dart';

class OnCheckList extends StatefulWidget {
  const OnCheckList({super.key});

  @override
  State<OnCheckList> createState() => _OnCheckListState();
}

class _OnCheckListState extends State<OnCheckList> {
  int c1 = 0;
  int c2 = 0 ;
  int c3 = 0;
  int c4 = 0;
  int c5 = 0;

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: mQuery.size.width*0.045
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: mQuery.size.height*0.036,),
            Text("Get Started",style: TextStyle(
              fontSize: 32,
              fontFamily: 'SatoshiBold',
              color: Color(0xff201335)
            ),),
            SizedBox(height: mQuery.size.height*0.023,),
            Text("Complete your account setup.",style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'SatoshiBold'
            ),),
            SizedBox(height: mQuery.size.height*0.1,),
            GestureDetector(
              onTap: ()
              {

              },
              child: Container(
                width: double.infinity,
                height: mQuery.size.height*0.1,
                padding: EdgeInsets.symmetric(
                  horizontal: mQuery.size.width*0.045
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Color(0xffF1F1F2)
                  )
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          c1 = c1 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: mQuery.size.width*0.06,
                        height: mQuery.size.height*0.05,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: c1 == 1 ? Color(0xff8DC73F) : Colors.white,
                          border: Border.all(
                            color: c1 == 1 ? Colors.transparent : Color(0xff545454)
                          )
                        ),
                        child: Center(
                          child: c1 == 1 ? Icon(Icons.check,color: Colors.white,size: mQuery.size.height*0.021,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.023,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Complete Organiser Profile Setup",style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'SatoshiMedium'
                        ),),
                        Text("Done",style: TextStyle(
                            fontSize: 11,
                            color: Color(0xff8DC73F),
                            fontFamily: 'SatoshiMedium'
                        ),)
                      ],
                    ),
                    Expanded(child: SizedBox()),
                    Icon(Icons.arrow_right_alt_outlined,color: Color(0xff545454),)
                  ],
                ),
              ),
            ),
            SizedBox(height: mQuery.size.height*0.016,),

            GestureDetector(
              onTap: ()
              {

              },
              child: Container(
                width: double.infinity,
                height: mQuery.size.height*0.1,
                padding: EdgeInsets.symmetric(
                    horizontal: mQuery.size.width*0.045
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                        color: Color(0xffF1F1F2)
                    )
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          c2 = c2 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: mQuery.size.width*0.06,
                        height: mQuery.size.height*0.05,
                        decoration: BoxDecoration(
                          color: c2 == 1 ? Color(0xff8DC73F) : Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: c2 == 1 ? Colors.transparent : Color(0xff545454)
                            )
                        ),
                        child: Center(
                          child: c2 == 1 ? Icon(Icons.check,color: Colors.white,size: mQuery.size.height*0.021,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.023,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Verify Organiser Account",style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'SatoshiMedium'
                        ),),
                        Text("Pending",style: TextStyle(
                            fontSize: 11,
                            color: Color(0xffE71D36),
                            fontFamily: 'SatoshiMedium'
                        ),)
                      ],
                    ),
                    Expanded(child: SizedBox()),
                    Icon(Icons.arrow_right_alt_outlined,color: Color(0xff545454),)
                  ],
                ),
              ),
            ),
            SizedBox(height: mQuery.size.height*0.016,),

            GestureDetector(
              onTap: ()
              {

              },
              child: Container(
                width: double.infinity,
                height: mQuery.size.height*0.1,
                padding: EdgeInsets.symmetric(
                    horizontal: mQuery.size.width*0.045
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                        color: Color(0xffF1F1F2)
                    )
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          c3 = c3 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: mQuery.size.width*0.06,
                        height: mQuery.size.height*0.05,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: c3 == 1 ? Color(0xff8DC73F) : Colors.white,
                            border: Border.all(
                                color: c3 == 1 ? Colors.transparent : Color(0xff545454)
                            )
                        ),
                        child: Center(
                          child: c1 == 1 ? Icon(Icons.check,color: Colors.white,size: mQuery.size.height*0.021,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.023,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Add Payout and Tax Info",style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'SatoshiMedium'
                        ),),
                        Text("Pending",style: TextStyle(
                            fontSize: 11,
                            color: Color(0xffE71D36),
                            fontFamily: 'SatoshiMedium'
                        ),)
                      ],
                    ),
                    Expanded(child: SizedBox()),
                    Icon(Icons.arrow_right_alt_outlined,color: Color(0xff545454),)
                  ],
                ),
              ),
            ),
            SizedBox(height: mQuery.size.height*0.016,),

            GestureDetector(
              onTap: ()
              {
                 createPinBottomSheet(context);
              },
              child: Container(
                width: double.infinity,
                height: mQuery.size.height*0.1,
                padding: EdgeInsets.symmetric(
                    horizontal: mQuery.size.width*0.045
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                        color: Color(0xffF1F1F2)
                    )
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          c4 = c4 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: mQuery.size.width*0.06,
                        height: mQuery.size.height*0.05,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: c4 == 1 ? Color(0xff8DC73F) : Colors.white,
                            border: Border.all(
                                color: c4 == 1 ? Colors.transparent : Color(0xff545454)
                            )
                        ),
                        child: Center(
                          child: c4 == 1 ? Icon(Icons.check,color: Colors.white,size: mQuery.size.height*0.021,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.023,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Create PIN",style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'SatoshiMedium'
                        ),),
                        Text("Pending",style: TextStyle(
                            fontSize: 11,
                            color: Color(0xffE71D36),
                            fontFamily: 'SatoshiMedium'
                        ),)
                      ],
                    ),
                    Expanded(child: SizedBox()),
                    Icon(Icons.arrow_right_alt_outlined,color: Color(0xff545454),)
                  ],
                ),
              ),
            ),
            SizedBox(height: mQuery.size.height*0.016,),

            GestureDetector(
              onTap: ()
              {
                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                   return CE_Step1();
                 }));
              },
              child: Container(
                width: double.infinity,
                height: mQuery.size.height*0.1,
                padding: EdgeInsets.symmetric(
                    horizontal: mQuery.size.width*0.045
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                        color: Color(0xffF1F1F2)
                    )
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          c5 = c5 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: mQuery.size.width*0.06,
                        height: mQuery.size.height*0.05,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: c5 == 1 ? Color(0xff8DC73F) : Colors.white,
                            border: Border.all(
                                color: c5 == 1 ? Colors.transparent : Color(0xff545454)
                            )
                        ),
                        child: Center(
                          child: c5 == 1 ? Icon(Icons.check,color: Colors.white,size: mQuery.size.height*0.021,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.023,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Create First Event",style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'SatoshiMedium'
                        ),),
                        Text("Pending",style: TextStyle(
                            fontSize: 11,
                            color: Color(0xffE71D36),
                            fontFamily: 'SatoshiMedium'
                        ),)
                      ],
                    ),
                    Expanded(child: SizedBox()),
                    Icon(Icons.arrow_right_alt_outlined,color: Color(0xff545454),)
                  ],
                ),
              ),
            ),
            SizedBox(height: mQuery.size.height*0.016,),
          ],
        ),
      ),
    );
  }

  void createPinBottomSheet(BuildContext context)
  {
    var mQuery = MediaQuery.of(context);
    showModalBottomSheet(context: context,
        isScrollControlled: true,
        builder: (BuildContext context)
        {
          return Container(
            width: double.infinity,
            height: mQuery.size.height*0.85,
            padding: EdgeInsets.symmetric(
              horizontal: mQuery.size.width*0.045
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16)
              )
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset("Assets/Images/backIcon.svg"),
                    Text("Create PIN"),
                    SvgPicture.asset("Assets/Images/exitIcon.svg"),
                  ],
                )
              ],
            ),
          );
        }
    );
  }
}


