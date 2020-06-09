import 'package:flutter/material.dart';
import 'package:streamerkit/Page/DetailScreen.dart';
import 'package:streamerkit/Page/ProfileScreen.dart';
import 'package:streamerkit/Page/SecondScreen.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  FSBStatus drawerStatus;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: FoldableSidebarBuilder(
        drawerBackgroundColor: Colors.deepOrange,
        drawer: CustomDrawer(closeDrawer: (){
          setState(() {
            drawerStatus = FSBStatus.FSB_CLOSE;
          });
        },),
        screenContents: HomeScreen(),
        status: drawerStatus,
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          child: Icon(Icons.menu,color: Colors.white,),
          onPressed: () {
            setState(() {
              drawerStatus = drawerStatus == FSBStatus.FSB_OPEN ? FSBStatus.FSB_CLOSE : FSBStatus.FSB_OPEN;
            });
          }),
    );
  }
}


class HomeScreen extends StatelessWidget {

  String imageKim = "assets/kimi.jpg";
  String kimAr = "Kimberly memulai channel YouTube-nya di tahun 2016. Berawal dari kecintaannya terhadap game Dota 2, ia memulai konten di channel-nya dengan menyiarkan langsung permainannya dan juga membuat Vlog. Ia juga menyiarkan game Mobile Legends: Bang Bang sebagai komentator. Dalam waktu 6 bulan ia berhasil mendapatkan 100,000 subscriber dan memperoleh Silver Play Button dari YouTube. Ia juga memainkan game PlayerUnknown's Battlegrounds Mobile, kerap dengan judul video yang kontroversial, sehingga beberapa kontennya dianggap sebagai konten clickbait. Ia juga sering disebut sebagai Ratu Clickbait YouTube Indonesia. Beberapa judul videonya memiliki makna ganda yang memicu pro dan kontra.Kimberly juga kerap tampil seksi dengan mengenakan tank top. Saat ini kanal YouTube miliknya telah memiliki 2,4 juta pelanggan (per Oktober 2019).";

  String imageSar = "assets/sarah.jpg";
  String sarAr = "Sarah Olivia Santoso atau yang akrab dipanggil Sarah Viloid adalah seorang YouTuber gaming dengan paras yang cantik dan imut. Berkat hal ini, tak ayal menjadikannya punya banyak penggemar. Baik gamer maupun orang yang awam, pasti tahu sosok gamer eSports Battle Royale dan game FPS seperti Mobile Legends, PUBG, Free Fire, dan sebagainya.";

  String imageOl = "assets/oliv.jpg";
  String olAr = 'Olivia Gosandra yang saat ini merintis karier sebagai content creator YouTube ini memiliki kecantikan yang membuat orang tak ingin berkedip sama sekali.\n\n Olivia Gosandra adalah wanita cantik asal Batam, Riau yang memiliki kegemaran dalam bermain game. Ia juga dikenal memiliki suara yang merdu dalam melantunkan lagu-lagu\n\nGame yang kerap ia mainkan antara lain adalah Power Blank dan juga Mobile Legends. Hal ini selalui ia abadikan melalui laman Facebook dan juga Channel YouTube pribadi miliknya.';

