import 'package:badges/badges.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinput/pinput.dart';

class NonUSEntity extends StatefulWidget {
  const NonUSEntity({super.key});

  @override
  State<NonUSEntity> createState() => _NonUSEntityState();
}

class _NonUSEntityState extends State<NonUSEntity> {


  bool isOn = false;
  int selectedContainerIndex = -1;

  int selectedEntity = -1;

  int selectedStatus = 0;
  int selectedStatus1 = 0;
  int selectedStatus2 = 0;
  int selectedStatus3 = 0;
  int selectedStatus4 = 0;
  int selectedStatus5 = 0;
  int selectedStatus6 = 0;
  int selectedStatus7 = 0;
  int selectedStatus8 = 0;
  int selectedStatus9 = 0;
  int selectedStatus10 = 0;
  int selectedStatus11 = 0;
  int selectedStatus12 = 0;
  int selectedStatus13 = 0;
  int selectedStatus14 = 0;
  int selectedStatus15 = 0;
  int selectedStatus16 = 0;
  int selectedStatus17 = 0;
  int selectedStatus18 = 0;
  int selectedStatus19 = 0;
  int selectedStatus20 = 0;
  int selectedStatus21 = 0;
  int selectedStatus22 = 0;
  int selectedStatus23 = 0;
  int selectedStatus24 = 0;
  int selectedStatus25 = 0;
  int selectedStatus26 = 0;
  int selectedStatus27 = 0;
  int selectedStatus28 = 0;
  int selectedStatus29 = 0;
  int selectedStatus30 = 0;
  int selectedStatus31 = 0;
  int selectedStatus32 = 0;



  int fatcaStatus = -1;

  int fs = 0; // Default state is unchecked
  int fs2 = 0; // Default state is unchecked
  int fs3 = 0; // Default state is unchecked
  int fs4 = 0; // Default state is unchecked
  int fs5 = 0; // Default state is unchecked
  int fs6 = 0; // Default state is unchecked
  int fs7 = 0; // Default state is unchecked
  int fs8 = 0; // Default state is unchecked
  int fs9 = 0; // Default state is unchecked
  int fs10 = 0; // Default state is unchecked
  int fs11 = 0; // Default state is unchecked
  int fs12 = 0; // Default state is unchecked
  int fs13 = 0; // Default state is unchecked
  int fs14 = 0; // Default state is unchecked

  int fs22 = 0;  // for Government

  int fsC = 0; // for 14 .(c)
  int fsC1 = 0; // for 17
  int fsC2 = 0; // for 18
  int fsC3 = 0; // for 21
  int fsC4 = 0; // for 22
  int fsC5 = 0; // for 24 a
  int fsC6 = 0; // for 24 b & c
  int fsC7 = 0; // for 24 d
  int fsC8 = 0; // for 28 a
  int fsC9 = 0; // for 28 b

  int fsC10 = 0; // for 29 a
  int fsC11 = 0; // for 29 b
  int fsC12 = 0; // for 29 c
  int fsC13 = 0; // for 29 d
  int fsC14 = 0; // for 29 f
  int fsC15 = 0; // for 30
  int fsC16 = 0; // for 31
  int fsC17 = 0; // for 32
  int fsC18 = 0; // for 33
  int fsC19 = 0; // for 34
  int fsC20 = 0; // for 35
  int fsC21 = 0; // for 36
  int fsC22 = 0; // for 37 a
  int fsC23 = 0; // for 37 b
  int fsC24 = 0; // for 38
  int fsC25 = 0; // for 39
  int fsC26 = 0; // for 40 a
  int fsC27 = 0; // for 40 b
  int fsC28 = 0; // for 40 c
  int fsC29 = 0; // for 41
  int fsC30= 0; // for 43
  int fsC31= 0; // for last

  TextEditingController organizationController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController countryController2 = TextEditingController();
  TextEditingController disregardedEntityController = TextEditingController();
  TextEditingController tinController = TextEditingController();
  TextEditingController giinController = TextEditingController();
  TextEditingController foreignTinController = TextEditingController();
  TextEditingController referenceController = TextEditingController();
  TextEditingController giinController2 = TextEditingController();
  TextEditingController benificialOwnerController = TextEditingController();


