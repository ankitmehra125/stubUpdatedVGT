import 'package:flutter/material.dart';
class VideoSelfiePage extends StatefulWidget {
  const VideoSelfiePage({super.key});

  @override
  State<VideoSelfiePage> createState() => _VideoSelfiePageState();
}

class _VideoSelfiePageState extends State<VideoSelfiePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close,size: 28,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.2,
                child: Text("Get ready for\nyour video selfie",style: TextStyle(color: Colors.black,fontSize: 30,fontFamily: 'SatoshiBold'),textAlign: TextAlign.center,),
              ),

              Center(
                child: InteractiveViewer(
                  boundaryMargin: EdgeInsets.all(10.0),
                  minScale: 0.5,
                  maxScale: 4.0,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.green,width: 2),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: ClipOval(

                      child: Image.network(
                        "https://s3-alpha-sig.figma.com/img/e09e/00c2/a22afff863436c72a308e7bdf7b96bd8?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=H37a7WFa0YzCBdkfBoHf78EVC1On8MY~Icb2FFugZv4zU05RxNBr7xTC9nVv8vYnrVAH7AC0T1oRTnTufaML5wlvaRl2-Ze5LlxVhJFTcx6Bc~TZ6i2EMFHsYcTUEi9e8q~XIVfE0iQwsLn-EzQX0B8THVxUWplHwBl-5YT-UUUotjHu9Sa9OZOSDXKQSV4p58sYd4cQW0HwEDZhlmrYlGFpWSgDCt-FrcTJXhuSGpPirrABOgASZ~WR1OuboRx6yhiCeK8QyMK118mE99bSLy0tF~n1K4hM5rxHCIgd4PTeYjT0cYM6jfreFncMwdI2gGrfx0ZIEtq44lKl240YDw__",
                        fit: BoxFit.cover,
                        width: 200,
                        height: 300,
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 20),
                height: 50,
                child: Text("Make sure to frame your face\nin the oval, then tap “I’m ready”!",style: TextStyle(fontFamily: "SatoshiMedium"),),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.65,
                  margin: EdgeInsets.only(top: 20),

                  padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xffF1F1F2),
                  borderRadius: BorderRadius.circular(10)
                ),
                  child: Text("I am ready",style: TextStyle(color: Colors.grey,fontSize: 13,fontFamily: "SatoshiBold"),textAlign: TextAlign.center,)
              ),
          
              SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("Assets/Images/Icon/stubguys.png",
                      width: 42,
                    ),
                    SizedBox(width: 8,),
                    Text("StubGuys",style: TextStyle(color: Colors.black,fontSize: 15,fontFamily: "SatoshiBold"),)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
