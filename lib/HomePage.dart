import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _selectedIndex = 0;


  int _currentIndex=0;

  List cardList=[
    Item1(),
    Item2(),
    Item3(),
    Item4()
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }
  @override
  Widget build(BuildContext context) {
    double DeviceWidth = MediaQuery.of(context).size.width;
    double DeviceHeight = MediaQuery.of(context).size.height;
    return DefaultTabController(
        length: 7,
        child: Scaffold(
          /*  bottomNavigationBar: BottomNavigationBar(
              unselectedLabelStyle:
                  TextStyle(color: Colors.purple[800], fontSize: 14),
              backgroundColor: Colors.white,


              items: <BottomNavigationBarItem>[

                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home page ',

                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_box),
                  label: 'Who Are We',

                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.ac_unit_sharp),
                  label: 'Courses',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.add_alert_outlined),
                  label: 'Workshop',

                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.add_card),
                  label: 'Events',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.call),
                  label: 'Connect Us',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.join_full),
                  label: 'Join Us',
                ),
              ],

              selectedItemColor: Colors.purple[800],
              unselectedItemColor: Colors.purple,
              currentIndex: _selectedIndex,
               onTap: _onItemTapped,


            ),*/
          //backgroundColor: Color(0xffb1afb2),
            appBar: AppBar(
              backgroundColor: Colors.purple[600],
              toolbarHeight: 80,
              flexibleSpace: Column(
                mainAxisAlignment: MainAxisAlignment.end,

                children: [
                  TabBar(
                    isScrollable: true,
                    indicatorWeight: 5,
                    indicatorColor: Colors.white,

                    tabs: [
                      Tab(
                        icon: Icon(Icons.home),child: Text('HomePage'),
                      ),
                      Tab(
                        icon: Icon(Icons.account_box),child: Text('Who Are We'),
                      ),
                      Tab(
                        icon: Icon(Icons.ac_unit_sharp),child: Text('Courses'),
                      ),

                      Tab(
                        icon: Icon(Icons.add_alert_outlined),child: Text('Workshop'),
                      ),
                      Tab(
                        icon: Icon(Icons.add_card),child: Text('Events'),
                      ),
                      Tab(
                        icon: Icon(Icons.call),child: Text('Connect Us'),
                      ),
                      Tab(
                        icon: Icon(Icons.join_full),child: Text('Join Us'),
                      ),

                    ],
                  ),
                ],
              ),
            ),

            body: TabBarView(
              children: [
                ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    SafeArea(
                        child: Stack(
                          children: [
                            Column(children: [

                              SizedBox(
                                height: 30,
                              ),
                              CarouselSlider(
                                options: CarouselOptions(
                                  height: DeviceWidth/2,
                                  autoPlay: true,
                                  autoPlayInterval: Duration(seconds: 3),
                                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                                  autoPlayCurve: Curves.fastOutSlowIn,
                                  pauseAutoPlayOnTouch: true,
                                  aspectRatio: 2.0,
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      _currentIndex = index;
                                    });
                                  },
                                ),
                                items: cardList.map((card){
                                  return Builder(
                                      builder:(BuildContext context){
                                        return Container(
                                          height: DeviceHeight*0.30,
                                          width: DeviceWidth,
                                          child: Card(
                                            color: Colors.purple[100],
                                            child: card,
                                          ),
                                        );
                                      }
                                  );
                                }).toList(),
                              ),
                              SizedBox(
                                height: 30,
                              ),



                              /*  CarouselSlider(
                            options: CarouselOptions(
                              height: 500,
                              autoPlay: true,
                            ),
                            items: pictureList.map((image) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return    Container(
                                      height: 500,
                                      width: double.infinity,
                                      margin: EdgeInsets.symmetric(horizontal: 2.0),
                                      decoration: BoxDecoration(// borderRadius:BorderRadius.all((Radius.circular(50))),
                                        image: DecorationImage(fit: BoxFit.fill,
                                            //  image: NetworkImage(""),
                                            image: AssetImage("lib/asset/BAU WIE.jpg")
                                        ),

                                        //shape: BoxShape.circle,
                                        // boxShadow: [BoxShadow(color:Colors.purple,
                                        //  blurRadius: 30,
                                        // offset: Offset(4,8))]
                                      )
                                  );

                                  /*Stack(
                                    children: <Widget>[
                                      Container(
                                        width: double.infinity,
                                        height: 500,
                                        alignment: Alignment.centerLeft,
                                        color: Colors.purple[800],
                                      ),
                                      Container(
                                        width: 500,
                                        height: 500,
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 30,
                                                color: Colors.white,
                                              ),
                                              'انا نور راقي، social media coordinator سابقاً ب WIE.✨ كنت اشتغل بكل حب معهم؛ التعاون والمحبة بين أعضاء الفريق  خلتنا نشتغل جميعاً بكل حماس، قدرنا ندمج بين افكارنا طبقناها بواقعنا. شكراً IEEE WIE على التجربة السفاحة. 💜'),
                                        ),
                                      ),
                                      Container(
                                        width: 500,
                                        height: 500,
                                        alignment: Alignment.centerLeft,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image:
                                                AssetImage('lib/asset/noor raqi.png'),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ],
                                  );*/

                                },
                              );
                            }
                            ).toList(),
                          ),*/
                              /* Container
                                (
                                  height: 500,
                                  width: double.infinity,

                                  decoration: BoxDecoration(// borderRadius:BorderRadius.all((Radius.circular(50))),
                                    image: DecorationImage(fit: BoxFit.fill,
                                    //  image: NetworkImage(""),
                                      image: AssetImage("lib/asset/BAU WIE.jpg")
                                    ),

                                    //shape: BoxShape.circle,
                                    // boxShadow: [BoxShadow(color:Colors.purple,
                                    //  blurRadius: 30,
                                    // offset: Offset(4,8))]
                                  )),*/


                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Text(
                                    "Welcome to IEEE BAU WIE\nWho Are We?? ",
                                    style: TextStyle(
                                        fontSize: DeviceWidth/20,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff611168)),
                                  ),
                                ],
                              ),
                              Space(),

                              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                                Space(),
                                Container(
                                  height: DeviceWidth/2,
                                  width: DeviceWidth/3.5,
                                  child:  Material(

                                    child:  InkWell(onTap: () => ('https://www.facebook.com/IEEEBAUWIEAG/photos/3434832459886862/'),
                                      child:  Container(
                                        height: DeviceWidth/2,
                                        width: DeviceWidth/3.5,
                                      ),
                                    ),
                                    color: Colors.transparent,
                                  ),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "lib/asset/WIE_bannerstand_33x84.jpg"))),
                                ),
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 200,
                                        width: 200,

                                        child: Text(
                                          "IEEE WIE is one of the world's leaders in changing the face of engineering,here we're promoting women   engineers and scientistsn and inspiring girls around the   world to follow their academic interests in a career   in engineering and science.IEEE WIE members make   lifelong friendships, acquire influential mentors,and   make a difference for the benefit of humanity.",
                                          style: TextStyle(
                                              fontSize: DeviceWidth/40,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                    ]),
                              ]),

                              Space(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Text(
                                    "Our Achievements : ",
                                    style: TextStyle(
                                        fontSize: DeviceWidth/20,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff611168)),
                                  ),
                                ],
                              ),

                              Space(),
                              //   Padding(padding: EdgeInsets.only(left:50),child:
                              //  Container(
                              //  height: 300,
                              //width:double.infinity,
                              //   decoration: BoxDecoration(shape: BoxShape.rectangle,
                              //  color: Colors.pink,),

                              //  child: Row(children:[
                              //Container(
                              //height: 300,
                              //width: 300,
                              //decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("")))),

                              //  Image("https://scontent.famm6-1.fna.fbcdn.net/v/t1.6435-9/78429426_2634042793299170_5878446503093075968_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=174925&_nc_eui2=AeHKawgFzhG8dd30939syr24tNV3JRlVASi01XclGVUBKJi0bN08NzTCfw_3VkC99AeqDQGVYAV77ogp0GorZn3H&_nc_ohc=kUWEOg8DtGQAX9a5PTl&_nc_ht=scontent.famm6-1.fna&oh=00_AT8fA2axFvbv-vFltiAktK9rDewF0t_98BKtYlQ4ffbL-g&oe=632606D1"),

                              // Text("Brief1",style:TextStyle(fontSize: 30,color:Colors.black)),
                              // ]),
                              //    ),
                              //  ),

                              row(

                                  "lib/asset/121535763_3434832463220195_5380324384471773562_n.jpg",
                                  "Engineer under construction\n Event\n",
                                  "An event for female engineers under construction was held in 2020 to help all female engineers,especially first-year students, to familiarize themselves their specialization and career level and the courses that can be taken to strengthen their certificates for them."),

                              Space(),
                              //Row(children:[
                              //Space(),
                              //Text("Brief1",style:TextStyle(fontSize: 30,color:Colors.black)),
                              //Image("https://scontent.famm6-1.fna.fbcdn.net/v/t1.6435-9/121535763_3434832463220195_5380324384471773562_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeH-1McgvoRz8xvS7RBfX0deRM6sajckrvhEzqxqNySu-HNLOZa46D95_DJz25OfqyKgU701oHFZAmpVLbIMKMo-&_nc_ohc=HkvY2LlDV6QAX-mGj5W&_nc_ht=scontent.famm6-1.fna&oh=00_AT8R--5Q89fQt-2lpRg2CEOclEEaHlXeH7FIaTaW1ZHtmA&oe=63281CAB"),
                              //]),
                              row(
                                  "lib/asset/drawing my way 1&2.jpg",
                                  "Drawing My Way Events\n",
                                  "will be an annual event organized IEEE "
                                  "WIE members at the end of every year . "
                                  "This event aims to inspire girls to "
                                  "discover their way towards their ambitious "
                                      "in life, and reach their goals and to find "
                                      "their passion and planing to Future."),

                              Space(),
                              row("lib/asset/PESDay.jpg", "Pes Day 2021 Conference\n",
                                  "It is an annual event held to celebrate the  "
                                  "anniversary of the launch of the (IEEE  PES)"
                                  "community.Today, we participated in  this"
                                  "event on April 2021, with the aim  of supporting"
                                  "the presence of women in  the field of energy and electricity,with the  participation of many team members."),

                              Space(),
                              row("lib/asset/ieee day (1).jpg", "IEEE Day Event\n",
                                  "is an annual event held by IEEE BAU  societies in"
                                  "which each society is  presenting its achievements"
                                  " and plans. We participated in it and had a dedicated corner and did some activities for students ,in addition, to presenting our community to more people."),

                              // Space(),
                              //row("lib/asset/drawing 2 (3).jpg","Drawing my Way (2) Event\n","in 2021 to drow our Future and to organize our time\nso we design a calender to be apart of Year."),

                              Space(),
                              row("lib/asset/culutre.jpg", "Culture Exchange Event\n",
                                  "One of the important things in our life is the development of our cultural side, and in order to learn that, we must exchange our culture with the people around us, whether in our country or outside our country. From the standpoint of acquaintance, and in fulfillment of the Almighty's saying: It was on (15/7/2021), and a group of personalities who spoke about the customs of their country: Raneem Salem from Jordan Aya Essam from Iraq Esraa Al-Saud from Syria And finally, Fathia Al-Baroudi from Tunisia"),

                              Space(),
                              row(
                                  "lib/asset/Specturm.JPG",
                                  "IEEE Spectrum Lab4\nConference\n",
                                  "It is a huge scientific conference targeting all "
                                  " students of engineering majors as well as students interested in technological fields from all Jordanian universities. In the presence of many companies and engineers, and hosting specialized speakers to talk about many innovative new technologies. We participated in this distinguished conference with the aim of holding a discussion session on the role of [women in entrepreneurship] in the presence of inspiring and pioneering leaders."),

                              Space(),
                              row(
                                  "lib/asset/Breast Cancer.jpg",
                                  "Breast Cancer Information\n",
                                  "In this festival specifically in the month of October - Women's Month - we spread awareness of breast cancer on Culture Street in the health corner, especially to convey to people more details about breast cancer, how to detect it in a simple way,and how to prevent it.In addition, we made a video explaining everything related to breast cancer, its symptoms, detection mechanism, treatment and prevention methods."),

                              Space(),
                              row("lib/asset/website course (2).jpg", "Web Site Course\n",
                                  "Presented by (Eng.Linda Al  Turkman), the workshop was divided over two weeks. We were able to learn how to coordinate and design the UI (user interface)and what are the main elements  on web page."),

                              Space(),
                              row("lib/asset/Arduino course (1).jpg", "Arduino Course ",
                                  "The society conducted an Arduino training workshop for 21 hours of training, through which the members learned the basics of Arduino, which helped them to carry out various projects."),

                              Space(),
                              row("lib/asset/flutter course (2).jpg", "Flutter Course ",
                                  "It is a course on the programming language of Flutter. It is one of the most important courses that we learned with the engineer Zahra Muhammad on (6/3/2022), with a total of 20 training hours, which we learned during two and a half months, we learned the basics of the Dart language and Flutter, then we did this site by using Flutter by team of IEEE BAU WIE."),

                              Space(),
                              row("lib/asset/English course .webp", "English Course\n",
                                  "The English language course we learned in cooperation with (IEEE JOINT) was a free course only for IEEE members. This course was presented by the teacher Noor Alomari on (22/2/2022) with a total of 12 training hours, and it includes: a brief explanation of how to build dialogues, English vocabulary, a brief explanation of the American accent with the application of examples."),

                              Space(),
                              row("lib/asset/c++ course .jpg", "C++ Course\n",
                                  "Presented by (Eng Rahaf Alhasheem), the course was divided over 8 hours. It's aims to provide Language basics and programming foundation enablement."),

                              Space(),
                              row(
                                  "lib/asset/time management (2).jpeg",
                                  "Time managemet and Self-\nPlaning Workshop ",
                                  "with Specialist Tamara Hussein, Which was held on 23/5/2022, and its aim was to use our time in order to achieve our goals, and to enable us to improve our abilities  to work more effectively even when time is tight and pressures are high by prioritizing."),

                              Space(),
                              row(
                                  "lib/asset/how to be a programmer .jpg",
                                  "How to be a Programmer\nWorkshop\n",
                                  "At the beginning, we talked about how to manage and organize time, also about the experience required of the student upon graduation, as well as about the career paths that are most in demand."),

                              Space(),
                              row("lib/asset/CV.png", "CV Workshop\n",
                                  "he lecturer, Muhammad Saber Abu Sarah, presented a CV workshop on 7/31/2021, in which he explained how to make a CV distinctively."),

                              Space(),
  /*                            Center(
                                child: new RichText(
                                  text: new TextSpan(
                                    children: [

                                      new TextSpan(
                                          text: 'but this is',
                                          style: new TextStyle(color: Colors.blue),
                                          recognizer: new TapGestureRecognizer()
                                            ..onTap = () {('https://docs.flutter.io/flutter/services/UrlLauncher-class.html');}

                                      ),
                                    ],
                                  ),
                                ),),

                              Link(
                                uri: Uri.parse(
                                    'https://pub.dev/documentation/url_launcher/latest/link/link-library.html'),
                                target: LinkTarget.blank,
                                builder: (BuildContext ctx, FollowLink? openLink) {
                                  return TextButton.icon(
                                    onPressed: openLink,
                                    label: const Text('Link Widget documentation'),
                                    icon: const Icon(Icons.read_more),
                                  );
                                },
                              ),
*/
                              row(
                                  "lib/asset/control your life.jpg",
                                  "Control Your Life Workshop ",
                                  "One of the most important workshops that was held in (IEEE WIE), where was appropriate to the characteristics of females and the requirements of their lives.It is a workshop that was held with the counseling and psychological specialist Abrar Byaree. This workshop introduced us to the mechanisms of self-control and controlling emotions in difficult situations, managing stress, and the impact of these qualities on your life."),

                              Space(),
                              Space(),

                              Text("Follow us in Social Media",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.purple,
                                      fontWeight: FontWeight.bold)),
                              Space(),

                              Container(
                                margin: const EdgeInsets.symmetric(vertical: 20.0),

                                height: 300,

                                child: ListView(
                                  scrollDirection: Axis.horizontal,

                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            QR('lib/asset/qrcode_web.facebook.com.png',
                                                'Facebook')
                                          ],
                                        ),
                                        Spacer(),
                                        Column(
                                          children: [
                                            QR('lib/asset/qrcode_www.instagram.com.png',
                                                'Instagram')
                                          ],
                                        ),
                                        Spacer(),
                                        Column(
                                          children: [
                                            QR('lib/asset/qrcode_www.linkedin.com.png',
                                                'LinkedIn')
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Space(),


                            ]),
                          ],

                        )),
                  ],
                ),

              ],
            )
        ),
      )
    ;
  }
}