  TextEditingController entityNameController = TextEditingController();
  TextEditingController bussinessNameController = TextEditingController();
  TextEditingController exemptPayeeController = TextEditingController();
  TextEditingController fatcaController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController accountsController = TextEditingController();
  TextEditingController requesterController = TextEditingController();
  TextEditingController signatureController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);

    final defaultPinTheme = PinTheme(
        width: 31,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
                color: Color(0xffC8C8C8)
            )
        )
    );

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: mQuery.size.width * 0.045
        ),
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: mQuery.size.height * 0.032,),
                SvgPicture.asset("Assets/Images/exitIcon.svg"),
                SizedBox(height: mQuery.size.height * 0.032,),
                Text("Non-US Entity or Business (W-8BEN-E Form)", style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'SatoshiBold'
                ),),
                SizedBox(height: mQuery.size.height * 0.023,),
                Text(
                  "Certificate of Status of Beneficial Owner for United States Tax Withholding and Reporting (Entities)",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'SatoshiBold'
                  ),),
                SizedBox(height: mQuery.size.height * 0.032,),
                Text(
                  "For use by individuals. Entities must use Form W-8BEN-E."
                    "Go to www.irs.gov/FormW8BEN for instructions and the latest information."
                "Give this form to the withholding agent or payer. Do not send to the IRS.",
                  style: TextStyle(
                      color: Color(0xff696D61),
                      fontSize: 13,
                      fontFamily: 'SatoshiMedium'
                  ),),

                SizedBox(height: mQuery.size.height*0.023,),
                Text("Do NOT use this form if:",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff696D61),
                  fontFamily: 'SatoshiBold'
                ),),

                SizedBox(height: mQuery.size.height*0.016,),
                Text("• U.S. entity or U.S. citizen or resident ",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff696D61)
                ),),
                SizedBox(height: mQuery.size.height*0.007,),
                Text("• A foreign individual",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff696D61)
                ),),
                SizedBox(height: mQuery.size.height*0.007,),
                Text("• A foreign individual or entity claiming that income is effectively connected with the conduct of trade or"
                    " business within the United States (unless claiming treaty benefits)",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff696D61)
                ),),
                SizedBox(height: mQuery.size.height*0.007,),
                Text("• A foreign partnership, a foreign simple trust, or a foreign grantor trust (unless claiming "
                    "treaty benefits) (see instructions for exceptions) ",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff696D61)
                ),),
                SizedBox(height: mQuery.size.height*0.007,),
                Text("• A foreign government, international organization, foreign central bank of issue, foreign tax-exempt organization, foreign private foundation, or government of a U.S. possession claiming that income is effectively connected U.S. income or that is claiming the applicability of section(s) 115(2), 501(c), 892, 895, or 1443(b) (unless claiming treaty benefits) "
                    "(see instructions for other exceptions)",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff696D61)
                ),),
                SizedBox(height: mQuery.size.height*0.007,),
                Text("• Any person acting as an intermediary (including a qualified intermediary acting as a qualified derivatives dealer) .",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff696D61)
                ),),

                SizedBox(height: mQuery.size.height*0.032,),
                Text("Part I. Identification of Beneficial Owner",style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'SatoshiBold',
                  fontSize: 24
                ),),

                SizedBox(height: mQuery.size.height*0.032,),

                Text(
                  "(1) Name of organization that is the beneficial owner",
                  style: TextStyle(
                      color: Color(0xff696D61),
                      fontSize: 13,
                      fontFamily: 'SatoshiMedium'
                  ),),
                SizedBox(height: mQuery.size.height * 0.016,),
                Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.055,
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width * 0.03
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xffC8C8C8)
                      ),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextField(
                    controller: organizationController,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        border: InputBorder.none
                    ),
                  ),
                ),

                SizedBox(height: mQuery.size.height * 0.023,),
                Text(
                  "(2) Country of incorporation or organization",
                  style: TextStyle(
                      color: Color(0xff696D61),
                      fontSize: 13,
                      fontFamily: 'SatoshiMedium'
                  ),),
                SizedBox(height: mQuery.size.height * 0.016,),
                Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.055,
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width * 0.03
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xffC8C8C8)
                      ),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextField(
                    controller: countryController,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        border: InputBorder.none
                    ),
                  ),
                ),


                SizedBox(height: mQuery.size.height * 0.023,),
                Text(
                  "(3) Name of disregarded entity receiving the payment (if applicable, see instructions)",
                  style: TextStyle(
                      color: Color(0xff696D61),
                      fontSize: 13,
                      fontFamily: 'SatoshiMedium'
                  ),),
                SizedBox(height: mQuery.size.height * 0.016,),
                Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.055,
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width * 0.03
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xffC8C8C8)
                      ),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextField(
                    controller: disregardedEntityController,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        border: InputBorder.none
                    ),
                  ),
                ),

                SizedBox(height: mQuery.size.height * 0.023,),
                Text(
                  "(4) Chapter 3 Status (entity type) (Must check one box only):",
                  style: TextStyle(
                      color: Color(0xff696D61),
                      fontSize: 13,
                      fontFamily: 'SatoshiMedium'
                  ),),
                SizedBox(height: mQuery.size.height * 0.016,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedContainerIndex = 0;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: selectedContainerIndex == 0 ? Color(0xff8DC73F) : Colors.white,
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedContainerIndex == 0 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Corporation",style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),
                    ),
                    Expanded(child: SizedBox()),
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedContainerIndex = 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedContainerIndex == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedContainerIndex == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Central Bank of Issue",style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),)
                  ],
                ),
                SizedBox(height: mQuery.size.height*0.02,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedContainerIndex = 2;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedContainerIndex == 2 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedContainerIndex == 2 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Partnership",style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),
                    ),
                    Expanded(child: SizedBox()),
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedContainerIndex = 3;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedContainerIndex == 3 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedContainerIndex == 3 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Private foundation",style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),
                  ],
                ),
                SizedBox(height: mQuery.size.height*0.02,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedContainerIndex = 4;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedContainerIndex == 4 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedContainerIndex == 4 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Simple trust",style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),
                    SizedBox(width: mQuery.size.width*0.25,),
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedContainerIndex = 5;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedContainerIndex == 5 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedContainerIndex == 5 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Estate",style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),
                    ),
                  ],
                ),

                SizedBox(height: mQuery.size.height*0.02,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedContainerIndex = 6;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedContainerIndex == 6 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedContainerIndex == 6 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Tax-exempt organization",style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),
                    SizedBox(width: mQuery.size.width*0.03),
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedContainerIndex = 7;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedContainerIndex == 7 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedContainerIndex == 7 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Foreign Government \n- Integral Part",style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),
                    ),
                  ],
                ),

                SizedBox(height: mQuery.size.height*0.02,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedContainerIndex = 8;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedContainerIndex == 8 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedContainerIndex == 8 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Complex trust",style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),
                    SizedBox(width: mQuery.size.width*0.2),
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedContainerIndex = 9;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedContainerIndex == 9 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedContainerIndex == 9 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Grantor trust",style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),
                    ),
                  ],
                ),

                SizedBox(height: mQuery.size.height*0.02,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedContainerIndex = 10;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedContainerIndex == 10 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedContainerIndex == 10 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Foreign Government -\n Controlled Entity",style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),
                    SizedBox(width: mQuery.size.width*0.007),
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedContainerIndex = 11;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedContainerIndex == 11 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedContainerIndex == 11 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("International organization",style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),
                    ),
                  ],
                ),

                SizedBox(height: mQuery.size.height*0.032,),
                Text("If you entered disregarded entity, partnership, simple trust, or grantor trust above, is the entity a hybrid making a treaty claim? If “Yes,” complete Part III.",style: TextStyle(
                    color: Color(0xff5E6258),
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium'
                ),),
                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedEntity = 0;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedEntity == 0 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedEntity == 0 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Yes",style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),
                    SizedBox(width: mQuery.size.width*0.03),
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedEntity = 1 ;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedEntity == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedEntity == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("No",style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),
                    ),
                  ],
                ),

                SizedBox(height: mQuery.size.height * 0.032,),
                Text("(5) Chapter 4 Status (FATCA status) (See instructions for details and complete the certification below for the entity's applicable status.)",style: TextStyle(
                    color: Color(0xff5E6258),
                    fontSize: 13,
                    fontFamily: 'SatoshiBold'
                ),),
                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedStatus = selectedStatus == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedStatus == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedStatus == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Nonparticipating FFI (including an FFI related \nto a Reporting IGA FFI other than a \ndeemed-compliant FFI, participating FFI, or\n exempt beneficial owner).",style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),
                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedStatus1 = selectedStatus1 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedStatus1 == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedStatus1 == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Participating FFI.",style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),
                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedStatus2 = selectedStatus2 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedStatus2 == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedStatus2 == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Reporting Model 2 FFI.", style : TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),
                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedStatus3 = selectedStatus3 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedStatus3 == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedStatus3 == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Registered deemed-compliant FFI (other than\n a reporting Model 1 FFI, sponsored FFI, or\n nonreporting IGA FFI covered in Part XII).\n See instructions.",style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),
                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedStatus4 = selectedStatus4 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedStatus4 == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedStatus4 == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Nonparticipating FFI (including an FFI related \nto a Reporting IGA FFI other than a \ndeemed-compliant FFI, participating FFI, or\n exempt beneficial owner).",style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),
                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedStatus5 = selectedStatus5 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedStatus5 == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedStatus5 == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Nonparticipating FFI (including an FFI related \nto a Reporting IGA FFI other than a \ndeemed-compliant FFI, participating FFI, or\n exempt beneficial owner).",style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),
                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedStatus6 = selectedStatus6 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedStatus6 == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedStatus6 == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Sponsored FFI. Complete Part IV", style : TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),
                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedStatus7 = selectedStatus7 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedStatus7 == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedStatus7 == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Certified deemed-compliant nonregistering local\n bank. Complete Part V.", style : TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),
                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedStatus8 = selectedStatus8 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedStatus8 == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedStatus8 == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Certified deemed-compliant FFI with only \nlow-value accounts. Complete Part VI.", style : TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),
                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedStatus9 = selectedStatus9 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedStatus9 == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedStatus9 == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Certified deemed-compliant sponsored, closely \nheld investment vehicle. Complete Part VII.", style : TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),

                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedStatus10 = selectedStatus10 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedStatus10 == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedStatus10 == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Certified deemed-compliant limited life debt \ninvestment entity. Complete Part VIII.", style : TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),

                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedStatus11 = selectedStatus11 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedStatus11  == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedStatus11 == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Certain investment entities that do not maintain \nfinancial accounts. Complete Part IX.", style : TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),

                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedStatus12 = selectedStatus12 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedStatus12  == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedStatus12  == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Owner-documented FFI. Complete Part X.", style : TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),

                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedStatus13 = selectedStatus13 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedStatus13  == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedStatus13  == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Restricted distributor. Complete Part XI.", style : TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),

                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedStatus14 = selectedStatus14 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedStatus14  == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedStatus14  == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Nonreporting IGA FFI. Complete Part XII.", style : TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),

                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedStatus15 = selectedStatus15 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedStatus15  == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedStatus15  == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Foreign government, government of a U.S. \npossession, or foreign central bank of issue.\nComplete Part XIII.", style : TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),

                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedStatus16 = selectedStatus16 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedStatus16  == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedStatus16  == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("International organization. Complete Part XIV.", style : TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),

                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedStatus17 = selectedStatus17 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedStatus17  == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedStatus17  == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Exempt retirement plans. Complete Part XV.", style : TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),

                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedStatus18 = selectedStatus18 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedStatus18  == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedStatus18  == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Entity wholly owned by exempt beneficial owners. \nComplete Part XVI.", style : TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),


                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedStatus19 = selectedStatus19 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedStatus19  == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedStatus19  == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Territory financial institution. Complete Part XVII.", style : TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),


                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedStatus20 = selectedStatus20 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedStatus20  == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedStatus20  == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Excepted nonfinancial group entity. Complete \nPart XVIII.", style : TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),


                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedStatus21 = selectedStatus21 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedStatus21  == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedStatus21  == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Excepted nonfinancial start-up company. Complete \nPart XIX.", style : TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),


                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedStatus22 = selectedStatus22 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedStatus22  == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedStatus22  == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Excepted nonfinancial entity in liquidation or \nbankruptcy. Complete Part XX.", style : TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),


                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedStatus23 = selectedStatus23 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedStatus23  == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedStatus23  == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("501(c) organization. Complete Part XXI.", style : TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),





                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedStatus24 = selectedStatus24 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedStatus24  == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedStatus24  == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Nonprofit organization. Complete Part XXII.", style : TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),

                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedStatus25 = selectedStatus25 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedStatus25  == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedStatus25  == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Publicly traded NFFE or NFFE affiliate of a publicly \ntraded corporation. Complete Part XXIII.", style : TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),


                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedStatus26 = selectedStatus26 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedStatus26  == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedStatus26  == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Excepted territory NFFE. Complete Part XXIV.", style : TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),

                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedStatus27 = selectedStatus27 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedStatus27  == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedStatus27  == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Active NFFE. Complete Part XXV.", style : TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),

                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedStatus28 = selectedStatus28 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedStatus28  == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedStatus28  == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Passive NFFE. Complete Part XXVI.", style : TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),

                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedStatus29 = selectedStatus29 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedStatus29  == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedStatus29  == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Excepted inter-affiliate FFI. Complete Part XXVII.", style : TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),

                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedStatus30 = selectedStatus30 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedStatus30 == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedStatus30  == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Direct reporting NFFE.", style : TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),

                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedStatus31 = selectedStatus31 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedStatus31  == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedStatus31  == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Sponsored direct reporting NFFE. Complete \nPart XXVIII.", style : TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),

                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          selectedStatus32 = selectedStatus32 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: selectedStatus32  == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: selectedStatus32  == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Account that is not a financial account.", style : TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),

                SizedBox(height: mQuery.size.height*0.032,),
                Text("(6) Permanent residence address (street, apt. or suite no., or rural route). Do not use a P.O. box or in-care-of address (other than a registered address).",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiBold',
                  color: Color(0xff5E6258)
                ),),

                SizedBox(height: mQuery.size.height*0.016,),
                Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.055,
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width * 0.03
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xffC8C8C8)
                      ),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextField(
                    controller: addressController,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        border: InputBorder.none
                    ),
                  ),
                ),

                SizedBox(height: mQuery.size.height*0.023,),
                Text("City or town, state or province. Include postal code where appropriate. ",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiBold',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.016,),
                Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.055,
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width * 0.03
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xffC8C8C8)
                      ),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextField(
                    controller: cityController,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        border: InputBorder.none
                    ),
                  ),
                ),

                SizedBox(height: mQuery.size.height*0.023,),
                Text("Country",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiBold',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.016,),
                Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.055,
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width * 0.03
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xffC8C8C8)
                      ),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextField(
                    controller: countryController2,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        border: InputBorder.none
                    ),
                  ),
                ),

                SizedBox(height: mQuery.size.height*0.023,),
                Text("(8) U.S. taxpayer identification number (TIN), if required",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiBold',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.016,),
                Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.055,
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width * 0.03
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xffC8C8C8)
                      ),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextField(
                    controller: tinController,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        border: InputBorder.none
                    ),
                  ),
                ),

                SizedBox(height: mQuery.size.height*0.023,),
                Text("(9a) GIIN",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiBold',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.016,),
                Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.055,
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width * 0.03
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xffC8C8C8)
                      ),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextField(
                    controller: giinController,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        border: InputBorder.none
                    ),
                  ),
                ),

                SizedBox(height: mQuery.size.height*0.023,),
                Text("(9b) Foreign TIN",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiBold',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.016,),
                Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.055,
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width * 0.03
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xffC8C8C8)
                      ),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextField(
                    controller: foreignTinController,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        border: InputBorder.none
                    ),
                  ),
                ),

                SizedBox(height: mQuery.size.height*0.023,),
                Text("(9c) Check if FTIN not legally required",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiBold',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.016,),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Transform.scale(
                      scale: 1.1,
                      child: Switch(
                        value: isOn,
                        inactiveTrackColor: Colors.grey,
                        activeTrackColor: const Color(0xff8DC73F),
                        thumbColor: MaterialStateProperty.all<Color>(Colors.white),
                        onChanged: (value) {
                          setState(() {
                            isOn = value;
                          });
                        },
                      ),
                    ),
                    Positioned(
                      left: isOn ? 6 : null,
                      right: isOn ? null : 6,
                      child: Text(
                        isOn ? 'ON' : 'OFF',
                        style: TextStyle(
                            color: isOn ? Colors.white : Colors.red,
                            fontFamily: 'SatoshiMedium',
                            fontSize: 11
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: mQuery.size.height*0.023,),
                Text("(10) Reference number(s) (see instructions)",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiBold',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.016,),
                Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.055,
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width * 0.03
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xffC8C8C8)
                      ),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextField(
                    controller: referenceController,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        border: InputBorder.none
                    ),
                  ),
                ),

                SizedBox(height: mQuery.size.height*0.023),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Note : ",style: TextStyle(
                        fontSize: 13,
                          fontFamily: 'SatoshiBold',
                          color: Color(0xff5E6258)
                      )
                      ),
                      TextSpan(
                          text: " : Please complete remainder of the form including signing the form in Part XXX.",style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'SatoshiMedium',
                          color: Color(0xff5E6258)
                      )
                      )
                    ]
                  )
                ),

                SizedBox(height: mQuery.size.height*0.032),
                Text("Part II. Disregarded Entity or Branch Receiving Payment.",style: TextStyle(
                  fontSize: 20,
                    fontFamily: 'SatoshiBold',
                    color: Colors.black
                ),),

                SizedBox(height: mQuery.size.height*0.023),
                Text("(Complete only if a disregarded entity with a GIIN or a branch of an FFI in a country other "
                    "than the FFI’s country of residence. See instructions.)",style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'SatoshiMedium',
                    color: Colors.black
                ),),

                SizedBox(height: mQuery.size.height*0.023),
                Text("(11) Chapter 4 Status (FATCA status) of disregarded entity or branch receiving payment",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiBold',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.016),

                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          fatcaStatus = 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: fatcaStatus == 1 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: fatcaStatus == 1 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Branch treated as nonparticipating FFI.",style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),
                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          fatcaStatus = 2;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: fatcaStatus == 2 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: fatcaStatus == 2 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Participating FFI.",style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),

                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          fatcaStatus = 3;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: fatcaStatus == 3 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: fatcaStatus == 3 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Reporting Model 1 FFI.",style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),

                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          fatcaStatus = 4;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: fatcaStatus == 4 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: fatcaStatus == 4 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("Reporting Model 2 FFI.",style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),

                SizedBox(height: mQuery.size.height*0.01,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          fatcaStatus = 5;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: fatcaStatus == 5 ? Color(0xff8DC73F) : Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Color(0xffCFD3D4)
                            )
                        ),
                        child: Center(
                          child: fatcaStatus == 5 ? Icon(Icons.check,color : Colors.white,
                            size: mQuery.size.height*0.02,) : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Text("U.S. Branch.",style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium'
                    ),),

                  ],
                ),

                SizedBox(height: mQuery.size.height*0.023),
                Text("(12) Address of disregarded entity or branch (street, apt. or suite no., or rural route). Do not use a P.O. box or in-care-of address (other than a registered address).",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiBold',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.016),
                Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.055,
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width * 0.03
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xffC8C8C8)
                      ),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextField(
                    controller: disregardedEntityController,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        border: InputBorder.none
                    ),
                  ),
                ),



                SizedBox(height: mQuery.size.height*0.023),
                Text("City or town, state or province. Include postal code where appropriate.",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiBold',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.016),
                Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.055,
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width * 0.03
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xffC8C8C8)
                      ),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextField(
                    controller: cityController,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        border: InputBorder.none
                    ),
                  ),
                ),



                SizedBox(height: mQuery.size.height*0.023),
                Text("(13) GIIN (if any)",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiBold',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.016),
                Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.055,
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width * 0.03
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xffC8C8C8)
                      ),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextField(
                    controller: giinController2,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        border: InputBorder.none
                    ),
                  ),
                ),

                SizedBox(height: mQuery.size.height*0.032),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Part III. Claim of Tax Treaty Benefits",style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'SatoshiBold',
                        color: Colors.black
                      )
                      ),
                      TextSpan(
                          text: " (if applicable). (For chapter 3 purposes only.",style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'SatoshiMedium',
                          color: Colors.black
                      )
                      )
                    ]
                  )
                ),

                SizedBox(height: mQuery.size.height*0.023),
                Text("(14) I certify that (check all that apply):",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiBold',
                    color: Color(0xff5E6258)
                ),),




                SizedBox(height: mQuery.size.height*0.023),
                Row(
                  children: [
                    Text("a", style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'SatoshiBold',
                        color: Color(0xff5E6258),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.055),
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'a'
                        setState(() {
                          fs = fs == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fs == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fs == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("The beneficial owner is a resident of", style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium',
                      ),
                    ),
                  ],
                ),

                SizedBox(height: mQuery.size.height*0.016),
                Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.055,
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width * 0.03
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xffC8C8C8)
                      ),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextField(
                    controller: benificialOwnerController,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        border: InputBorder.none
                    ),
                  ),
                ),
                SizedBox(height: mQuery.size.height*0.016,),
                Text("within the meaning of the income tax treaty"
                    " between the United States and that country.", style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258),
                  ),
                ),


                SizedBox(height: mQuery.size.height * 0.023),
                Text(
                  "b",
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiBold',
                    color: Color(0xff5E6258),
                  ),
                ),
                SizedBox(height: mQuery.size.height*0.016,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'b'
                        setState(() {
                          fs2 = fs2 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fs2 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fs2 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("The beneficial owner derives the item (or items) \nof income for which the treaty benefits are claimed, \nand, if applicable, meets the requirements of the \ntreaty provision dealing with limitation on benefits. \nThe following are types of limitation on benefits \nprovisions that may be included in an applicable \ntax treaty (check only one; see instructions):",
                      style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium',
                      ),
                    ),
                  ],
                ),


                SizedBox(height: mQuery.size.height*0.016,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'b'
                        setState(() {
                          fs22 = fs22 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fs22 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fs22 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("Government",
                      style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium',
                      ),
                    ),

                  ],
                ),

                SizedBox(height: mQuery.size.height*0.016,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'b'
                        setState(() {
                          fs3 = fs3 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fs3 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fs3 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("Tax-exempt pension trust or pension fund",
                      style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium',
                      ),
                    ),

                  ],
                ),

                SizedBox(height: mQuery.size.height*0.016,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'b'
                        setState(() {
                          fs4 = fs4 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fs4 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fs4 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("Other tax-exempt organization",
                      style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium',
                      ),
                    ),

                  ],
                ),

                SizedBox(height: mQuery.size.height*0.016,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'b'
                        setState(() {
                          fs5 = fs5 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fs5 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          )
                        ),
                        child: Center(
                          child: fs5 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("Publicly traded corporation",
                      style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium',
                      ),
                    ),

                  ],
                ),

                SizedBox(height: mQuery.size.height*0.016,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'b'
                        setState(() {
                          fs6 = fs6 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fs6 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fs6 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("Subsidiary of a publicly traded corporation",
                      style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium',
                      ),
                    ),

                  ],
                ),

                SizedBox(height: mQuery.size.height*0.016,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'b'
                        setState(() {
                          fs7 = fs7 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fs7 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fs7 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("Company that meets the ownership and base \nerosion test",
                      style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium',
                      ),
                    ),

                  ],
                ),

                SizedBox(height: mQuery.size.height*0.016,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'b'
                        setState(() {
                          fs8 = fs8 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fs8 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fs8 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("Company that meets the derivative benefits test",
                      style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium',
                      ),
                    ),

                  ],
                ),

                SizedBox(height: mQuery.size.height*0.016,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'b'
                        setState(() {
                          fs9 = fs9 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fs9 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fs9 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("Company with an item of income that meets active \ntrade or business test",
                      style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium',
                      ),
                    ),

                  ],
                ),

                SizedBox(height: mQuery.size.height*0.016,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'b'
                        setState(() {
                          fs10 = fs10 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fs10 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fs10 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("Favorable discretionary determination by the U.S. \ncompetent authority received",
                      style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium',
                      ),
                    ),

                  ],
                ),

                SizedBox(height: mQuery.size.height*0.016,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'b'
                        setState(() {
                          fs11 = fs11 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fs11 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fs11 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("No LOB article in treaty",
                      style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium',
                      ),
                    ),

                  ],
                ),

                SizedBox(height: mQuery.size.height*0.016,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'b'
                        setState(() {
                          fs12 = fs12 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fs12 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fs12 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("Other (specify Article and paragraph):",
                      style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium',
                      ),
                    ),

                  ],
                ),
                SizedBox(height: mQuery.size.height*0.016,),
                Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.055,
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width * 0.03
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xffC8C8C8)
                      ),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextField(
                    // Controller is missing here
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        border: InputBorder.none
                    ),
                  ),
                ),

                SizedBox(height: mQuery.size.height * 0.023),
                Text(
                  "c",
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiBold',
                    color: Color(0xff5E6258),
                  ),
                ),
                SizedBox(height: mQuery.size.height*0.016,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'b'
                        setState(() {
                          fsC = fsC == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fsC == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fsC == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("The beneficial owner is claiming treaty benefits \nfor U.S. source dividends received from a foreign \ncorporation or interest from a U.S. trade or business \nof a foreign corporation and meets qualified resident \nstatus (see instructions).",
                      style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium',
                      ),
                    ),
                  ],
                ),

                SizedBox(height: mQuery.size.height*0.032,),
                Text.rich(
                    TextSpan(
                        children: [
                          TextSpan(
                              text: "(15) Special rates and conditions ",style: TextStyle(
                              fontFamily: 'SatoshiBold',
                              fontSize: 13,
                              color: Color(0xff83898C)
                          )
                          ),
                          TextSpan(
                              text: " (if applicable—see instructions):",style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'SatoshiMedium',
                              color: Color(0xff83898C)
                          )
                          )
                        ]
                    )
                ),
                SizedBox(height: mQuery.size.height*0.023),
                Text("The beneficial owner is claiming the provisions of Article and paragraph",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff83898C)
                ),),
                SizedBox(height:mQuery.size.height*0.016),
                Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.055,
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width * 0.03
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xffC8C8C8)
                      ),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        border: InputBorder.none
                    ),
                  ),
                ),
                SizedBox(height:mQuery.size.height*0.023),


                Text("of the treaty identified on line 14a above to claim a",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff83898C)
                ),),
                SizedBox(height:mQuery.size.height*0.016),
                Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.055,
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width * 0.03
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xffC8C8C8)
                      ),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        border: InputBorder.none
                    ),
                  ),
                ),
                SizedBox(height:mQuery.size.height*0.023),

                Text("% rate of withholding on (specify type of income):",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff83898C)
                ),),
                SizedBox(height:mQuery.size.height*0.016),
                Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.055,
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width * 0.03
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xffC8C8C8)
                      ),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        border: InputBorder.none
                    ),
                  ),
                ),
                SizedBox(height:mQuery.size.height*0.023),

                Text("Explain the additional conditions in the Article the beneficial owner meets to be eligible for the rate of withholding:",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff83898C)
                ),),
                SizedBox(height:mQuery.size.height*0.016),
                Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.055,
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width * 0.03
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xffC8C8C8)
                      ),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        border: InputBorder.none
                    ),
                  ),
                ),
                SizedBox(height:mQuery.size.height*0.023),

                Text("Part IV.  Sponsored FFI",style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'SatoshiBold',
                   color: Colors.black
                ),),
                SizedBox(height:mQuery.size.height*0.023),

                Text("(16) Sponsored FFI",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiBold',
                    color: Color(0xff83898C)
                ),),
                SizedBox(height:mQuery.size.height*0.016),
                Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.055,
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width * 0.03
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xffC8C8C8)
                      ),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        border: InputBorder.none
                    ),
                  ),
                ),
                SizedBox(height:mQuery.size.height*0.023),

                Text("(17) Check whichever box applies.",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiBold',
                    color: Color(0xff83898C)
                ),),
                SizedBox(height:mQuery.size.height*0.016),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'b'
                        setState(() {
                          fsC1 = fsC1 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fsC1 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fsC1 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("I certify that the entity identified in Part I:",
                      style: TextStyle(
                        color: Color(0xff83898C),
                        fontSize: 12,
                        fontFamily: 'SatoshiMedium',
                      ),
                    ),

                  ],
                ),

                SizedBox(height: mQuery.size.height * 0.023,),
                Text("• Is a controlled foreign corporation as defined in section 957(a); ",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff83898C)
                ),),
                SizedBox(height:mQuery.size.height*0.01),
                Text("• Is not a QI, WP, or WT; ",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff83898C)
                ),),
                SizedBox(height:mQuery.size.height*0.01),
                Text("• Is wholly owned, directly or indirectly, by the U.S. financial institution identified above that agrees to act as the sponsoring entity for this entity; and ",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff83898C)
                ),),
                SizedBox(height:mQuery.size.height*0.01),
                Text("• Shares a common electronic account system with the sponsoring entity (identified above) that enables the sponsoring entity to identify all account holders and payees of the entity and to access all account and customer information maintained by the entity including, but not limited to, customer identification information, customer documentation, account balance, and all payments made to account holders or payees.",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff83898C)
                ),),


                SizedBox(height: mQuery.size.height*0.023,),
                Text('Part V.  Certified Deemed-Compliant Nonregistering Local Bank',style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'SatoshiBold',
                  color: Colors.black
                ),),

                SizedBox(height: mQuery.size.height*0.023),
                Row(
                  children: [
                    Text("(18)", style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff5E6258),
                    ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.055),
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'a'
                        setState(() {
                          fsC2 = fsC2 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fsC2 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fsC2 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("I certify that the FFI identified in Part I:", style: TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),
                    ),
                  ],
                ),

                SizedBox(height: mQuery.size.height*0.023),
                Text("• Operates and is licensed solely as a bank or credit union (or similar cooperative credit organization operated without profit) in its country of incorporation or organization; ", style: TextStyle(
                  color: Color(0xff83898C),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• Engages primarily in the business of receiving deposits from and making loans to, with respect to a bank, retail customers unrelated to such bank and, with respect to a credit union or similar cooperative credit organization, members, provided that no member has a greater than 5% interest in such credit union or cooperative credit organization; ", style: TextStyle(
                  color: Color(0xff83898C),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• Does not solicit account holders outside its country of organization; ", style: TextStyle(
                  color: Color(0xff83898C),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• Has no fixed place of business outside such country (for this purpose, a fixed place of business does not include a location that is not advertised to the public and from which the FFI performs solely administrative support functions); ", style: TextStyle(
                  color: Color(0xff83898C),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• Has no more than \$175 million in assets on its balance sheet and, if it is a member of an expanded affiliated group, the group has no more than \$500 million in total assets on its consolidated or combined balance sheets; and ",style: TextStyle(
                  color: Color(0xff83898C),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• Does not have any member of its expanded affiliated group that is a foreign financial institution, other than a foreign financial institution that is incorporated or organized in the same country as the FFI identified in Part I and that meets the requirements set forth in this part.", style :  TextStyle(
                  color: Color(0xff83898C),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),),

                SizedBox(height: mQuery.size.height*0.032),
                Text("Part VI.  Certified Deemed-Compliant FFI with Only Low-Value Accounts", style : TextStyle(
                    fontSize: 20,
                    fontFamily: 'SatoshiBold',
                    color: Colors.black
                ),),

                SizedBox(height: mQuery.size.height*0.023),
                Row(
                  children: [
                    Text("(19)", style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff5E6258),
                    ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.055),
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'a'
                        setState(() {
                          fsC2 = fsC2 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fsC2 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fsC2 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("I certify that the FFI identified in Part I:", style: TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),
                    ),
                  ],
                ),

                SizedBox(height: mQuery.size.height*0.023),
                Text("• Is not engaged primarily in the business of investing, reinvesting, or trading in securities, partnership interests, commodities, notional principal contracts, insurance or annuity contracts, or any interest (including a futures or forward contract or option) in such security, partnership interest, commodity, notional principal contract, insurance contract or annuity contract; ", style: TextStyle(
                  color: Color(0xff83898C),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• No financial account maintained by the FFI or any member of its expanded affiliated group, if any, has a balance or value in excess of \$50,000 (as determined after applying applicable account aggregation rules); and ", style : TextStyle(
                  color: Color(0xff83898C),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• Neither the FFI nor the entire expanded affiliated group, if any, of the FFI, have more than \$50 million in assets on its consolidated or combined balance sheet as of the end of its most recent accounting year.", style : TextStyle(
                  color: Color(0xff83898C),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),),


                SizedBox(height: mQuery.size.height*0.032),

                Text("Part VII.  Certified Deemed-Compliant Sponsored, Closely Held Investment Vehicle", style : TextStyle(
                    fontSize: 20,
                    fontFamily: 'SatoshiBold',
                    color: Colors.black
                ),),

                SizedBox(height: mQuery.size.height*0.023),

                Text("(20) Name of sponsoring entity:", style :  TextStyle(
                  color: Color(0xff83898C),
                  fontSize: 13,
                  fontFamily: 'SatoshiBold',
                ),),
                SizedBox(height: mQuery.size.height*0.016,),
                Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.055,
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width * 0.03
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xffC8C8C8)
                      ),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        border: InputBorder.none
                    ),
                  ),
                ),

                SizedBox(height: mQuery.size.height*0.032),
                Row(
                  children: [
                    Text("(21)", style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff5E6258),
                    ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.055),
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'a'
                        setState(() {
                          fsC3 = fsC3 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fsC3 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fsC3 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("I certify that the FFI identified in Part I:", style: TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),
                    ),
                  ],
                ),

                SizedBox(height: mQuery.size.height*0.032),
                Text("• Is an FFI solely because it is an investment entity described in Regulations section 1.1471-5(e)(4); ", style : TextStyle(
                  color: Color(0xff83898C),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• Is not a QI, WP, or WT; ", style : TextStyle(
                  color: Color(0xff83898C),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• Will have all of its due diligence, withholding, and reporting responsibilities (determined as if the FFI were a participating FFI) fulfilled by the sponsoring entity identified on line 20; and ", style : TextStyle(
                  color: Color(0xff83898C),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• 20 or fewer individuals own all of the debt and equity interests in the entity (disregarding debt interests owned by U.S. financial institutions, participating FFIs, registered deemed-compliant FFIs, and certified deemed-compliant FFIs and equity interests owned by an entity if that entity owns 100% of the equity interests in the FFI and is itself a sponsored FFI).", style : TextStyle(
                  color: Color(0xff83898C),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),),


                SizedBox(height: mQuery.size.height*0.032),
                Text("Part VIII.  Certified Deemed-Compliant Limited Life Debt Investment Entity", style :  TextStyle(
                    fontSize: 20,
                    fontFamily: 'SatoshiBold',
                    color: Colors.black
                ),),

                SizedBox(height: mQuery.size.height*0.023),
                Row(
                  children: [
                    Text("(22)", style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff5E6258),
                    ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.055),
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'a'
                        setState(() {
                          fsC4 = fsC4 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fsC4 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fsC4 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("I certify that the FFI identified in Part I:", style: TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),
                    ),
                  ],
                ),

                SizedBox(height: mQuery.size.height*0.032),
                Text("• Was in existence as of January 17, 2013; ", style : TextStyle(
                  color: Color(0xff83898C),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• Issued all classes of its debt or equity interests to investors on or before January 17, 2013, pursuant to a trust indenture or similar agreement; and ", style : TextStyle(
                  color: Color(0xff83898C),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• Is certified deemed-compliant because it satisfies the requirements to be treated as a limited life debt investment entity (such as the restrictions with respect to its assets and other requirements under Regulations section 1.1471-5(f)(2)(iv)).", style : TextStyle(
                  color: Color(0xff83898C),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),),

                SizedBox(height: mQuery.size.height*0.023),

                Text("Part X.  Owner-Documented FFI", style :  TextStyle(
                    fontSize: 20,
                    fontFamily: 'SatoshiBold',
                    color: Colors.black
                ),),

                SizedBox(height: mQuery.size.height*0.023),
                RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: "Note:",style: TextStyle(
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiBold',
                            fontSize: 13
                        )
                        ),
                        TextSpan(
                            text: " This status only applies if the U.S. financial institution, participating FFI, or reporting Model 1 FFI to which this form is given has agreed that it will treat the FFI as an owner-documented FFI (see instructions for eligibility requirements). In addition, the FFI must make the certifications below.",style: TextStyle(
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                            fontSize: 13
                        )
                        )
                      ]
                  ),
                ),

                SizedBox(height: mQuery.size.height*0.023),
                Row(
                  children: [
                    Text("(24a)", style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff5E6258),
                    ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.055),
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'a'
                        setState(() {
                          fsC5 = fsC5 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fsC5 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fsC5 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("(All owner-documented FFIs check \nhere) I certify that the FFI identified in \nPart I:", style: TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),),
                  ],
                ),



                SizedBox(height: mQuery.size.height*0.032),
                Text("• Does not act as an intermediary; ", style : TextStyle(
                  color: Color(0xff83898C),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• Does not accept deposits in the ordinary course of a banking or similar business; ", style : TextStyle(
                  color: Color(0xff83898C),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• Does not hold, as a substantial portion of its business, financial assets for the account of others; ", style : TextStyle(
                  color: Color(0xff83898C),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• Is not an insurance company (or the holding company of an insurance company) that issues or is obligated to make payments with respect to a financial account; ", style : TextStyle(
                  color: Color(0xff83898C),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• Is not owned by or in an expanded affiliated group with an entity that accepts deposits in the ordinary course of a banking or similar business, holds, as a substantial portion of its business, financial assets for the account of others, or is an insurance company (or the holding company of an insurance company) that issues or is obligated to make payments with respect to a financial account; ", style : TextStyle(
                  color: Color(0xff83898C),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• Does not maintain a financial account for any nonparticipating FFI; and ", style : TextStyle(
                  color: Color(0xff83898C),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• Does not have any specified U.S. persons that own an equity interest or debt interest (other than a debt interest that is not a financial account or that has a balance or value not exceeding \$50,000) in the FFI other than those identified on the FFI owner reporting statement.", style : TextStyle(
                  color: Color(0xff83898C),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                ),),
                SizedBox(height: mQuery.size.height*0.023),

                Text("Check box 24b or 24c, whichever applies.",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiBold',
                  color: Color(0xff5E6258)
                ),),

                SizedBox(height: mQuery.size.height*0.023),
                Row(
                  children: [
                    Text("b)", style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff5E6258),
                    ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.055),
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'a'
                        setState(() {
                          fsC6 = fsC6 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fsC6 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fsC6 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("I certify that the FFI identified in Part I:", style: TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),),
                  ],
                ),
                SizedBox(height: mQuery.size.height*0.023),
                Text("• Has provided, or will provide, an FFI owner reporting statement that contains: ",style:TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
                )),
                SizedBox(height: mQuery.size.height*0.01,),
                Text("(i) The name, address, TIN (if any), chapter 4 status, and type of documentation provided (if required) of every individual and specified U.S. person that owns a direct or indirect equity interest in the owner-documented FFI (looking through all entities other than specified U.S. persons); \n"

                    "\n(ii) The name, address, TIN (if any), and chapter 4 status of every individual and specified U.S. person that owns a debt interest in the owner-documented FFI (including any indirect debt interest, which includes debt interests in any entity that directly or indirectly owns the payee or any direct or indirect equity interest in a debt holder of the payee) that constitutes a financial account in excess of \$50,000 (disregarding all such debt interests owned by participating FFIs, "
                    "registered deemed-compliant FFIs, certified deemed compliant FFIs, excepted NFFEs, exempt beneficial owners, or U.S. persons other than specified U.S. persons); and \n"
            "\n(iii) Any additional information the withholding agent requests in order to fulfill its obligations with respect to the entity."
      "• Has provided, or will provide, valid documentation meeting the requirements of Regulations section 1.1471-3(d)(6)(iii) for each person identified in the FFI owner reporting statement.", style :TextStyle(
                    fontSize: 13,
                    color: Color(0xff5E6258),
                    fontFamily: 'SatoshiMedium'
                )),

                SizedBox(height: mQuery.size.height*0.023,),
                RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: "c)",style: TextStyle(
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiBold',
                            fontSize: 13
                        )
                        ),
                        TextSpan(
                            text: " I certify that the FFI identified in Part I has provided, or will provide, an auditor's letter, signed within 4 years of the date of payment, from an independent accounting firm or legal representative with a location in the United States stating that the firm or representative has reviewed the FFI’s documentation with respect to all of its owners and debt holders identified in Regulations section 1.1471-3(d)(6)(iv)(A)\n\n(2), and that the FFI meets all the requirements to be an owner-documented FFI. The FFI identified in Part I has also provided, or will provide, an FFI owner reporting"
                                " statement of its owners that are specified U.S. persons and Form(s) W-9, with applicable waivers.",style: TextStyle(
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                            fontSize: 13
                        )
                        )
                      ]
                  ),
                ),

                SizedBox(height : mQuery.size.height*0.023),
                Text("Check box 24d if applicable (optional, see instructions).",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiBold'
                ),),

                SizedBox(height: mQuery.size.height*0.023),
                Row(
                  children: [
                    Text("d)", style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff5E6258),
                    ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.055),
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'a'
                        setState(() {
                          fsC7 = fsC7 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fsC7 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fsC7 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("I certify that the entity identified on line 1 \nis a trust that does not have any contingent \nbeneficiaries or designated classes with \nunidentified beneficiaries.", style: TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),),
                  ],
                ),

                SizedBox(height: mQuery.size.height*0.032,),
                Text("Part XIV International Organization",style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontFamily: 'SatoshiBold'
                ),),
                SizedBox(height: mQuery.size.height*0.023,),

                Text("Check box 28a or 28b, whichever applies",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiBold',
                  color: Color(0xff5E6258)
                ),),

                SizedBox(height: mQuery.size.height*0.023,),
                Row(
                  children: [
                    Text("28a", style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff5E6258),
                    ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.055),
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'a'
                        setState(() {
                          fsC8 = fsC8 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fsC8 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fsC8 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("I certify that the entity identified in Part \nI is an international organization described \nin section 7701(a)(18).", style : TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: mQuery.size.width*0.04,),
                    Text("b", style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff5E6258),
                    ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.055),
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'a'
                        setState(() {
                          fsC9 = fsC9 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fsC9 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fsC9 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("I certify that the entity identified in Part I:", style : TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),),
                  ],
                ),

                SizedBox(height: mQuery.size.height*0.023,),

                Text("• Is comprised primarily of foreign governments; ",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01,),

                Text("• Is recognized as an intergovernmental or supranational organization under a foreign law similar to the International Organizations Immunities Act or that has in effect a headquarters agreement with a foreign government; ",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01,),

                Text("• The benefit of the entity’s income does not inure to any private person; and ",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01,),

                Text("• Is the beneficial owner of the payment and is not engaged in commercial financial activities of a type engaged in by an insurance company, custodial institution, or depository institution with respect to the payments, accounts, or obligations for which this form is submitted (except as permitted in Regulations section 1.1471-6(h)(2)).",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.023,),

                Text("Part XV Exempt Retirement Plans",style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'SatoshiBold'
                ),),
                SizedBox(height: mQuery.size.height*0.023,),

                Text("Check box 29a, b, c, d, e, or f, whichever applies.",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiBold',
                    color: Color(0xff5E6258)
                ),),

                SizedBox(height: mQuery.size.height*0.023,),
                SizedBox(height: mQuery.size.height*0.023,),
                Row(
                  children: [
                    Text("29a", style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff5E6258),
                    ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.055),
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'a'
                        setState(() {
                          fsC10 = fsC10 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fsC10 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fsC10 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("I certify that the entity identified in Part I:", style : TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),),
                  ],
                ),

                SizedBox(height: mQuery.size.height*0.023,),
                Text("• Is established in a country with which the United States has an income tax treaty in force (see Part III if claiming treaty benefits); ",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01,),

                Text("• Is operated principally to administer or provide pension or retirement benefits; and ",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01,),

                Text("• Is entitled to treaty benefits on income that the fund derives from U.S. sources (or would be entitled to benefits if it derived any such income) as a resident of the other country which satisfies any applicable limitation on benefits requirement.",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.023,),
                Row(
                  children: [
                    Text("b", style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff5E6258),
                    ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.055),
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'a'
                        setState(() {
                          fsC11 = fsC11 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fsC11 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fsC11 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("I certify that the entity identified in Part I:", style : TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),),
                  ],
                ),

                SizedBox(height: mQuery.size.height*0.023,),
                Text("• Is organized for the provision of retirement, disability, or death benefits (or any combination thereof) to beneficiaries that are former employees of one or more employers in consideration for services rendered; ",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01,),

                Text("• No single beneficiary has a right to more than 5% of the FFI’s assets; ",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01,),

                Text("• Is subject to government regulation and provides annual information reporting about its beneficiaries to the relevant tax authorities in the country in which the fund is established or operated; and ",style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01,),

                Text("(i) Is generally exempt from tax on investment income under the laws of the country in which it is established or operates due to its status as a retirement or pension plan; ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01,),

                Text("(ii) Receives at least 50% of its total contributions from sponsoring employers (disregarding transfers of assets from other plans described in this part, retirement and pension accounts described in an applicable Model 1 or Model 2 IGA, other retirement funds described in an applicable Model 1 or Model 2 IGA, or accounts described in Regulations section 1.1471-5(b)(2)(i)(A)); ", style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01,),

                Text("(iii) Either does not permit or penalizes distributions or withdrawals made before the occurrence of specified events related to retirement, disability, or death (except rollover distributions to accounts described in Regulations section 1.1471-5(b)(2)(i)(A) (referring to retirement and pension accounts), to retirement and pension accounts described in an applicable Model 1 or Model 2 IGA, or to other retirement funds described in this part or in an applicable Model 1 or Model 2 IGA); or ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01,),

                Text("(iv) Limits contributions by employees to the fund by reference to earned income of the employee or may not exceed \$50,000 annually.", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.023,),

                Row(
                  children: [
                    Text("c", style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff5E6258),
                    ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.055),
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'a'
                        setState(() {
                          fsC12 = fsC12 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fsC12 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fsC12 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("I certify that the entity identified in Part I is \nformed pursuant to a pension plan that would \nmeet the requirements of section 401(a), \nother than the requirement that the plan \nbe funded by a trust created or organized \nin the United States.",style : TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),),
                  ],
                ),

                SizedBox(height:mQuery.size.height*0.023),
                Row(
                  children: [
                    Text("d", style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff5E6258),
                    ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.055),
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'a'
                        setState(() {
                          fsC13 = fsC13 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fsC13 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fsC13 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("I certify that the entity identified in Part I is \nestablished exclusively to earn income for the \nbenefit of one or more retirement funds \ndescribed in this part or in an applicable \nModel 1 or Model 2 IGA, or accounts described \nin Regulations section 1.1471-5(b)(2)(i)(A) \n(referring to retirement and pension accounts), \nor retirement and pension"
                        " accounts described \nin an applicable Model 1 or Model 2 IGA",style : TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),),
                  ],
                ),

                SizedBox(height:mQuery.size.height*0.023),
                Row(
                  children: [
                    Text("f", style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff5E6258),
                    ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.055),
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'a'
                        setState(() {
                          fsC14 = fsC14 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fsC14 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fsC14 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("I certify that the entity identified in Part I:",style : TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),),
                  ],
                ),

                SizedBox(height:mQuery.size.height*0.023),

                Text("• Is established and sponsored by a foreign government, international organization, central bank of issue, or government of a U.S. possession (each as defined in Regulations"
                    " section 1.1471-6) or an exempt beneficial owner described in an applicable Model 1 or Model 2 IGA to provide retirement, disability, or death benefits to beneficiaries or participants that are current or former employees of the sponsor (or persons designated by such employees); or ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),
                Text("• Is established and sponsored by a foreign government, international organization, central bank of issue, or government of a U.S. possession (each as defined in Regulations section 1.1471-6) or an exempt beneficial owner described in an applicable Model 1 or Model 2 IGA to provide retirement, disability, or death benefits to beneficiaries or"
                    " participants that are not current or former employees of such sponsor, but are in consideration of personal services performed for the sponsor.",style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),

                SizedBox(height: mQuery.size.height*0.032),

                Text("Part XVI Entity Wholly Owned by Exempt Beneficial Owners",style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontFamily: 'SatoshiBold'
                ),),

                SizedBox(height:mQuery.size.height*0.023),
                Row(
                  children: [
                    Text("30", style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff5E6258),
                    ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.055),
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'a'
                        setState(() {
                          fsC15 = fsC15 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fsC15 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fsC15 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("I certify that the entity identified in Part I:",style : TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),),
                  ],
                ),

                SizedBox(height:mQuery.size.height*0.023),

                Text("• Is an FFI solely because it is an investment entity; ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• Each direct holder of an equity interest in the investment entity is an exempt beneficial "
                    "owner described in Regulations section 1.1471-6 or in an applicable Model 1 or Model 2 IGA; ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• Each direct holder of a debt interest in the investment entity is either a depository institution (with respect to a loan made to such entity) or an exempt beneficial owner described in Regulations section 1.1471-6 or an "
                    "applicable Model 1 or Model 2 IGA. ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• Has provided an owner reporting statement that contains the name, address, TIN (if any), chapter 4 status, and a description of the type of documentation provided to the withholding agent for every person that owns a debt interest constituting "
                    "a financial account or direct equity interest in the entity; and ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• Has provided documentation establishing that every owner of the entity is"
                    " an entity described in Regulations section 1.1471-6(b), (c), (d), (e), (f) and/or (g) without regard to whether such owners are beneficial owners.", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.032),

                Text("Part XVII Territory Financial Institution", style :TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'SatoshiBold'
                ),),

                SizedBox(height:mQuery.size.height*0.023),
                Row(
                  children: [
                    Text("31", style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff5E6258),
                    ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.055),
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'a'
                        setState(() {
                          fsC16 = fsC16 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fsC16 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fsC16 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("I certify that the entity identified in Part I is a \nfinancial institution (other than an investment \nentity) that is incorporated or organized under \nthe laws of a possession of the United States.",style : TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),),
                  ],
                ),

                SizedBox(height:mQuery.size.height*0.032),

                Text("Part XVIII Excepted Nonfinancial Group Entity", style :TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'SatoshiBold'
                ),),

                SizedBox(height:mQuery.size.height*0.023),
                Row(
                  children: [
                    Text("32", style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff5E6258),
                    ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.055),
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'a'
                        setState(() {
                          fsC17 = fsC17 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fsC17 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fsC17 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("I certify that the entity identified in Part I:",style : TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),),
                  ],
                ),

                SizedBox(height: mQuery.size.height*0.023),

                Text("• Is a holding company, treasury center, or captive finance company and substantially all of the entity’s activities are "
                    "functions described in Regulations section 1.1471-5(e)(5)(i)(C) through (E); ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• Is a member of a nonfinancial group described in Regulations "
                    "section 1.1471-5(e)(5)(i)(B); ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• Is not a depository or custodial institution (other than for "
                    "members of the entity’s expanded affiliated group); and ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• Does not function (or hold itself out) as an investment fund, such as a private equity fund, venture capital fund, leveraged buyout fund, or any investment vehicle with an investment strategy to acquire or fund companies "
                    "and then hold interests in those companies as capital assets for investment purposes.", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.032),

                Text("Part XIX Excepted Nonfinancial Start-Up Company", style :TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'SatoshiBold'
                ),),

                SizedBox(height:mQuery.size.height*0.023),
                Row(
                  children: [
                    Text("33", style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff5E6258),
                    ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.055),
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'a'
                        setState(() {
                          fsC18 = fsC18 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fsC18 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fsC18 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("I certify that the entity identified in Part I:",style : TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),),
                  ],
                ),

                SizedBox(height: mQuery.size.height*0.023),

                Text("• Was formed on (or, in the case of a new line of business, the date of board resolution approving the new "
                    "line of business) (date must be less than 24 months prior to date of payment); ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• Is not yet operating a business and has no prior operating history or is investing capital in assets with the intent to operate a new line of business other"
                    " than that of a financial institution or passive NFFE; ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• Is investing capital into assets with the "
                    "intent to operate a business other than that of a financial institution; and ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• Does not function (or hold itself out) as an investment fund, such as a private equity fund, venture capital fund, leveraged buyout fund, or any investment vehicle whose purpose "
                    "is to acquire or fund companies and then hold interests in those companies as capital assets for investment purposes.", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.032),

                Text("Part XX Excepted Nonfinancial Entity in Liquidation or Bankruptcy", style :TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'SatoshiBold'
                ),),

                SizedBox(height:mQuery.size.height*0.023),
                Row(
                  children: [
                    Text("34", style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff5E6258),
                    ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.055),
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'a'
                        setState(() {
                          fsC19 = fsC19 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fsC19 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fsC19 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("I certify that the entity identified in Part I:",style : TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),),
                  ],
                ),

                SizedBox(height: mQuery.size.height*0.023),

                Text("• Filed a plan of liquidation, filed a plan of reorganization, or filed for bankruptcy on ; ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                Center(
                    child: Container(
                        height: mQuery.size.height*0.055,
                      width: mQuery.size.width*0.3,
                      padding: EdgeInsets.symmetric(
                        horizontal: mQuery.size.width*0.02
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Color(0xffC8C8C8)
                          )
                      ),
                      child: TextField(
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                          border: InputBorder.none
                        ),
                      ),
                    )
                ),
                Text("• During the past 5 years has not been engaged in business as "
                    "a financial institution or acted as a passive NFFE; ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• Is either liquidating or emerging from a reorganization or bankruptcy with the "
                    "intent to continue or recommence operations as a nonfinancial entity; and ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• Has, or will provide, documentary evidence such as a bankruptcy filing or other public documentation that supports its"
                    " claim if it remains in bankruptcy or liquidation for more than 3 years.", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.032),


                Text("Part XXI 501(c) Organization", style :TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'SatoshiBold'
                ),),

                SizedBox(height:mQuery.size.height*0.023),
                Row(
                  children: [
                    Text("35", style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff5E6258),
                    ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.055),
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'a'
                        setState(() {
                          fsC20 = fsC20 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fsC20 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fsC20 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("I certify that the entity identified in Part I \nis a 501(c) organization that:",style : TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),),
                  ],
                ),

                SizedBox(height: mQuery.size.height*0.023),

                Text("• Has been issued a determination letter from the"
                    " IRS that is currently in effect concluding that the payee is a section 501(c) ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Row(
                  children: [
                    Text("organization that is dated ; ", style : TextStyle(
                        fontSize: 13,
                        fontFamily: 'SatoshiMedium',
                        color: Color(0xff5E6258)
                    ),),
                    SizedBox(width : mQuery.size.width*0.01),
                    Container(
                      height: mQuery.size.height*0.055,
                      width: mQuery.size.width*0.3,
                      padding: EdgeInsets.symmetric(
                          horizontal: mQuery.size.width*0.02
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: Color(0xffC8C8C8)
                          )
                      ),
                      child: TextField(
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                            border: InputBorder.none
                        ),
                      ),
                    ),
                    SizedBox(width : mQuery.size.width*0.023),
                    Text("or", style : TextStyle(
                        fontSize: 13,
                        fontFamily: 'SatoshiMedium',
                        color: Color(0xff5E6258)
                    ),),
                  ],
                ),
                SizedBox(height: mQuery.size.height*0.01),
                Text("• Has provided a copy of an opinion from U.S. counsel certifying that the payee is a section 501(c) organization"
                    " (without regard to whether the payee is a foreign private foundation).", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),


                SizedBox(height: mQuery.size.height*0.032),

                Text("Part XXII Nonprofit Organization", style :TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'SatoshiBold'
                ),),

                SizedBox(height:mQuery.size.height*0.023),
                Row(
                  children: [
                    Text("36", style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff5E6258),
                    ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.055),
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'a'
                        setState(() {
                          fsC21 = fsC21 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fsC21 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fsC21 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("I certify that the entity identified in Part I \nis a nonprofit organization that meets the \nfollowing requirements.",style : TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),),
                  ],
                ),

                SizedBox(height: mQuery.size.height*0.023),

                Text("• The entity is established and maintained in its"
                    " country of residence exclusively for religious, charitable, scientific, artistic, cultural or educational purposes; ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),
                Text("• The entity is exempt from income tax in its country of residence; ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• The entity has no shareholders or members who have"
                    " a proprietary or beneficial interest in its income or assets; ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• Neither the applicable laws of the entity’s country of residence nor the entity’s formation documents permit any income or assets of the entity to be distributed to, or applied for the benefit of, a private person or noncharitable entity other than pursuant to the conduct of the entity’s charitable activities or as payment of reasonable compensation for services rendered or payment representing the fair market value of "
                    "property which the entity has purchased; and ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• The applicable laws of the entity’s country of residence or the entity’s formation documents require that, upon the entity’s liquidation or dissolution, all of its assets be distributed to an entity that is a foreign government, an integral part of a foreign government, a controlled entity of a foreign government, or another organization that is described in this part or escheats to the government of the entity’s country of "
                    "residence or any political subdivision thereof.", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),

                SizedBox(height: mQuery.size.height*0.032),

                Text("Part XXIII Publicly Traded NFFE or NFFE Affiliate of a Publicly Traded Corporation", style :TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'SatoshiBold'
                ),),

                SizedBox(height:mQuery.size.height*0.023),
                Text("Check box 37a or 37b, whichever applies.",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiBold'
                ),),

                SizedBox(height:mQuery.size.height*0.023),
                Row(
                  children: [
                    Text("37a", style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff5E6258),
                    ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.055),
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'a'
                        setState(() {
                          fsC22 = fsC22 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fsC22 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fsC22 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("I certify that:",style : TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),),
                  ],
                ),

                SizedBox(height: mQuery.size.height*0.023),

                Text("• The entity identified in Part I is a foreign corporation that is not a financial institution; and • The stock of such corporation is regularly traded on one or "
                    "more established securities markets, including ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.005),
                Text("(name one securities exchange upon which the stock is regularly traded).", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),

                SizedBox(height: mQuery.size.height*0.016,),
                Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.055,
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width * 0.03
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xffC8C8C8)
                      ),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        border: InputBorder.none
                    ),
                  ),
                ),

                SizedBox(height: mQuery.size.height*0.023,),

                Row(
                  children: [
                    Text("b", style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff5E6258),
                    ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.055),
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'a'
                        setState(() {
                          fsC23 = fsC23 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fsC23 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fsC23 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("I certify that:",style : TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),),
                  ],
                ),

                SizedBox(height: mQuery.size.height*0.023),

                Text("• The entity identified in Part I is a foreign "
                    "corporation that is not a financial institution; ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),
                Text("• The entity identified in Part I is a member of the same expanded affiliated group as an entity the stock of which is regularly"
                    " traded on an established securities market; ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),
                Text("• The name of the entity, the stock of which is regularly traded on an established securities market", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),

                Row(
                  children: [
                    Text("is ", style : TextStyle(
                        fontSize: 13,
                        fontFamily: 'SatoshiMedium',
                        color: Color(0xff5E6258)
                    ),),
                    SizedBox(width : mQuery.size.width*0.01),
                    Container(
                      height: mQuery.size.height*0.055,
                      width: mQuery.size.width*0.3,
                      padding: EdgeInsets.symmetric(
                          horizontal: mQuery.size.width*0.02
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: Color(0xffC8C8C8)
                          )
                      ),
                      child: TextField(
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                            border: InputBorder.none
                        ),
                      ),
                    ),
                    SizedBox(width : mQuery.size.width*0.023),
                    Text("and", style : TextStyle(
                        fontSize: 13,
                        fontFamily: 'SatoshiMedium',
                        color: Color(0xff5E6258)
                    ),),
                  ],
                ),

                SizedBox(height: mQuery.size.height*0.01),
                Text("• The name of the securities market"
                    " on which the stock is regularly traded is", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),

                SizedBox(height: mQuery.size.height*0.016),
                Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.055,
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width * 0.03
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xffC8C8C8)
                      ),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        border: InputBorder.none
                    ),
                  ),
                ),

                SizedBox(height: mQuery.size.height*0.032),

                Text("Part XXIV Excepted Territory NFFE", style :TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'SatoshiBold'
                ),),

                SizedBox(height:mQuery.size.height*0.023),


                Row(
                  children: [
                    Text("38", style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff5E6258),
                    ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.055),
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'a'
                        setState(() {
                          fsC24 = fsC24 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fsC24 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fsC24 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("I certify that:",style : TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),),
                  ],
                ),
                SizedBox(height:mQuery.size.height*0.023),

                Text("• The entity identified in Part I is an entity that is organized "
                    "in a possession of the United States; ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• The entity identified in Part I: ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("(i) Does not accept deposits in the ordinary"
                    " course of a banking or similar business; ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("(ii) Does not hold, as a substantial portion of its business, "
                    "financial assets for the account of others; or ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("(iii) Is not an insurance company (or the holding company of an insurance company) that issues or is obligated to make payments"
                    " with respect to a financial account; and ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• All of the owners of the entity identified in Part I are bona fide residents of the possession in"
                    " which the NFFE is organized or incorporated.", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),



                SizedBox(height: mQuery.size.height*0.032),

                Text("Part XXV Active NFFE", style :TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'SatoshiBold'
                ),),

                SizedBox(height:mQuery.size.height*0.023),


                Row(
                  children: [
                    Text("39", style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff5E6258),
                    ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.055),
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'a'
                        setState(() {
                          fsC25 = fsC25 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fsC25 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fsC25 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("I certify that:",style : TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),),
                  ],
                ),
                SizedBox(height:mQuery.size.height*0.023),

                Text("• The entity identified in Part I is a foreign entity that is"
                    " not a financial institution; ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• Less than 50% of such entity’s gross income for the "
                    "preceding calendar year is passive income; and ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• Less than 50% of the assets held by such entity are assets that produce or are held for the production of passive income (calculated as a weighted average of the percentage of passive assets measured quarterly) (see instructions "
                    "for the definition of passive income).", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),

                SizedBox(height: mQuery.size.height*0.032),

                Text("Part XXVI Passive NFFE", style :TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'SatoshiBold'
                ),),

                SizedBox(height:mQuery.size.height*0.023),


                Row(
                  children: [
                    Text("40a", style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff5E6258),
                    ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.055),
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'a'
                        setState(() {
                          fsC26 = fsC26 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fsC26 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fsC26 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("I certify that the entity identified in Part I is a \nforeign entity that is not a financial "
                        "\ninstitution (other than an investment entity \norganized in a "
                        "possession of the United \nStates) and is not certifying its status as \na publicly traded NFFE (or"
                        " affiliate), \nexcepted territory NFFE, active NFFE, \ndirect reporting NFFE, or sponsored direct "
                        " \nreporting NFFE",style : TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),),
                  ],
                ),
                SizedBox(height:mQuery.size.height*0.032),

                Text("Check box 40b or 40c, whichever applies.",style : TextStyle(
                  color: Color(0xff83898C),
                  fontSize: 12,
                  fontFamily: 'SatoshiBold',
                ),),

                SizedBox(height:mQuery.size.height*0.023),

                Row(
                  children: [
                    Text("b", style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff5E6258),
                    ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.055),
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'a'
                        setState(() {
                          fsC27 = fsC27 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fsC27 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fsC27 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("I further certify that the entity identified in \nPart I has no substantial U.S. owners (or, if \napplicable, no controlling U.S. persons); or",style : TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),),
                  ],
                ),

                SizedBox(height: mQuery.size.height*0.016,),
                Row(
                  children: [
                    Text("c", style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff5E6258),
                    ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.055),
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'a'
                        setState(() {
                          fsC28 = fsC28 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fsC28 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fsC28 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("I further certify that the entity identified in \nPart I has provided the name, address, and \nTIN of each substantial U.S. owner (or, if \napplicable, controlling U.S. person) of the \nNFFE in Part XXIX.",style : TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),),
                  ],
                ),

                SizedBox(height: mQuery.size.height*0.032,),

                Text("Part XXVII Excepted Inter-Affiliate FFI", style :TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'SatoshiBold'
                ),),

                SizedBox(height:mQuery.size.height*0.023),

                Row(
                  children: [
                    Text("41", style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff5E6258),
                    ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.055),
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'a'
                        setState(() {
                          fsC29 = fsC29 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fsC29 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fsC29 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("I certify that the entity identified in Part I:",style : TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),),
                  ],
                ),

                SizedBox(height:mQuery.size.height*0.023),

                Text("• Is a member of an expanded affiliated group; ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• Does not maintain financial accounts (other than accounts maintained for"
                    " members of its expanded affiliated group); ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• Does not make withholdable payments to any person other than to "
                    "members of its expanded affiliated group; ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• Does not hold an account (other than depository accounts in the country in which the entity is operating to pay for expenses) with or receive payments from any withholding agent other than a "
                    "member of its expanded affiliated group; and ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),


                Text("• Has not agreed to report under Regulations section 1.1471-4(d)(2)(ii)(C) or otherwise act as an agent for chapter 4 purposes on behalf of any financial institution, including "
                    "a member of its expanded affiliated group.", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),

                SizedBox(height: mQuery.size.height*0.032),

                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: "Part XXVIII Sponsored Direct Reporting NFFE",style: TextStyle(
                           fontSize: 20,
                           fontFamily: 'SatoshiBold',
                           color: Colors.black
                      )
                      ),
                      TextSpan(
                          text: "(see instructions for when this is permitted)",style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'SatoshiMedium',
                          color: Colors.black
                      )
                      )
                    ]
                  )
                ),

                SizedBox(height:mQuery.size.height*0.023),
                Text.rich(
                    TextSpan(
                        children: [
                          TextSpan(
                              text: "42",style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'SatoshiBold',
                              color: Color(0xff5E6258)
                          )
                          ),
                          TextSpan(
                              text: "     Name of sponsoring entity:",style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'SatoshiMedium',
                              color: Color(0xff5E6258)
                          )
                          )
                        ]
                    )
                ),

                SizedBox(height:mQuery.size.height*0.016),
                Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.055,
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width * 0.03
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xffC8C8C8)
                      ),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        border: InputBorder.none
                    ),
                  ),
                ),

                SizedBox(height: mQuery.size.height*0.032,),

                Row(
                  children: [
                    Text("43", style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff5E6258),
                    ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.055),
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'a'
                        setState(() {
                          fsC30 = fsC30 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fsC30 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fsC30 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("I certify that the entity identified in Part I is \na direct reporting NFFE that is sponsored \nby the entity identified on line 42.",style : TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),),
                  ],
                ),

                SizedBox(height: mQuery.size.height*0.032,),
                Text("Part XXIX Substantial U.S. Owners of Passive NFFE", style :TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'SatoshiBold'
                ),),

                SizedBox(height:mQuery.size.height*0.023),

                Text("As required by Part XXVI, provide the name, address, and TIN of each substantial U.S. owner of the NFFE. Please see the instructions for a definition of substantial U.S. owner. If providing the form to an FFI treated as a reporting Model 1 FFI or reporting Model 2 FFI, an NFFE may also use this part for reporting its controlling U.S."
                    " persons under an applicable IGA.", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),

                SizedBox(height: mQuery.size.height*0.032,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("Name",style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff5E6258),
                            fontFamily: "SatoshiBold"
                        ),),
                        Container(
                          width: mQuery.size.width*0.3,
                          height: mQuery.size.height*0.055,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Color(0xffC8C8C8),
                            )
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text("Address",style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff5E6258),
                            fontFamily: "SatoshiBold"
                        ),),
                        Container(
                          width: mQuery.size.width*0.33,
                          height: mQuery.size.height*0.055,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Color(0xffC8C8C8),
                              )
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text("TIN",style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff5E6258),
                            fontFamily: "SatoshiBold"
                        ),),
                        Container(
                          width: mQuery.size.width*0.2,
                          height: mQuery.size.height*0.055,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Color(0xffC8C8C8),
                              )
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),

                SizedBox(height: mQuery.size.height*0.032,),

                Text("Part XXX Certification", style :TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'SatoshiBold'
                ),),

                SizedBox(height:mQuery.size.height*0.023),

                Text("Under penalties of perjury, I declare that I have examined the information on this form and to the best of my knowledge and belief it is true, correct, and complete. I further certify"
                    " under penalties of perjury that: ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• The entity identified on line 1 of this form is the beneficial owner of all the income or proceeds to which this form relates, is using this form to certify its status for chapter 4 purposes, or is submitting this form "
                    "for purposes of section 6050W or 6050Y; ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• The entity identified on line 1 of"
                    " this form is not a U.S. person; ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),


                Text("• This form relates to: (a) income not effectively connected with the conduct of a trade or business in the United States, (b) income effectively connected with the conduct of a trade or business in the United States but is not subject to tax under an income tax treaty, (c) the partner’s share of a partnership’s effectively connected taxable income, or (d) the partner’s amount realized from the transfer of a partnership interest subject to"
                    " withholding under section 1446(f); and ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.01),

                Text("• For broker transactions or barter exchanges, the beneficial owner is an exempt"
                    " foreign person as defined in the instructions. ", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.016),

                Text("Furthermore, I authorize this form to be provided to any withholding agent that has control, receipt, or custody of the income of which the entity on line 1 is the beneficial owner or any withholding agent that can disburse or make payments of the income of which the "
                    "entity on line 1 is the beneficial owner.", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.016),

                Text("I agree that I will submit a new form within 30 days if any "
                    "certification on this form becomes incorrect.", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiBold',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.016),

                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle checkbox toggle for option 'a'
                        setState(() {
                          fsC31 = fsC31 == 1 ? 0 : 1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: fsC31 == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Color(0xffCFD3D4),
                          ),
                        ),
                        child: Center(
                          child: fsC31 == 1
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: mQuery.size.height * 0.02,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: mQuery.size.width * 0.02),
                    Text("I certify that I have the capacity to sign for the \nentity identified on line 1 of this form.",style : TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiBold',
                    ),),
                  ],
                ),
                SizedBox(height: mQuery.size.height*0.016,),
                Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.055,
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width * 0.03
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xffC8C8C8)
                      ),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        border: InputBorder.none
                    ),
                  ),
                ),

                SizedBox(height: mQuery.size.height*0.023,),

                Text("Signature of individual authorized to sign for beneficial owner", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiBold',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.016),

                Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.055,
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width * 0.03
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xffC8C8C8)
                      ),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        border: InputBorder.none
                    ),
                  ),
                ),

                SizedBox(height: mQuery.size.height*0.023,),


                Text("Print Name", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiBold',
                    color: Color(0xff5E6258)
                ),),
                SizedBox(height: mQuery.size.height*0.016),

                Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.055,
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width * 0.03
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xffC8C8C8)
                      ),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        border: InputBorder.none
                    ),
                  ),
                ),

                SizedBox(height: mQuery.size.height*0.023,),


                Text("Date (MM-DD-YYYY)", style : TextStyle(
                    fontSize: 13,
                    fontFamily: 'SatoshiBold',
                    color: Color(0xff5E6258)
                ),),

                SizedBox(height: mQuery.size.height*0.032,),

                Container(
                  width: double.infinity,
                  height: mQuery.size.height*0.055,
                  decoration: BoxDecoration(
                      color: Color(0xff8DC73F),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(
                    child: Text("Submit",style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'SatoshiBold'
                    ),),
                  ),
                ),

                SizedBox(height: mQuery.size.height*0.032,)
              ]
          ),
        ),
      ),
    );
  }
}

