import 'package:badges/badges.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinput/pinput.dart';

class USIndividual extends StatefulWidget {
  const USIndividual({super.key});

  @override
  State<USIndividual> createState() => _USIndividualState();
}

class _USIndividualState extends State<USIndividual> {

  late List<TextEditingController> controllers;
  late List<FocusNode> focusNodes;
  int focusedIndex = -1;

  @override
  void initState() {
    super.initState();
    controllers = List.generate(9, (_) => TextEditingController());
    focusNodes = List.generate(9, (_) => FocusNode());
  }

  @override
  void dispose() {
    for (var node in focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  int selectedContainerIndex = -1;

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
              Text("US Individual or Entity (W-9 Form)", style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'SatoshiBold'
              ),),
              SizedBox(height: mQuery.size.height * 0.023,),
              Text(
                "Request for Taxpayer Identification Number and Certification",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'SatoshiBold'
                ),),
              SizedBox(height: mQuery.size.height * 0.032,),
              Text(
                "1 Name of entity/individual. An entry is required. (For a sole proprietor or disregarded entity, enter the owner’s name on line 1, and enter the business/disregarded entity’s name on line 2.)",
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
                  controller: entityNameController,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      border: InputBorder.none
                  ),
                ),
              ),

              SizedBox(height: mQuery.size.height * 0.023,),


              Text(
                "2 Business name/disregarded entity name, if different from above.",
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
                  controller: bussinessNameController,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      border: InputBorder.none
                  ),
                ),
              ),

              SizedBox(height: mQuery.size.height * 0.023,),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "3a",style: TextStyle(
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff5E6258,),
                      fontSize: 13
                    )
                    ),
                    TextSpan(
                        text: " Check the appropriate box for federal tax classification of the entity/individual whose name is entered on line 1. Check only ",style: TextStyle(
                        fontFamily: 'SatoshiMedium',
                        color: Color(0xff5E6258,),
                        fontSize: 13
                    )
                    ),
                    TextSpan(
                        text: " one",style: TextStyle(
                        fontFamily: 'SatoshiBold',
                        color: Color(0xff5E6258,),
                        fontSize: 13
                    )
                    ),
                    TextSpan(
                        text: " of the following seven boxes.",style: TextStyle(
                        fontFamily: 'SatoshiMedium',
                        color: Color(0xff5E6258,),
                        fontSize: 13
                    )
                    ),

              ])
        ),
              SizedBox(height: mQuery.size.height*0.023,),
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
                  Text("Individual/sole proprietor",style: TextStyle(
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
                  Text("C corporation",style: TextStyle(
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
                  Text("S corporation",style: TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium'
                  ),
                  ),
                  SizedBox(width: mQuery.size.width*0.052,),
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
                  Text("Partnership",style: TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium'
                  ),),
                  Expanded(child: SizedBox()),
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
                  Text("Trust/estate",style: TextStyle(
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
                  Text("LLC. Enter the tax classification (C = C \ncorporation, S = S corporation, P = Partnership) .",style: TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium'
                  ),
                  ),
                ],
              ),
              SizedBox(height: mQuery.size.height*0.032,),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Note:",style: TextStyle(
                       fontFamily: 'SatoshiBold',
                      fontSize: 12,
                      color: Color(0xff83898C)
                    )
                    ),
                    TextSpan(
                        text: " Check the “LLC” box above and, in the entry space, enter the appropriate code (C, S, or P) for the tax classification of the LLC, unless it is a disregarded entity. A disregarded entity should instead check the appropriate box for the tax classification of its owner.",style: TextStyle(
                         fontSize: 12,
                        fontFamily: 'SatoshiMedium',
                        color: Color(0xff83898C)
                    )
                    )
                  ]
                )
              ),
              SizedBox(height: mQuery.size.height*0.032,),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "3b",style: TextStyle(
                            fontFamily: 'SatoshiBold',
                            fontSize: 12,
                            color: Color(0xff83898C)
                        )
                        ),
                        TextSpan(
                            text: " If on line 3a you checked “Partnership” or “Trust/estate,” or checked “LLC” and entered “P” as its tax classification, and you are providing this form to a partnership, trust, or estate in which you have an ownership interest, check this box if you have any foreign partners, owners, or beneficiaries. See instructions .",style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff83898C)
                        )
                        )
                      ]
                  )
              ),
              SizedBox(height: mQuery.size.height*0.032,),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "4",style: TextStyle(
                            fontFamily: 'SatoshiBold',
                            fontSize: 12,
                            color: Color(0xff83898C)
                        )
                        ),
                        TextSpan(
                            text: "  Exemptions (codes apply only to certain entities, not individuals; see instructions on page 3):",style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff83898C)
                        )
                        )
                      ]
                  )
              ),
              SizedBox(height: mQuery.size.height*0.023,),
              Text("Exempt payee code (if any)",style: TextStyle(
                color: Color(0xff5E6258),
                fontSize: 13,
                fontFamily: 'SatoshiMedium'
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
                  controller: exemptPayeeController,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      border: InputBorder.none
                  ),
                ),
              ),
              SizedBox(height: mQuery.size.height*0.016,),
              Text("Exemption from Foreign Account Tax Compliance Act (FATCA) reporting  code (if any)",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.016,),
              Text("Applies to accounts maintained outside the United States.)",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium'
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
                  controller: fatcaController,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      border: InputBorder.none
                  ),
                ),
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "5",style: TextStyle(
                            fontFamily: 'SatoshiBold',
                            fontSize: 12,
                            color: Color(0xff83898C)
                        )
                        ),
                        TextSpan(
                            text: " Address (number, street, and apt. or suite no.). See instructions",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff83898C)
                        )
                        )
                      ]
                  )
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
                  controller: addressController,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      border: InputBorder.none
                  ),
                ),
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "6",style: TextStyle(
                            fontFamily: 'SatoshiBold',
                            fontSize: 12,
                            color: Color(0xff83898C)
                        )
                        ),
                        TextSpan(
                            text: " City, state, and ZIP code",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff83898C)
                        )
                        )
                      ]
                  )
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
                  controller: cityController,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      border: InputBorder.none
                  ),
                ),
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "7",style: TextStyle(
                            fontFamily: 'SatoshiBold',
                            fontSize: 12,
                            color: Color(0xff83898C)
                        )
                        ),
                        TextSpan(
                            text: " List account number(s) here (optional)",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff83898C)
                        )
                        )
                      ]
                  )
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
                  controller: accountsController,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      border: InputBorder.none
                  ),
                ),
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text("Requester’s name and address (optional)",style: TextStyle(
                color: Color(0xff5E6258),
                fontSize: 13,
                fontFamily: 'SatoshiMedium'
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
                  controller: requesterController,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      border: InputBorder.none
                  ),
                ),
              ),
              
              SizedBox(height: mQuery.size.height*0.055,),
              Text("Part I. Taxpayer Identification Number (TIN)",style: TextStyle(
                fontFamily: 'SatoshiBold',
                color: Colors.black,
                fontSize: 24
              ),),
              SizedBox(height: mQuery.size.height*0.023,),
              Text("Enter your TIN in the appropriate box. The TIN provided must match the name given on line 1 to avoid backup withholding. For individuals, this is generally your social security number (SSN). However, for a resident alien, sole proprietor, or disregarded entity, see the instructions for Part I, later. For other entities, it is your employer identification number (EIN). If you do not have a number, see How to get a TIN, later.",style: TextStyle(
                fontSize: 13,
                color: Color(0xff5E6258),
                fontFamily: 'SatoshiMedium'
              ),),


              SizedBox(height: mQuery.size.height*0.023,),
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
                        text: " If the account is in more than one name, see the instructions for line 1. See also What Name and Number To Give the Requester for guidelines on whose number to enter.",style: TextStyle(
                        color: Color(0xff5E6258),
                        fontFamily: 'SatoshiMedium',
                        fontSize: 13
                    )
                    )
                  ]
                ),
              ),
              
              SizedBox(height: mQuery.size.height*0.032,),
              Text("Social security number",style: TextStyle(
                color: Color(0xff5E6258),
                fontSize: 13,
                fontFamily: 'SatoshiBold'
              ),),
              SizedBox(height: mQuery.size.height*0.023,),
              Pinput(
                length: 9,
                defaultPinTheme: defaultPinTheme,
              ),
              SizedBox(height: mQuery.size.height*0.032,),
              Center(
                child: Text("or",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiBold'
                ),),
              ),

              SizedBox(height: mQuery.size.height*0.032,),
              Text("Social security number",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiBold'
              ),),
              SizedBox(height: mQuery.size.height*0.023,),
              Pinput(
                length: 9,
                defaultPinTheme: defaultPinTheme,
              ),
              
              SizedBox(height: mQuery.size.height*0.032,),
              Text("Part II. Certification",style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'SatoshiBold'
              ),),
              SizedBox(height: mQuery.size.height*0.023,),
              Text("Under penalties of perjury, I certify that: ",style: TextStyle(
                color: Color(0xff5E6258),
                fontSize: 13,
                fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.014,),
              Text("1. The number shown on this form is my correct taxpayer identification number (or I am waiting for a number to be issued to me); and",style: TextStyle(
                fontSize: 13,
                color: Color(0xff5E6258),
                fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.01,),
              Text("2. I am not subject to backup withholding because (a) I am exempt from backup withholding, or (b) I have not been notified by the Internal Revenue Service (IRS) that I am subject to backup withholding as a result of a failure to report all interest or dividends, or (c) the IRS has notified me that I am no longer subject to backup withholding; and ",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.01,),
              Text("3. I am a U.S. citizen or other U.S. person (defined below); and ",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.01,),
              Text("4. The FATCA code(s) entered on this form (if any) indicating that I am exempt from FATCA reporting is correct.",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),

              SizedBox(height: mQuery.size.height*0.032,),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Certification instructions",style: TextStyle(
                      color: Color(0xff5E6258),
                      fontFamily: 'SatoshiBold',
                      fontSize: 13
                    )
                    ),
                    TextSpan(
                        text: " You must cross out item 2 above if you have been notified by the IRS that you are currently subject to backup withholding because you have failed to report all interest and dividends on your tax return. For real estate transactions, item 2 does not apply. For mortgage interest paid, acquisition or abandonment of secured property, cancellation of debt, contributions to an individual retirement arrangement (IRA), and, generally, payments other than interest and dividends, you are not required to sign the certification, but you must provide your correct TIN. See the instructions for Part II, later",style: TextStyle(
                        color: Color(0xff5E6258),
                        fontFamily: 'SatoshiMedium',
                        fontSize: 13
                    )
                    )
                  ]
                )
              ),
              
              SizedBox(height: mQuery.size.height*0.055,),
              Row(
                children: [
                  Text("Signature of U.S. person",style: TextStyle(
                    color: Color(0xff5E6258),
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium'
                  ),),
                  Expanded(child: SizedBox()),
                  Text("Sign Here",style: TextStyle(
                      color: Color(0xff5E6258),
                      fontSize: 13,
                      fontFamily: 'SatoshiBold'
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
                  controller: signatureController,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      border: InputBorder.none
                  ),
                ),
              ),
              
              SizedBox(height: mQuery.size.height*0.032,),
              Text("General Instructions",style: TextStyle(
                fontSize: 24,
                fontFamily: 'SatoshiBold',
                color: Colors.black
              ),),
              SizedBox(height: mQuery.size.height*0.02,),
              Text("Section references are to the Internal Revenue Code unless otherwise noted. Future developments. For the latest information about developments related to Form W-9 and its instructions, such as legislation enacted after they were published, go to www.irs.gov/FormW9.",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),),

              SizedBox(height: mQuery.size.height*0.032,),
              Text("What’s New",style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'SatoshiBold',
                  color: Colors.black
              ),),
              SizedBox(height: mQuery.size.height*0.02,),
              Text("Line 3a has been modified to clarify how a disregarded entity completes this line. An LLC that is a disregarded entity should check the appropriate box for the tax classification of its owner. Otherwise, it should check the “LLC” box and enter its appropriate tax classification. New line 3b has been added to this form. A flow-through entity is required to complete this line to indicate that it has direct or indirect foreign partners, owners, or beneficiaries when it provides the Form W-9 to another flow-through entity in which it has an ownership interest. This change is intended to provide a flow-through entity with information regarding the status of its indirect foreign partners, owners, or beneficiaries, so that it can satisfy any applicable reporting requirements. For example, a partnership that has any indirect foreign partners may be required to complete Schedules K-2 and K-3. See the Partnership Instructions for Schedules K-2 and K-3 (Form 1065).",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),),

              SizedBox(height: mQuery.size.height*0.032,),
              Text("Purpose of Form",style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'SatoshiBold',
                  color: Colors.black
              ),),
              SizedBox(height: mQuery.size.height*0.02,),
              Text("An individual or entity (Form W-9 requester) who is required to file an information return with the IRS is giving you this form because they must obtain your correct taxpayer identification number (TIN), which may be your social security number (SSN), individual taxpayer identification number (ITIN), adoption taxpayer identification number (ATIN), or employer identification number (EIN), to report on an information return the amount paid to you, or other amount reportable on an information return. Examples of information returns include, but are not limited to, the following. ",
               style: TextStyle(
                 fontSize: 13,
                 color: Color(0xff5E6258),
                 fontFamily: 'SatoshiMedium'
               ),
              ),
              SizedBox(height: mQuery.size.height*0.023,),
              RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text('\u2022'), // Unicode character for bullet point
                      ),
                    ),
                    TextSpan(
                      text: "Form 1099-INT (interest earned or paid). ",
                      style: TextStyle(
                          fontSize: 13.0,
                          color: Color(0xff696D61),
                          fontFamily: 'SatoshiMedium'
                      ), // Adjust styling as needed
                    ),
                  ],
                ),
              ),
              SizedBox(height: mQuery.size.height*0.01,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text('\u2022'), // Unicode character for bullet point
                      ),
                      Flexible(
                        child: Text(
                          "Form 1099-DIV (dividends, including those from stocks or mutual funds). ",
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Color(0xff696D61),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: mQuery.size.height*0.01,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text('\u2022'), // Unicode character for bullet point
                      ),
                      Flexible(
                        child: Text(
                          "Form 1099-MISC (various types of income, prizes, awards, or gross proceeds).",
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Color(0xff696D61),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: mQuery.size.height*0.01,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text('\u2022'), // Unicode character for bullet point
                      ),
                      Flexible(
                        child: Text(
                          "Form 1099-NEC (nonemployee compensation). ",
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Color(0xff696D61),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: mQuery.size.height*0.01,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text('\u2022'), // Unicode character for bullet point
                      ),
                      Flexible(
                        child: Text(
                          "Form 1099-B (stock or mutual fund sales and certain other transactions by brokers). ",
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Color(0xff696D61),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: mQuery.size.height*0.01,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text('\u2022'), // Unicode character for bullet point
                      ),
                      Flexible(
                        child: Text(
                          "Form 1099-S (proceeds from real estate transactions).",
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Color(0xff696D61),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: mQuery.size.height*0.01,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text('\u2022'), // Unicode character for bullet point
                      ),
                      Flexible(
                        child: Text(
                          "Form 1099-K (merchant card and third-party network transactions). ",
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Color(0xff696D61),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: mQuery.size.height*0.01,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text('\u2022'), // Unicode character for bullet point
                      ),
                      Flexible(
                        child: Text(
                          "Form 1098 (home mortgage interest), 1098-E (student loan interest), and 1098-T (tuition). ",
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Color(0xff696D61),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: mQuery.size.height*0.01,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text('\u2022'), // Unicode character for bullet point
                      ),
                      Flexible(
                        child: Text(
                          "Form 1099-C (canceled debt). ",
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Color(0xff696D61),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: mQuery.size.height*0.01,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text('\u2022'), // Unicode character for bullet point
                      ),
                      Flexible(
                        child: Text(
                          "Form 1099-A (acquisition or abandonment of secured property). Use Form W-9 only if you are a U.S. person (including a resident alien), to provide your correct TIN. ",
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Color(0xff696D61),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "Caution",style: TextStyle(
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiBold',
                            fontSize: 13
                        )
                        ),
                        TextSpan(
                            text: " If you don’t return Form W-9 to the requester with a TIN, you might be subject to backup withholding. See What is backup withholding, later. ",style: TextStyle(
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                            fontSize: 13
                        )
                        )
                      ]
                  )
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "By signing the filled-out form",style: TextStyle(
                       fontSize: 13,
                       color: Color(0xff5E6258),
                       fontFamily: 'SatoshiBold'
                    )
                    ),
                    TextSpan(
                        text: "  you: ",style: TextStyle(
                        fontSize: 13,
                        color: Color(0xff5E6258),
                        fontFamily: 'SatoshiMedium'
                    )
                    )
                  ]
                )
              ),
              SizedBox(height: mQuery.size.height*0.014,),

              Text("1. The number shown on this form is my correct taxpayer identification number (or I am waiting for a number to be issued to me); and",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.01,),

              Text("2. Certify that you are not subject to backup withholding; or ",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.01,),

              Text("3. Claim exemption from backup withholding if you are a U.S. exempt payee; and ",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.01,),

              Text("4. Certify to your non-foreign status for purposes of withholding under chapter 3 or 4 of the Code (if applicable); and ",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.01,),

              Text("5. Certify that FATCA code(s) entered on this form (if any) indicating that you are exempt from the FATCA reporting is correct. See What Is FATCA Reporting, later, for further information. ",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),

              SizedBox(height: mQuery.size.height*0.032,),

              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Note:",style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff5E6258)
                    )
                    ),
                    TextSpan(
                        text: " If you are a U.S. person and a requester gives you a form other than Form W-9 to request your TIN, you must use the requester’s form if it is substantially similar to this Form W-9. ",style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'SatoshiMedium',
                        color: Color(0xff5E6258)
                    )
                    )
                  ]
                )
              ),

              SizedBox(height: mQuery.size.height*0.032,),

              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "Definition of a U.S. person",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiBold',
                            color: Color(0xff5E6258)
                        )
                        ),
                        TextSpan(
                            text: " For federal tax purposes, you are considered a U.S. person if you are:  ",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff5E6258)
                        )
                        )
                      ]
                  )
              ),
              SizedBox(height: mQuery.size.height*0.012,),

              Text(
                "• An individual who is a U.S. citizen or U.S. resident alien; ",
                style: TextStyle(
                  fontSize: 13.0,
                  color: Color(0xff696D61),
                  fontFamily: 'SatoshiMedium',
                ),
              ),
              SizedBox(height: mQuery.size.height*0.007),
              Text(
                "• A partnership, corporation, company, or association created or organized in the United States or under the laws of the United States; ",
                style: TextStyle(
                  fontSize: 13.0,
                  color: Color(0xff696D61),
                  fontFamily: 'SatoshiMedium',
                ),
              ),

              SizedBox(height: mQuery.size.height*0.007),
              Text(
                "• An estate (other than a foreign estate); or ",
                style: TextStyle(
                  fontSize: 13.0,
                  color: Color(0xff696D61),
                  fontFamily: 'SatoshiMedium',
                ),
              ),

              SizedBox(height: mQuery.size.height*0.007),
              Text(
                "• A domestic trust (as defined in Regulations section 301.7701-7). ",
                style: TextStyle(
                  fontSize: 13.0,
                  color: Color(0xff696D61),
                  fontFamily: 'SatoshiMedium',
                ),
              ),

              SizedBox(height: mQuery.size.height*0.032),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "Establishing U.S. status for purposes of chapter 3 and chapter 4 withholding. ",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiBold',
                            color: Color(0xff5E6258)
                        )
                        ),
                        TextSpan(
                            text: "Payments made to foreign persons, including certain distributions, allocations of income, or transfers of sales proceeds, may be subject to withholding under chapter 3 or chapter 4 of the Code (sections 1441–1474). Under those rules, if a Form W-9 or other certification of non-foreign status has not been received, a withholding agent, transferee, or partnership (payor) generally applies presumption rules that may require the payor to withhold applicable tax from the recipient, owner, transferor, or partner (payee). See Pub. 515, Withholding of Tax on Nonresident Aliens and Foreign Entities. ",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff5E6258)
                        )
                        )
                      ]
                  )
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text("The following persons must provide Form W-9 to the payor for purposes of establishing its non-foreign status. ",style: TextStyle(
                fontSize: 13,
                fontFamily: 'SatoshiMedium',
                color: Color(0xff5E6258)
              ),),
              
              Text("• In the case of a disregarded entity with a U.S. owner, the U.S. owner of the disregarded entity and not the disregarded entity. ",style: TextStyle(
                fontSize: 13,
                fontFamily: 'SatoshiMedium',
                color: Color(0xff5E6258)
              ),),
              SizedBox(height: mQuery.size.height*0.007,),
              Text("• In the case of a grantor trust with a U.S. grantor or other U.S. owner, generally, the U.S. grantor or other U.S. owner of the grantor trust and not the grantor trust. ",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),),
              SizedBox(height: mQuery.size.height*0.007,),
              Text("• In the case of a U.S. trust (other than a grantor trust), the U.S. trust and not the beneficiaries of the trust. See Pub. 515 for more information on providing a Form W-9 or a certification of non-foreign status to avoid withholding.",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),),

              SizedBox(height: mQuery.size.height*0.045,),
              Text("Foreign person. if you are a foreign person or the U.S branch"
                  "of a foreign bank that has elected to be treated as a U"
                  "person (under Regulations section 1.1441-1(b)(2)(iv) or other "
                  "applicable section for chapter 3 or 4 purposes), do not use Form W-9,instead , use the "
                  "appropriate Form W-8 or Form 8233(see Pub.515),. if you are a qualified foreign pension fund under Regulations section 1.897(|)-1(d)"
                  ", or a partnership that is wholly owned by qualified foreign pension funds, that is treated as a non-foreign person for "
                  "purposes of section 1445 withholding, do not use Form W-9. Instead, use Form W-8EXP(or other certification of non-foreign status).",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),),

              SizedBox(height: mQuery.size.height*0.032,),
              Text("If you are a U.S. resident alien who is relying on an exception contained in the saving clause of a tax treaty to claim an exemption from U.S. tax on certain types of income, you must attach a statement to Form W-9 that specifies the following five items. ",style: TextStyle(
                fontSize: 13,
                fontFamily: 'SatoshiMedium',
                color: Color(0xff5E6258)
              ),),
              
              SizedBox(height: mQuery.size.height*0.023,),
              
              Text("1. The treaty country. Generally, this must be the same treaty under which you claimed exemption from tax as a nonresident alien. ",style: TextStyle(
                fontSize: 13,
                color: Color(0xff5E6258),
                fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.007,),

              Text("1. The treaty country. Generally, this must be the same treaty under which you claimed exemption from tax as a nonresident alien. ",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.007,),

              Text("2. The treaty article addressing the income.",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.007,),

              Text("3. The article number (or location) in the tax treaty that contains the saving clause and its exceptions. ",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.007,),

              Text("4. The type and amount of income that qualifies for the exemption from tax. ",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.007,),

              Text("5. Sufficient facts to justify the exemption from tax under the terms of the treaty article. ",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),

              SizedBox(height: mQuery.size.height*0.032,),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "Example",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiBold',
                            color: Color(0xff5E6258)
                        )
                        ),
                        TextSpan(
                            text: "  Article 20 of the U.S.-China income tax treaty allows an exemption from tax for scholarship income received by a Chinese student temporarily present in the United States. Under U.S. law, this student will become a resident alien for tax purposes if their stay in the United States exceeds 5 calendar years. However, paragraph 2 of the first Protocol to the U.S.-China treaty (dated April 30, 1984) allows the provisions of Article 20 to continue to apply even after the Chinese student becomes a resident alien of the United States. A Chinese student who qualifies for this exception (under paragraph 2 of the first Protocol) and is relying on this exception to claim an exemption from tax on their scholarship or fellowship income would attach to Form W-9 a statement that includes the information described above to support that exemption.",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff5E6258)
                        )
                        )
                      ]
                  )
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text("if you are a noresident alien or a foreign entity, give the requester the "
                  "appropriate completed Form W-8 or Form 8233",style: TextStyle(
                fontSize: 13,
                color: Color(0xff5E6258),
                fontFamily: 'SatoshiMedium'
              ),),
              
              SizedBox(height: mQuery.size.height*0.032,),
              Text("Backup Withholding",style: TextStyle(
                fontSize: 24,
                fontFamily: 'SatoshiBold',
                color: Colors.black
              ),),

              SizedBox(height: mQuery.size.height*0.032,),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "What is backup withholding?",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiBold',
                            color: Color(0xff5E6258)
                        )
                        ),
                        TextSpan(
                            text: "  Persons making certain payments to you must under certain conditions withhold and pay to the IRS 24% of such payments. This is called “backup withholding.” Payments that may be subject to backup withholding include, but are not limited to, interest, tax-exempt interest, dividends, broker and barter exchange transactions, rents, royalties, nonemployee pay, payments made in settlement of payment card and third-party network transactions, and certain payments from fishing boat operators. Real estate transactions are not subject to backup withholding. ", style :  TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff5E6258)
                        )
                        )
                      ]
                  )
              ),
              
              SizedBox(height: mQuery.size.height*0.023,),
              Text("You will not be subject to backup withholding on payments you receive if you give the requester your correct TIN, make the proper certifications, and report all your taxable interest and dividends on your tax return",style: TextStyle(
                fontSize: 13,
                fontFamily: 'SatoshiMedium',
                color: Color(0xff5E6258)
              ),),
              SizedBox(height: mQuery.size.height*0.023,),
              Text("Payments you receive will be subject to backup withholding if: ",style: TextStyle(
                color: Color(0xff5E6258),
                fontFamily: 'SatoshiBold',
                fontSize: 13
              ),),
              SizedBox(height: mQuery.size.height*0.007,),
              Text("1. You do not furnish your TIN to the requester; ",style: TextStyle(
                fontSize: 13,
                color: Color(0xff5E6258),
                fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.007,),
              Text("2. You do not certify your TIN when required (see the instructions for Part II for details); ",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),

              SizedBox(height: mQuery.size.height*0.007,),
              Text("3. The IRS tells the requester that you furnished an incorrect TIN; ",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),

              SizedBox(height: mQuery.size.height*0.007,),
              Text("4. The IRS tells you that you are subject to backup withholding because you did not report all your interest and dividends on your tax return (for reportable interest and dividends only); or ",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),

              SizedBox(height: mQuery.size.height*0.007,),
              Text(
                '5. you do not certify to the requester that you are not subject to backup withholding "By signing the filledout form" above (for reportable interest and dividend accounts opened after 1983 only).',
                style: TextStyle(
                    fontSize: 13,
                    color: Color(0xff5E6258),
                    fontFamily: 'SatoshiMedium'
                ),
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text("Certain payees and payments are exempt from backup withholding. See Exempt payee code, later, and the separate Instructions for the Requester of Form W-9 for more information."
                "See also Establishing U.S. status for purposes of chapter 3 and chapter 4 withholding, earlier.",style: TextStyle(
                fontSize: 13,
                color: Color(0xff5E6258),
                fontFamily: 'SatoshiMedium'
              ),),

              SizedBox(height: mQuery.size.height*0.032,),
              Text("What Is FATCA Reporting?",style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'SatoshiBold'
              ),),
              SizedBox(height: mQuery.size.height*0.016,),
              Text("The Foreign Account Tax Compliance Act (FATCA) requires a participating foreign financial institution to report all U.S. account holders that are specified U.S. persons. Certain payees are exempt from FATCA reporting. See Exemption from FATCA reporting code, later, and the Instructions for the Requester of Form W-9 for more information.",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),

              SizedBox(height: mQuery.size.height*0.032,),
              Text("Updating Your Information",style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'SatoshiBold'
              ),),
              SizedBox(height: mQuery.size.height*0.016,),
              Text("You must provide updated information to any person to whom you claimed to be an exempt payee if you are no longer an exempt payee and anticipate receiving reportable payments in the future from this person. For example, you may need to provide updated information if you are a C corporation that elects to be an S corporation, or if you are no longer tax exempt. In addition, you must furnish a new Form W-9 if the name or TIN changes for the account, for example, if the grantor of a grantor trust dies.",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),

              SizedBox(height: mQuery.size.height*0.032,),
              Text("Penalties",style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'SatoshiBold'
              ),),
              SizedBox(height: mQuery.size.height*0.016,),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "Failure to furnish TIN",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiBold',
                            color: Color(0xff5E6258)
                        )
                        ),
                        TextSpan(
                            text: "  If you fail to furnish your correct TIN to a requester, you are subject to a penalty of \$50 for each such failure unless your failure is due to reasonable cause and not to willful neglect. ", style :  TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff5E6258)
                        )
                        )
                      ]
                  )
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "Civil penalty for false information with respect to withholding. ",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiBold',
                            color: Color(0xff5E6258)
                        )
                        ),
                        TextSpan(
                            text: " If you make a false statement with no reasonable basis that results in no backup withholding, you are subject to a \$500 penalty.", style :  TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff5E6258)
                        )
                        )
                      ]
                  )
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "Criminal penalty for falsifying information",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiBold',
                            color: Color(0xff5E6258)
                        )
                        ),
                        TextSpan(
                            text: "  Willfully falsifying certifications or affirmations may subject you to criminal penalties including fines and/or imprisonment. ", style :  TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff5E6258)
                        )
                        )
                      ]
                  )
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "Misuse of TINs",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiBold',
                            color: Color(0xff5E6258)
                        )
                        ),
                        TextSpan(
                            text: "  If the requester discloses or uses TINs in violation of federal law, the requester may be subject to civil and criminal penalties.", style :  TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff5E6258)
                        )
                        )
                      ]
                  )
              ),

              SizedBox(height: mQuery.size.height*0.032,),
              Text("Specific Instructions",style: TextStyle(
                fontSize: 24,
                fontFamily: 'SatoshiBold',
                color: Colors.black,
              ),),

              SizedBox(height: mQuery.size.height*0.023,),
              Text("Line 1",style: TextStyle(
                fontSize: 13,
                color: Color(0xff5E6258),
                fontFamily: 'SatoshiBold'
              ),),
              SizedBox(height: mQuery.size.height*0.01,),
              Text("You must enter one of the following on this line; do not leave this line blank. The name should match the name on your tax return."
                  "If this Form W-9 is for a joint account (other than an account maintained by a foreign financial institution (FFI)), list first, and then circle, the name of the person or entity whose number you entered in Part I of Form W-9. If you are providing Form W-9 to an FFI to document a joint account, each holder of the account that is a U.S. person must provide a Form W-9. ",style: TextStyle(
                fontSize: 13,
                color: Color(0xff5E6258),
                fontFamily: 'SatoshiMedium'
              ),),

              SizedBox(height: mQuery.size.height*0.023,),
              Text(
                "• Individual. Generally, enter the name shown on your tax return. If you have changed your last name without informing the Social Security Administration (SSA) of the name change, enter your first name, the last name as shown on your social security card, and your new last name. Note for ITIN applicant: Enter your individual name as it was entered on your Form W-7 application, line 1a. This should also be the same as the name you entered on the Form 1040 you filed with your application. ", style: TextStyle(
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.01,),
              Text(
                "• Sole proprietor. Enter your individual name as shown on your Form 1040 on line 1. Enter your business, trade, or “doing business as” (DBA) name on line 2. ", style: TextStyle(
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.01,),

              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "• Partnership, C corporation, S corporation, or LLC, other than a disregarded entity. ",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiBold',
                            color: Color(0xff5E6258)
                        )
                        ),
                        TextSpan(
                            text: " Enter the entity’s name as shown on the entity’s tax return on line 1 and any business, trade, or DBA name on line 2. ", style :  TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff5E6258)
                        )
                        )
                      ]
                  )
              ),

              SizedBox(height: mQuery.size.height*0.01,),

              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "• Other entities",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiBold',
                            color: Color(0xff5E6258)
                        )
                        ),
                        TextSpan(
                            text: " Enter the entity’s name as shown on the entity’s tax return on line 1 and any business, trade, or DBA name on line 2. ", style :  TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff5E6258)
                        )
                        )
                      ]
                  )
              ),

              SizedBox(height: mQuery.size.height*0.01,),

              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "• Disregarded entity. ",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiBold',
                            color: Color(0xff5E6258)
                        )
                        ),
                        TextSpan(
                            text: " In general, a business entity that has a single owner, including an LLC, and is not a corporation, is disregarded as an entity separate from its owner (a disregarded entity). See Regulations section 301.7701-2(c)(2). A disregarded entity should check the appropriate box for the tax classification of its owner. Enter the owner’s name on line 1. The name of the owner entered on line 1 should never be a disregarded entity. The name on line 1 should be the name shown on the income tax return on which the income should be reported. For example, if a foreign LLC that is treated as a disregarded entity for U.S. federal tax purposes has a single owner that is a U.S. person, the U.S. owner’s name is require"
                                "d to be provided on line 1. If the direct owner of the entity is also a disregarded entity, enter the first owner that is not disregarded for federal tax purposes. Enter the disregarded entity’s name on line 2. If the owner of the disregarded entity is a foreign person, the owner must complete an appropriate Form W-8 instead of a Form W-9. This is the case even if the foreign person has a U.S. TIN.", style :  TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff5E6258)
                        )
                        )
                      ]
                  )
              ),

              SizedBox(height: mQuery.size.height*0.032,),
              Text("Line 2",style: TextStyle(
                fontSize: 13,
                fontFamily: 'SatoshiBold',
                color: Color(0xff5E6258)
              ),),
              
              SizedBox(height: mQuery.size.height*0.01),
              Text("If you have a business name, trade name, DBA name, or disregarded entity name, enter it on line 2. ",style: TextStyle(
                fontSize: 13,
                color: Color(0xff5E6258),
                fontFamily: 'SatoshiMedium'
              ),),


              SizedBox(height: mQuery.size.height*0.032,),
              Text("Line 3a ",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiBold',
                  color: Color(0xff5E6258)
              ),),

              SizedBox(height: mQuery.size.height*0.01),
              Text("Check the appropriate box on line 3a for the U.S. federal tax classification of the person whose name is entered on line 1. Check only one box on line 3a.",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),


              SizedBox(height: mQuery.size.height*0.023,),
              Table(
                border: TableBorder.all(color: Colors.grey), // Add this line to set border for the table
                children: [
                  TableRow(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ), // Add padding to center the text vertically
                        child: Text(
                          "IF the entity/individual on line 1 is a(n) . . .",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiBold',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),  // Add padding to center the text vertically
                        child: Text(
                          "Corporation",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      border: Border(left: BorderSide(color: Colors.grey)), // Add left border for vertical line
                    ),
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "THEN check the box for . . .",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiBold',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "Corporation",
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      )
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      border: Border(left: BorderSide(color: Colors.grey)), // Add left border for vertical line
                    ),
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "IF the entity/individual on line 1 is a(n) . . .",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiBold',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "• Individual or • Sole proprietorship",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      border: Border(left: BorderSide(color: Colors.grey)), // Add left border for vertical line
                    ),
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "THEN check the box for . . .",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiBold',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "Individual/sole proprietor",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      border: Border(left: BorderSide(color: Colors.grey)), // Add left border for vertical line
                    ),
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "IF the entity/individual on line 1 is a(n) . . .",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiBold',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "• LLC classified as a partnership for U.S. federal tax purposes or"
   " • LLC that has filed Form 8832 or 2553 electing to be taxed as a corporation",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      border: Border(left: BorderSide(color: Colors.grey)), // Add left border for vertical line
                    ),
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "THEN check the box for . . .",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiBold',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "Limited liability company and enter the appropriate tax classification: "
   " P = Partnership,"
   " C = C corporation, or"
   " S = S corporation.Limited liability company and enter the appropriate tax classification:"
   " P = Partnership,"
   " C = C corporation, or"
   " S = S corporation.",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      border: Border(left: BorderSide(color: Colors.grey)), // Add left border for vertical line
                    ),
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "IF the entity/individual on line 1 is a(n) . . .",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiBold',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "• Partnership",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      border: Border(left: BorderSide(color: Colors.grey)), // Add left border for vertical line
                    ),
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "THEN check the box for . . .",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiBold',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "Partnership.",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      border: Border(left: BorderSide(color: Colors.grey)), // Add left border for vertical line
                    ),
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "IF the entity/individual on line 1 is a(n) . . .",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiBold',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "• Trust/estate",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      border: Border(left: BorderSide(color: Colors.grey)), // Add left border for vertical line
                    ),
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "THEN check the box for . . .",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiBold',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "Trust/estate.",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: mQuery.size.height*0.032,),
              Text("Line 3b ",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiBold',
                  color: Color(0xff5E6258)
              ),),

              SizedBox(height: mQuery.size.height*0.01),
              Text("Check this box if you are a partnership (including an LLC classified as a partnership for U.S. federal tax purposes), trust, or estate that has any foreign partners, owners, or beneficiaries, and you are providing this form to a partnership, trust, or estate, in which you have an ownership interest. You must check the box on line 3b if you receive a Form W-8 (or documentary evidence) from any partner, owner, or beneficiary establishing foreign status or if you receive a "
                  "Form W-9 from any partner, owner, or beneficiary that has checked the box on line 3b. ",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),

              SizedBox(height: mQuery.size.height*0.023,),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "Note: ",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiBold',
                            color: Color(0xff5E6258)
                        )
                        ),
                        TextSpan(
                            text: " A partnership that provides a Form W-9 and checks box 3b may be required to complete Schedules K-2 and K-3 (Form 1065). For more information, see the "
                                "Partnership Instructions for Schedules K-2 and K-3 (Form 1065). ", style :  TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff5E6258)
                        )
                        )
                      ]
                  )
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text("If you are required to complete line 3b but fail to do so, you may not receive the information necessary to file a correct information return with the IRS or furnish a correct payee statement to your partners or beneficiaries. See, for example, sections 6698, 6722, "
                  "and 6724 for penalties that may apply. ",style: TextStyle(
                color: Color(0xff5E6258),
                fontSize: 13,
                fontFamily: 'SatoshiMedium'
              ),),

              SizedBox(height: mQuery.size.height*0.023,),
              Text( "Line 4 Exemptions ",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiBold'
              ),),
              SizedBox(height: mQuery.size.height*0.016,),
              Text( "If you are exempt from backup withholding and/or FATCA reporting, enter in the appropriate space on line 4 any code(s) that may apply to you. ",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium'
              ),),

              SizedBox(height: mQuery.size.height*0.023,),
              Text( "Exempt payee code. ",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiBold'
              ),),
              SizedBox(height: mQuery.size.height*0.016,),
              Text( "• Generally, individuals (including sole proprietors) are not exempt from backup withholding. ",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium'
              ),),

              SizedBox(height: mQuery.size.height*0.016,),
              Text( "• Except as provided below, corporations are exempt from backup withholding for certain payments, including interest and dividends. ",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium'
              ),),

              SizedBox(height: mQuery.size.height*0.016,),
              Text( "• Corporations are not exempt from backup withholding for payments made in settlement of payment card or third-party network transactions. ",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium'
              ),),

              SizedBox(height: mQuery.size.height*0.016,),
              Text( "• Corporations are not exempt from backup withholding with respect to attorneys’ fees or gross proceeds paid to attorneys, and corporations that provide medical or health care services are "
                  "not exempt with respect to payments reportable on Form 1099-MISC. ",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium'
              ),),


              SizedBox(height: mQuery.size.height*0.016,),
              Text( "The following codes identify payees that are exempt from backup withholding. Enter the appropriate code in the space on line 4. ",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.005,),
              Text( "1—An organization exempt from tax under section 501(a), any IRA, or a custodial account under section 403(b)(7) if the account satisfies the requirements of section 401(f)(2).",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.005,),
              Text( "2—The United States or any of its agencies or instrumentalities. ",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.005,),
              Text( "3—A state, the District of Columbia, a U.S. commonwealth or territory, or any of their political subdivisions or instrumentalities. ",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.005,),
              Text( "4—A foreign government or any of its political subdivisions, agencies, or instrumentalities. ",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.005,),
              Text( "5—A corporation. ",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.005,),
              Text( "6—A dealer in securities or commodities required to register in the United States, the District of Columbia, or a U.S. commonwealth or territory. ",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.005,),
              Text( "7—A futures commission merchant registered with the Commodity Futures Trading Commission. ",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium'
              ),),


              SizedBox(height: mQuery.size.height*0.005,),
              Text( "8—A real estate investment trust. ",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium'
              ),),

              SizedBox(height: mQuery.size.height*0.005,),
              Text( "9—An entity registered at all times during the tax year under the Investment Company Act of 1940. ",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium'
              ),),

              SizedBox(height: mQuery.size.height*0.005,),
              Text( "10—A common trust fund operated by a bank under section 584(a). ",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium'
              ),),

              SizedBox(height: mQuery.size.height*0.005,),
              Text( "11—A financial institution as defined under section 581. ",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium'
              ),),

              SizedBox(height: mQuery.size.height*0.005,),
              Text( "12—A middleman known in the investment community as a nominee or custodian. ",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium'
              ),),

              SizedBox(height: mQuery.size.height*0.005,),
              Text( "13—A trust exempt from tax under section 664 or described in section 4947. ",style : TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium'
              ),),

              SizedBox(height: mQuery.size.height*0.023,),
              Text( "The following chart shows types of payments that may be exempt from backup withholding. The chart "
                  "applies to the exempt payees listed above, 1 through 13",style : TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium'
              ),),

              SizedBox(height: mQuery.size.height*0.023,),
              Table(
                border: TableBorder.all(color: Colors.grey), // Add this line to set border for the table
                children: [
                  TableRow(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ), // Add padding to center the text vertically
                        child: Text(
                          "IF the payment is for",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiBold',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),  // Add padding to center the text vertically
                        child: Text(
                          "THEN the payment is exempt for",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiBold',
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      border: Border(left: BorderSide(color: Colors.grey)), // Add left border for vertical line
                    ),
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "• Interest and dividend payments",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "All exempt payees except for 7.",
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      )
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      border: Border(left: BorderSide(color: Colors.grey)), // Add left border for vertical line
                    ),
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "• Broker transactions",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "Exempt payees 1 through 4 and 6 through 11 and all C corporations. S corporations must not enter an exempt payee code ",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      border: Border(left: BorderSide(color: Colors.grey)), // Add left border for vertical line
                    ),
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "• Barter exchange ...",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      border: Border(left: BorderSide(color: Colors.grey)), // Add left border for vertical line
                    ),
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "• Payments over \$600 required to be reported...",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      border: Border(left: BorderSide(color: Colors.grey)), // Add left border for vertical line
                    ),
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "• Payments made in settlement of paymen...",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text("1 See Form 1099-MISC, Miscellaneous Information, and its instructions. ",style: TextStyle(
                fontSize: 13,
                fontFamily: 'SatoshiMedium',
                color: Color(0xff5E6258)
              ),),
              SizedBox(height: mQuery.size.height*0.005,),
              Text("2 However, the following payments made to a corporation and reportable on Form 1099-MISC are not exempt from backup withholding: medical and health care payments, attorneys’ fees, gross proceeds paid to an attorney reportable under section 6045(f), and payments for services paid by a federal executive agency. ",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),),

              SizedBox(height: mQuery.size.height*0.023,),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "Exemption from FATCA reporting code.",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiBold',
                            color: Color(0xff5E6258)
                        )
                        ),
                        TextSpan(
                            text: " The following codes identify payees that are exempt from reporting under FATCA. These codes apply to persons submitting this form for accounts maintained outside of the United States by certain foreign financial institutions. Therefore, if you are only submitting this form for an account you hold in the United States, you may leave this field blank. Consult with the person requesting this form if you are uncertain if the financial institution is subject to these requirements. A requester may indicate that a code is not required by providing you with a Form W-9 with “Not Applicable” (or any similar indication) entered on the line for a FATCA exemption code. " , style :  TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff5E6258)
                        )
                        )
                      ]
                  )
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text("A—An organization exempt from tax under section 501(a) or any individual retirement plan as defined in section 7701(a)(37). ",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),),
              SizedBox(height: mQuery.size.height*0.007,),
              Text("B—The United States or any of its agencies or instrumentalities.",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),),
              SizedBox(height: mQuery.size.height*0.007,),
              Text("C—A state, the District of Columbia, a U.S. commonwealth or territory, or any of their political subdivisions or instrumentalities. ",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),),
              SizedBox(height: mQuery.size.height*0.007,),
              Text("D—A corporation the stock of which is regularly traded on one or more established securities markets, as described in Regulations section 1.1472-1(c)(1)(i). ",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),),
              SizedBox(height: mQuery.size.height*0.007,),
              Text("E—A corporation that is a member of the same expanded affiliated group as a corporation described in Regulations section 1.1472-1(c)(1)(i).",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),),
              SizedBox(height: mQuery.size.height*0.007,),
              Text("F—A dealer in securities, commodities, or derivative financial instruments (including notional principal contracts, futures, forwards, and options) that is registered as such under the laws of the United States or any state. ",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),),
              SizedBox(height: mQuery.size.height*0.007,),
              Text("G—A real estate investment trust. ",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),),
              SizedBox(height: mQuery.size.height*0.007,),
              Text("H—A regulated investment company as defined in section 851 or an entity registered at all times during the tax year under the Investment Company Act of 1940. ",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),),
              SizedBox(height: mQuery.size.height*0.007,),
              Text("I—A common trust fund as defined in section 584(a). ",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),),
              SizedBox(height: mQuery.size.height*0.007,),
              Text("J—A bank as defined in section 581. ",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),),
              SizedBox(height: mQuery.size.height*0.007,),
              Text("K—A broker. ",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),),
              SizedBox(height: mQuery.size.height*0.007,),
              Text("L—A trust exempt from tax under section 664 or described in section 4947(a)(1). ",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),),
              SizedBox(height: mQuery.size.height*0.007,),
              Text("M—A tax-exempt trust under a section 403(b) plan or section 457(g) plan. ",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),),

              SizedBox(height: mQuery.size.height*0.023,),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "Note:",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiBold',
                            color: Color(0xff5E6258)
                        )
                        ),
                        TextSpan(
                            text: " You may wish to consult with the financial institution requesting this form to determine whether the FATCA code and/or exempt payee code should be completed." , style :  TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff5E6258)
                        )
                        )
                      ]
                  )
              ),
          
              SizedBox(height: mQuery.size.height*0.023,),
              Text("Line 5 ",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiBold',
                  color: Color(0xff5E6258)
              ),),
              SizedBox(height: mQuery.size.height*0.007,),
              Text("Enter your address (number, street, and apartment or suite number). This is where the requester of this Form W-9 will mail your information returns. If"
                  " this address differs from the one the requester already has on file, enter “NEW” at the top. If a new address is provided, there is still a chance the old address will be used until the payor changes your address in their records. ",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),),

              SizedBox(height: mQuery.size.height*0.023,),
              Text("Line 6 ",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiBold',
                  color: Color(0xff5E6258)
              ),),
              SizedBox(height: mQuery.size.height*0.007,),
              Text("Enter your city, state, and ZIP code.",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),),

              SizedBox(height: mQuery.size.height*0.055,),
              Text("Part I. Taxpayer Identification Number (TIN)",style: TextStyle(
                fontSize: 24,
                fontFamily: 'SatoshiBold',
                color: Colors.black
              ),),

              SizedBox(height: mQuery.size.height*0.023,),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "Enter your TIN in the appropriate box",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiBold',
                            color: Color(0xff5E6258)
                        )
                        ),
                        TextSpan(
                            text: "  If you are a resident alien and you do not have, and are not eligible to get, an SSN, your TIN is your "
                                "IRS ITIN. Enter it in the entry space for the Social security number. If you do not have an ITIN, see How to get a TIN below." , style :  TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff5E6258)
                        )
                        )
                      ]
                  )
              ),
              
              SizedBox(height: mQuery.size.height*0.023,),
              Text("If you are a sole proprietor and you have an EIN, you may enter either your SSN or EIN. If you are a single-member LLC that is disregarded as an entity separate from its owner, enter the owner’s SSN (or EIN, if the owner has one). If the LLC is classified as a corporation or partnership, enter the entity’s EIN. ",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),),


              SizedBox(height: mQuery.size.height*0.023,),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "Note:",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiBold',
                            color: Color(0xff5E6258)
                        )
                        ),
                        TextSpan(
                            text: " See What Name and Number To Give the Requester, later, for further clarification of name and TIN combinations. " , style :  TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff5E6258)
                        )
                        )
                      ]
                  )
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "How to get a TIN.",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiBold',
                            color: Color(0xff5E6258)
                        )
                        ),
                        TextSpan(
                            text: " If you do not have a TIN, apply for one immediately. To apply for an SSN, get Form SS-5, Application for a Social Security Card, from your local SSA office or get this form online at www.SSA.gov. You may also get this form by calling 800-772-1213. Use Form W-7, Application for IRS Individual Taxpayer Identification Number, to apply for an ITIN, or Form SS-4, Application for Employer Identification Number, to apply for an EIN. You can apply for an EIN online by accessing the IRS website at www.irs.gov/EIN. Go to www.irs.gov/Forms to view, download, or print Form W-7 and/or Form SS-4. Or, you can go to www.irs.gov/OrderForms to place an order and have Form W-7 and/or Form SS-4 mailed to you within 15 business days. ",style :  TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff5E6258)
                        )
                        )
                      ]
                  )
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text("If you are asked to complete Form W-9 but do not have a TIN, apply for a TIN and enter “Applied For” in the space for the TIN, sign and date the form, and give it to the requester. For interest and dividend payments, and certain payments made with respect to readily tradable instruments, you will generally have 60 days to get a TIN and give it to the requester before you are subject to backup withholding on payments. The 60-day rule does not apply to other types of payments. You will be subject to backup withholding on all such payments until you"
                  " provide your TIN to the requester. ",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),),

              SizedBox(height: mQuery.size.height*0.023,),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "Note.",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiBold',
                            color: Color(0xff5E6258)
                        )
                        ),
                        TextSpan(
                            text: " Entering “Applied For” means that you have already applied for a TIN or that you intend to apply for one soon. See also Establishing U.S. status "
                                "for purposes of chapter 3 and chapter 4 withholding, earlier, for when you may instead be subject to withholding under chapter 3 or 4 of the Code. ",style :  TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff5E6258)
                        )
                        )
                      ]
                  )
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "Caution:",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiBold',
                            color: Color(0xff5E6258)
                        )
                        ),
                        TextSpan(
                            text:" A disregarded U.S. entity that has a foreign owner must use the appropriate Form W-8.",style :  TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff5E6258)
                        )
                        )
                      ]
                  )
              ),

              SizedBox(height: mQuery.size.height*0.055,),
              Text("Part II. Certification",style: TextStyle(
                fontSize: 24,
                  fontFamily: 'SatoshiBold',
                  color: Colors.black
              ),),

              SizedBox(height: mQuery.size.height*0.023,),
              Text("To establish to the withholding agent that you are a U.S. person, or resident alien, sign Form W-9. You may be requested to sign by the withholding agent even if item 1, 4, or 5 below indicates otherwise. ",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),),


              SizedBox(height: mQuery.size.height*0.023,),
              Text("For a joint account, only the person whose TIN is shown in Part I should sign (when required). In the case of a disregarded entity, the person identified on line 1 must sign. Exempt payees, see Exempt payee code, earlier. ",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),),


              SizedBox(height: mQuery.size.height*0.023,),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "Signature requirements.",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiBold',
                            color: Color(0xff5E6258)
                        )
                        ),
                        TextSpan(
                            text:"Complete the certification as indicated in items 1 through 5 below. ", style :  TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff5E6258)
                        )
                        )
                      ]
                  )
              ),

              SizedBox(height: mQuery.size.height*0.023,),

              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "1. Interest, dividend, and barter exchange accounts opened before 1984 and broker accounts considered active during 1983.",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiBold',
                            color: Color(0xff5E6258)
                        )
                        ),
                        TextSpan(
                            text:" You must give your correct TIN, but you do not have to sign the certification", style :  TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff5E6258)
                        )
                        )
                      ]
                  )
              ),
              SizedBox(height: mQuery.size.height*0.01,),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "2. Interest, dividend, broker, and barter exchange "
                                "accounts opened after 1983 and broker accounts considered inactive during 1983", style : TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiBold',
                            color: Color(0xff5E6258)
                        )
                        ),
                        TextSpan(
                            text:" You must sign the certification or backup withholding will apply. If you are subject to backup withholding and you are merely"
                                " providing your correct TIN to the requester, you must cross out item 2 in the certification before signing the form.", style :  TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff5E6258)
                        )
                        )
                      ]
                  )
              ),
              SizedBox(height: mQuery.size.height*0.01,),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "3. Real estate transactions",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiBold',
                            color: Color(0xff5E6258)
                        )
                        ),
                        TextSpan(
                            text:" You must sign the certification. You may cross out item 2 of the certification. ", style :  TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff5E6258)
                        )
                        )
                      ]
                  )
              ),
              SizedBox(height: mQuery.size.height*0.01,),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "4. Other payments. ",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiBold',
                            color: Color(0xff5E6258)
                        )
                        ),
                        TextSpan(
                            text:" You must give your correct TIN, but you do not have to sign the certification unless you have been notified that you have previously given an incorrect TIN. “Other payments” include payments made in the course of the requester’s trade or business for rents, royalties, goods (other than bills for merchandise), medical and health care services (including payments to corporations), payments to a nonemployee for services, payments made in settlement of payment card and third-party network transactions, payments to certain fishing boat crew members and fishermen, and gross proceeds paid to attorneys (including payments to corporations). ", style :  TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff5E6258)
                        )
                        )
                      ]
                  )
              ),
              SizedBox(height: mQuery.size.height*0.01,),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "5. Mortgage interest paid by you, acquisition or abandonment of secured property, cancellation of debt, qualified tuition program payments (under section 529), ABLE accounts (under section 529A), IRA, Coverdell ESA, Archer MSA or HSA contributions or distributions, and pension distributions.", style : TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiBold',
                            color: Color(0xff5E6258)
                        )
                        ),
                        TextSpan(
                            text:" You must give your correct TIN, but you do not have to sign the certification.", style :  TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff5E6258)
                        )
                        )
                      ]
                  )
              ),


              SizedBox(height: mQuery.size.height*0.032,),
              Text("What Name and Number To Give the Requester",style: TextStyle(
                fontSize: 24,
                fontFamily: 'SatoshiBold',
                color: Colors.black
              ),),
              SizedBox(height: mQuery.size.height*0.023,),
              Table(
                border: TableBorder.all(color: Colors.grey), // Add this line to set border for the table
                children: [
                  TableRow(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          top: 8,left: 8,bottom: 8
                        ), // Add padding to center the text vertically
                        child: Text(
                          "For this type of account:",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiBold',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),  // Add padding to center the text vertically
                        child: Text(
                          "Give name and SSN of:",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiBold',
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      border: Border(left: BorderSide(color: Colors.grey)), // Add left border for vertical line
                    ),
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          top: 8,left: 8,bottom: 8
                       ),
                        child: Text(
                          "1. Individual",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "The individual",
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      )
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      border: Border(left: BorderSide(color: Colors.grey)), // Add left border for vertical line
                    ),
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "2. Two or more individuals (joint account) other than an account maintained by an FFI",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "The actual owner of the account or, if combined funds, the first individual on the account",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      border: Border(left: BorderSide(color: Colors.grey)), // Add left border for vertical line
                    ),
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "3. Two or more U.S. persons  (joint account maintained by an FFI)3. Two or more U.S. persons  (joint account maintained by an FFI)",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "Each holder of the account",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      border: Border(left: BorderSide(color: Colors.grey)), // Add left border for vertical line
                    ),
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "4. Custodial account of a minor (Uniform Gift to Minors Act)",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "The minor",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      border: Border(left: BorderSide(color: Colors.grey)), // Add left border for vertical line
                    ),
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "5. a. The usual revocable savings trust (grantor is also trustee)",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "The grantor-trustee",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      border: Border(left: BorderSide(color: Colors.grey)), // Add left border for vertical line
                    ),
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "b. So-called trust account that is not a legal or valid trust under state law",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "The actual owner",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      border: Border(left: BorderSide(color: Colors.grey)), // Add left border for vertical line
                    ),
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "6. Sole proprietorship or disregarded entity owned by an individual",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "The grantor",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      border: Border(left: BorderSide(color: Colors.grey)), // Add left border for vertical line
                    ),
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "7. Grantor trust filing under Optional Filing Method 1 (see Regulations section 1.671-4(b)(2)(i)(A))**",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 8,left: 8,bottom: 8
                        ),
                        child: Text(
                          "The broker or nominee",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: mQuery.size.height*0.032,),
              Text("Secure Your Tax Records From Identity Theft",style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontFamily: 'SatoshiBold'
              ),),
              SizedBox(height: mQuery.size.height*0.023,),
              Text("Identity theft occurs when someone uses your personal information, such as your name, SSN, or other identifying information, without your permission to commit fraud or other crimes. An identity thief may use your SSN to get a job or may file a tax return using your SSN to receive a refund. ",style: TextStyle(
                fontSize: 13,
                fontFamily: 'SatoshiMedium',
                color: Color(0xff5E6258)
              ),
              ),

              SizedBox(height: mQuery.size.height*0.032,),
              Text("To reduce your risk: ",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),
              ),
              Text("• Protect your SSN, ",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),
              ),
              Text("• Ensure your employer is protecting your SSN, and ",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),
              ),
              Text("• Be careful when choosing a tax return preparer. ",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text("If your tax records are affected by identity theft and you receive a notice from the IRS, respond right away to the name and phone number printed on the IRS notice or letter. ",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text("If your tax records are not currently affected by identity theft but you think you are at risk due to a lost or stolen purse or wallet, questionable credit card activity, or a questionable credit report, contact the IRS Identity Theft Hotline at 800-908-4490 or submit Form 14039. ",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text("For more information, see Pub. 5027, Identity Theft Information for Taxpayers.",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text("Victims of identity theft who are experiencing economic harm or a systemic problem, or are seeking help in resolving tax problems that have not been resolved through normal channels, may be eligible for Taxpayer Advocate Service (TAS) assistance. You can reach TAS by calling the TAS toll-free case intake line at 877-777-4778 or TTY/TDD 800-829-4059. ",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "Protect yourself from suspicious emails or phishing schemes. ", style : TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiBold',
                            color: Color(0xff5E6258)
                        )
                        ),
                        TextSpan(
                            text:" Phishing is the creation and use of email and websites designed to mimic legitimate "
                                "business emails and websites. The most common act is sending an email to a user falsely claiming to be an established legitimate enterprise in an attempt to scam the user into surrendering private information that will be used for identity theft", style :  TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff5E6258)
                        )
                        )
                      ]
                  )
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text("The IRS does not initiate contacts with taxpayers via emails. Also, the IRS does not request personal detailed "
                  "information through email or ask taxpayers for the PIN numbers, passwords, or similar secret access information for their credit card, bank, or other financial accounts. ",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),
              ),


              SizedBox(height: mQuery.size.height*0.023,),
              Text("If you receive an unsolicited email claiming to be from the IRS, forward this message to phishing@irs.gov. You may also report misuse of the IRS name, logo, or other IRS property to the Treasury Inspector General for Tax Administration (TIGTA) at 800-366-4484. You can forward suspicious emails to "
                  "the Federal Trade Commission at spam@uce.gov or report them at www.ftc.gov/complaint. You can contact the FTC at www.ftc.gov/idtheft or 877-IDTHEFT (877-438-4338). If you have been the victim of identity theft, see www.IdentityTheft.gov and Pub. 5027. ",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text("Go to www.irs.gov/IdentityTheft to learn more about identity theft and how to reduce your risk.",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text("Privacy Act Notice", style : TextStyle(
                  fontSize: 24,
                  fontFamily: 'SatoshiBold',
                  color: Colors.black
              ),
              ),
              SizedBox(height: mQuery.size.height*0.023,),
              Text("Section 6109 of the Internal Revenue Code requires you to provide your correct TIN to persons (including federal agencies) who are required to file information returns with the IRS to report interest, dividends, or certain other income paid to you; mortgage interest you paid; the acquisition or abandonment of secured property; the cancellation of debt; or contributions you made to an IRA, Archer MSA, or HSA. "
                  "The person collecting this form uses the information on the form to file information returns with the IRS, reporting the above information. Routine uses of this information include giving it to the Department of Justice for civil and criminal litigation and to cities, states, the District of Columbia, and U.S. commonwealths and territories for use in administering their laws. The information may also be disclosed to other countries under a treaty, to federal and state agencies to enforce civil and criminal laws, or to federal law enforcement and intelligence agencies to combat terrorism. You must provide your TIN whether or not you are required to file a tax return. Under section 3406, payors must generally withhold a percentage of taxable interest, dividends, and certain other payments to a payee who does not give a TIN to the payor. Certain penalties may also apply for providing false or fraudulent information.",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),
              ),

              SizedBox(height: mQuery.size.height*0.055,),

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