Column QR(url, Page) {
  return Column(children: [
    Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(url),
            fit: BoxFit.fill,
          )),
    ),
    Text(Page, style: TextStyle(fontSize: 20, color: Colors.black))
  ]);
}

Container Image(url) {
  return Container(
    height: 130,
    width: 130,
    decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(url),
          fit: BoxFit.fill,
        )),
  );
}

Padding Space() {
  return Padding(
      padding: EdgeInsets.only(
        top: 50,
        left: 50,
      ));
}

// Row Brief(){
//   return Row(children: [Container(
//      height: 300,
//width:double.infinity,
//      decoration: BoxDecoration(shape: BoxShape.rectangle,
//      color: Colors.pink,
//   ),
//    child:Text("Brief1",style:TextStyle(fontSize: 30,color:Colors.black)),
//   ),

// ],);
//}

Padding row(
    url,
    text1,
    text2,
    ) {
  return Padding(
    padding: EdgeInsets.only(left:10),
    child: Container(
      height: 200,
      width: 400,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white70,
        border: Border.all(color: Colors.black12, width: 2),
        boxShadow: [
          BoxShadow(
              color: Colors.black26, blurRadius: 2, offset: Offset(4, 8)),
        ],
      ),

      child: Row(children: [
        //Container(
        //height: 300,
        //width: 300,
        //decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("")))),

        Image(url),
        SizedBox(width: 20),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(text1,textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),),

            Container(
              width: 210,
                height: 120,
                child: Text(text2,textAlign: TextAlign.center
                    , style: TextStyle(fontSize: 11, color: Colors.black))),
            //Text(text2 +MediaQuery.of(Context).size.width.toString(),style:TextStyle(color:Colors.black)),
          ],
        )
      ]),
    ),
  );
}