  String imageNix = "assets/nixia.jpg";
  String nixAr = 'Monica Carolina or better known as Nixia, is the leader and founder of NXA-Gaming. Her gaming career start from 2008 by winning the local and international gaming tournaments and Her first winning moment came from the Guitar Hero competition on 2009, she already love playing FPS games before that, and continue gaining more achievements in FPS games with NXA-Gaming team and NXA-Ladies team as well';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: WillPopScope(
        onWillPop: (){

        },
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [0.1, 0.5, 0.7, 0.9],
                colors: [
                  Colors.blue[800],
                  Colors.blue[700],
                  Colors.blue[600],
                  Colors.purple[400],
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 50.0,),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Streamer Kit",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
                        Container(child: Image.asset("assets/laptop.png",width: 200,)),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(width: 100,child: Divider(thickness: 5,color: Colors.indigo,)),
                    ],
                  ),
                  SizedBox(
                    child: Container(
                      color: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text('Artikel Streamer Cantik',style: TextStyle(fontSize: 15.0,color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.left),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                            children: <Widget>[
                              InkWell(
                                onTap: (){
                                  Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=> DetailScreen(image: imageKim,description: kimAr,)));
                                },
                                child: Container(
                                  height: 140,
                                  width: 140,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    elevation: 4,
                                    child: Padding(
                                      padding: const EdgeInsets.all(9.0),
                                      child: Column(
                                        children: <Widget>[
                                          Container(child: Image.asset("assets/kimi.jpg",width: 120,height: 100,)),
                                          Text('Kimi Hime',style: TextStyle(fontSize: 11.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=> DetailScreen(image: imageSar,description: sarAr,)));

                                },
                                child: Container(
                                  height: 140,
                                  width: 140,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    elevation: 4,
                                    child: Padding(
                                      padding: const EdgeInsets.all(9.0),
                                      child: Column(
                                        children: <Widget>[
                                          Container(child: Image.asset("assets/sarah.jpg",width: 120,height: 100,)),
                                          Text('Sarah Viloid',style: TextStyle(fontSize: 11.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=> DetailScreen(image: imageOl,description: olAr,)));


                                },
                                child: Container(
                                  height: 140,
                                  width: 140,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    elevation: 4,
                                    child: Padding(
                                      padding: const EdgeInsets.all(9.0),
                                      child: Column(
                                        children: <Widget>[
                                          Container(child: Image.asset("assets/oliv.jpg",width: 120,height: 100,)),
                                          Text('Olivia Gosandra',style: TextStyle(fontSize: 11.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=> DetailScreen(image: imageNix,description: nixAr,)));


                                },
                                child: Container(
                                  height: 140,
                                  width: 140,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    elevation: 4,
                                    child: Padding(
                                      padding: const EdgeInsets.all(9.0),
                                      child: Column(
                                        children: <Widget>[
                                          Container(child: Image.asset("assets/nixia.jpg",width: 120,height: 100,)),
                                          Text('Nixia',style: TextStyle(fontSize: 11.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]
                        ),
                      )
                  ),
                  SizedBox(
                    child: Container(
                      color: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text('Gear Streamer Terbaik 2020',style: TextStyle(fontSize: 15.0,color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.left),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(width: 100,child: Divider(thickness: 5,color: Colors.indigo,)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        Container(child: Image.asset("assets/mic.png",width: 150,)),
                        SizedBox(
                          child: Container(
                            height: 140,
                            width: 200,

                            color: Colors.transparent,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(height:50.0),
                                  Text('Microphone',style: TextStyle(fontSize: 15.0,color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        SizedBox(
                          child: Container(
                            height: 140,
                            width: 200,

                            color: Colors.transparent,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(height:50.0),
                                  Text('Webcam',style: TextStyle(fontSize: 15.0,color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(child: Image.asset("assets/cam.png",width: 150,)),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                            children: <Widget>[
                              InkWell(
                                onTap: (){
                                },
                                child: Container(
                                  height: 140,
                                  width: 140,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    elevation: 4,
                                    child: Padding(
                                      padding: const EdgeInsets.all(9.0),
                                      child: Column(
                                        children: <Widget>[
                                          Container(child: Image.asset("assets/elgato.png",width: 120,height: 100,)),
                                          Text('Green Screen',style: TextStyle(fontSize: 11.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                },
                                child: Container(
                                  height: 140,
                                  width: 140,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    elevation: 4,
                                    child: Padding(
                                      padding: const EdgeInsets.all(9.0),
                                      child: Column(
                                        children: <Widget>[
                                          Container(child: Image.asset("assets/hs.png",width: 120,height: 100,)),
                                          Text('Headset',style: TextStyle(fontSize: 11.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                },
                                child: Container(
                                  height: 140,
                                  width: 140,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    elevation: 4,
                                    child: Padding(
                                      padding: const EdgeInsets.all(9.0),
                                      child: Column(
                                        children: <Widget>[
                                          Container(child: Image.asset("assets/ch.png",width: 120,height: 100,)),
                                          Text('Gaming Chair',style: TextStyle(fontSize: 11.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                },
                                child: Container(
                                  height: 140,
                                  width: 140,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    elevation: 4,
                                    child: Padding(
                                      padding: const EdgeInsets.all(9.0),
                                      child: Column(
                                        children: <Widget>[
                                          Container(child: Image.asset("assets/pr.png",width: 120,height: 100,)),
                                          Text('Software Editing',style: TextStyle(fontSize: 11.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]
                        ),
                      )
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class CustomDrawer extends StatelessWidget {

  final Function closeDrawer;

  const CustomDrawer({Key key, this.closeDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Container(
      color: Colors.white,
      width: mediaQuery.size.width * 0.60,
      height: mediaQuery.size.height,
      child: Column(
        children: <Widget>[
          Container(
              width: double.infinity,
              height: 200,
              color: Colors.grey.withAlpha(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/laptop.png",
                    width: 100,
                    height: 100,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Streamer Kit")
                ],
              )),
          ListTile(
            onTap: () {

              Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=> HomeScreen()));
            },
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            onTap: () {

              Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=> ProfileScreen()));
            },
            leading: Icon(Icons.person),
            title: Text(
              "My Profile",
            ),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
