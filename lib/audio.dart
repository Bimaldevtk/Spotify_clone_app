

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:line_icons/line_icons.dart';
import 'package:spotify/utils/notify.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:share_plus/share_plus.dart';

class AudioPlayerPro extends StatefulWidget {
  AudioPlayerPro(
  {required this.audioURL,required this.name,required this.image});
  final String audioURL;
  final String image;
  final String name;


  @override
  State<AudioPlayerPro> createState() => _AudioPlayerProState();
}

class _AudioPlayerProState extends State<AudioPlayerPro> {
  Notify notify =Get.find();
  Duration _duration =Duration();
  Duration _postion = Duration();

  static AudioPlayer advancedPlayer =AudioPlayer();
 
  @override
   void initState(){
    initPlayer();
    super.initState();
  }
  @override
  void dispose() {
 
    super.dispose();
  }

  void initPlayer(){
    advancedPlayer =  AudioPlayer();
    advancedPlayer.onDurationChanged.listen((d)
    {
      setState(() {
        _duration=d;
      });
    });


     advancedPlayer.onPositionChanged.listen((p)
    {
      setState(() {
        _duration=p;
      });
    });
    
      }
      void seekToSecond(second){
        Duration newDuration =Duration(seconds:second);
        advancedPlayer.seek(newDuration);
      }

      double setChanged(){
        Duration newDuration = Duration(seconds: 0);
        advancedPlayer.seek(newDuration);
        return 0.0;
      }
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setSystemUIOverlayStyle( const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      body: Container(
        padding:const EdgeInsets.only(
          left: 10,
          right: 40,
          top: 40,
        ),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.brown,
                Colors.black87
            ]
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:
                [
                  const Icon(LineIcons.angleDown,
                   color: Colors.white,
                   size: 24,),
                   Center(
                     child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        const Text('PLAYING FROM ALBUM ',
                        style: TextStyle(
                          letterSpacing: 1,
                          fontSize: 11,
                          color: Colors.white,
                           
                        ),
                        
                        ),
                        Text(widget.name,
                        style:const TextStyle(
                          letterSpacing: 1,
                          fontSize: 13,
                          color: Colors.white,
                          fontFamily: 'ProximaNova',
                          fontWeight: FontWeight.bold,
                           
                        ),
                        
                        )
                      ],
                   
                     ),
                   )
                
                  //  const Icon(
                  //     LineIcons.verticalEllipsis,
                  //  color: Colors.white,
                  //  size: 24,
                  //  ),

,                ],
                
              ),
              const SizedBox(height: 100,),
              Container(
                width: 325,
                child: ClipRRect(
                  borderRadius:BorderRadius.circular(10) ,
                  child: Image.asset(
                    widget.image
                  ),
                ),
              ),
               const SizedBox(height: 100,),
               Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 25,right: 25 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.name,
                      style:const TextStyle(
                        wordSpacing: 0.2,
                        fontSize: 24 ,
                        color: Colors.white,
                        fontFamily: 'ProximaNova',
                        fontWeight: FontWeight.bold,
                         
                      ),
                      
                      ),   
                      Text('Classics  ',
                      style: TextStyle(
                        letterSpacing: 0.1,
                        fontSize: 24 ,
                        color: Colors.grey.shade400,
                        fontFamily: 'ProximaNovaThin',
                        fontWeight: FontWeight.bold,
                         
                      ),
                      
                      )

                    ],
                  ),
                  IconButton(onPressed: (){
                    notify.isHeartPressed.value =notify.isHeartPressed.value? false : true;
                  },
                   icon:  Obx(()=>(notify.isHeartPressed.value)?const Icon(
                      Icons.favorite,
                   color: Colors.white,
                   size: 24, 
                   ):
                   const Icon(
                      LineIcons.heart,
                   color: Colors.white,
                   size: 24, 
                   )
                   
                   )
                      
                   )
                ],
              ),
               ),
               Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    width: double.infinity,
                    child:SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.grey.shade600,
                        activeTickMarkColor: Colors.white,
                        thumbColor: Colors.white,
                        trackHeight: 3,
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 4,
                        )
                      ),
                      child: Slider(
                        value: (_postion.inSeconds.toDouble() !=
                        _duration.inSeconds.toDouble())
                        ? _postion.inSeconds.toDouble()
                        : setChanged(),
                        max:_duration.inSeconds.toDouble(),
                        min:0,
                        onChanged: (double value){
                          setState((){
                            seekToSecond(value.toInt());
                            value= value;

                          });
                        },
                      ),
                    ),
                  ),
                   Padding(padding: EdgeInsets.only(left: 25,right: 25,),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                    children: [
                          Text( '0:00',
                      style: TextStyle(
                      
                        color: Colors.grey.shade400,
                        fontFamily: 'ProximaNovaThin',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                         
                      ),
                      
                      ),
                        Text( '0:00',
                      style: TextStyle(
                      
                        color: Colors.grey.shade400,
                        fontFamily: 'ProximaNovaThin',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                         
                      ),
                      
                      )

                    ],
                    )
                  
                  ), 
                  
                ],
               ),
              
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 22,right: 22),
                    child: Row (
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               crossAxisAlignment: CrossAxisAlignment.center,
                       
                      children: [
                      Icon(
                        LineIcons.random,
                        color: Colors.grey.shade400,
                      ),
                      InkWell(
                      onTap:(){},
                        child: const Icon(
                          Icons.skip_previous,
                          color: Colors.white,
                          size: 40,
                      
                        ),
                      ),
                      Container(
                        height: 90,
                        width: 90,
                        child: Center(
                          child:IconButton(
                            iconSize: 70,
                            alignment: Alignment.center,
                            onPressed: (){
                              notify.isIconPlay.value=
                              notify.isIconPlay.value ? false:true ;
                              if(notify.isIconPlay.value){
                                advancedPlayer.play(UrlSource(widget.audioURL));
                              }
                              else{
                                advancedPlayer.pause();
                              }
                            }, 
                   icon:  Obx(()=>( notify.isIconPlay.value)? const Icon(
                      Icons.pause_circle_filled,
                   color: Colors.white,):
                    const Icon(
                      Icons.play_circle_filled,
                   color: Colors.white,)
                    
  
                   )
                   ) ,
                        ),
                      ), 
                       
                    
                  
                  InkWell(
                    onTap: (){},
                    child: const Icon(
                        Icons.skip_next,
                     color: Colors.white,
                    
                     ),
                  ),
                    Icon(
                        Icons.repeat,
                     color: Colors.grey.shade400,
                    
                     ),
             ] ),
             ),
              Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 22,right: 22),
                    child: Row (
                          
                      children: [
                      Icon(
                        Icons.speaker_group_outlined,
                        color: Colors.grey.shade400,
                      ),
                      Spacer(flex: 5,),
                      InkWell(
                      onTap:(){

                      Share.share("https://spotify/songid-32919109");
                      },
                        child: Icon(
                          Icons.share_outlined,
                          color: Colors.grey.shade400,
                     
                      
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.line_weight_sharp,
                     color: Colors.grey.shade400,
                    
                     ),
             ] ),
             ),
              

            ],
          ),
        
        
      ),
       
    )
    );
  }
}