Widget buildText(text3) => Text(
  text3,
);
void setState(Null Function() param0) {}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  /*void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }*/
  @override
  Widget build(BuildContext context) {
    double DeviceWidth = MediaQuery.of(context).size.width;
    double DeviceHeight = MediaQuery.of(context).size.height;
    return Scaffold();
  }}

class Item1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double DeviceWidth = MediaQuery.of(context).size.width;
    double DeviceHeight = MediaQuery.of(context).size.height;
    return Container(
        height: 500,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 2.0),
        decoration: BoxDecoration(// borderRadius:BorderRadius.all((Radius.circular(50))),
          image: DecorationImage(fit: BoxFit.fill,
              //  image: NetworkImage(""),
              image: AssetImage("lib/asset/BAU WIE.jpg")
          ),
        )
    );
  }
}

class Item2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double DeviceWidth = MediaQuery.of(context).size.width;
    double DeviceHeight = MediaQuery.of(context).size.height;

    return Container(
      child: ClipRRect(
        child: Stack(
          children: [
            Container(
              width:  double.infinity,
              height: DeviceWidth/1.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                  AssetImage('lib/asset/background.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top:DeviceWidth/15,),
                  child: Container(
                    width: DeviceWidth/2.7,
                    height: DeviceWidth/2.18,
                    child: Text(
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: DeviceWidth/45,
                          color: Colors.white,
                        ),
                        "I'm Nour Raqi, social media coordinator formerly at WIE.✨"
                            'My WIE journey was an unforgettable traveler with my college career, and I reinforced my team spirit.'
                            ' I used to work lovingly with them; The collaboration and love among the team members provided us with the wonderful enthusiasm to work together.'
                            '  Thank you IEEE WIE for this Ripper experience. 💜'),
                  ),
                ),
                Container(
                  width: DeviceWidth/2.7,
                  height: DeviceWidth/2.7,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                      AssetImage('lib/asset/noor raqi.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Item3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double DeviceWidth = MediaQuery.of(context).size.width;
    double DeviceHeight = MediaQuery.of(context).size.height;
    return Container(
      child: ClipRRect(
        child: Stack(
          children: <Widget>[
            Container(
              width:  double.infinity,
              height: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                  AssetImage('lib/asset/background.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: DeviceWidth/18),
                  child: Container(
                    width: DeviceWidth/2.7,
                    height: DeviceWidth/2.18,
                    child: Text(
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: DeviceWidth/56,
                            color: Colors.white
                        ),
                        'Hello....'
                            'I am Zain Al-Ramahi, a third-year student of network security engineering. I started my journey with IEEE in 2020 and was a member of three RAS CS WIE communities.'
                            'I was the secretary in the WIE community for a year. It was indeed one of the best experiences and gave me a sense of responsibility to write everything that my community does during the week. After I was able to prove myself, I am currently a vice-chair of the IEEE BAU branch.'
                            'I am grateful to WIE because I started there and I am grateful to every person, project, conference, competition, and event that has left an impact on me.🤍'),
                  ),
                ),
                Container(
                  width: DeviceWidth/2.7,
                  height:DeviceWidth*2,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                      AssetImage('lib/asset/Zain al.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Item4 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double DeviceWidth = MediaQuery.of(context).size.width;
    double DeviceHeight = MediaQuery.of(context).size.height;    return Container(
      child: ClipRRect(
        child: Stack(
          children: <Widget>[
            Container(
              width:  double.infinity,
              height: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                  AssetImage('lib/asset/background.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: DeviceWidth/18),
                  child: Container(
                    width: DeviceWidth/2.7,
                    height: DeviceWidth/2.18,
                    child: Text(
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: DeviceWidth/56,
                          color: Colors.white
                        ),
                        'I am Ola Al-Ramahi, a fourth-year computer engineering student, a member of IEEE from 2020'
                            'Currently, I am the Vice-chair of the WIE community.'
                            'IEEE BAU WIE'
                            'It was the beginning of a journey and a turning point and a change for me, whether on a personal or scientific level. It opened many doors for me. I met with people who have the same goals, the same passion and love for volunteering and development. It added a lot to my personality, and through it I was able to combine my theoretical and scientific experiences together. I was able to broaden my thinking and what I think in a traditional way.'
                            'Thank you from the bottom of my heart, WIE, for everything you have given and are still giving ✨💜'),
                  ),
                ),
                Container(
                  width: DeviceWidth/2.5,
                  height: DeviceWidth/2.5,
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                      AssetImage('lib/asset/ola al.png'),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
