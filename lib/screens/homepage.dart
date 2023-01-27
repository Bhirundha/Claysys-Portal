import 'package:claysys_portal/models/current_openings.dart';
import 'package:claysys_portal/models/employee_info.dart';
import 'package:claysys_portal/models/imp_contacts.dart';
import 'package:claysys_portal/models/profile_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:unicons/unicons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List pages = [
    HomePage(),

  ];

  int currentPageIndex = 0;
  void onTabTap(int index){
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentPageIndex,
            onTap: onTabTap,
            elevation: 0,
            selectedItemColor: Colors.lightBlue,
            unselectedItemColor: Colors.grey,
            unselectedFontSize: 0,
            selectedFontSize: 0,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items:[
              BottomNavigationBarItem(icon: Icon(IconlyBold.home, size: 30), label: 'home'),
              BottomNavigationBarItem(icon: Icon(IconlyLight.wallet, size: 30), label: 'home'),
              BottomNavigationBarItem(icon: Icon(IconlyLight.infoSquare, size: 30), label: 'home'),
              BottomNavigationBarItem(label: 'home', icon: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                  "https://www.bing.com/th?id=OIP.OOh0PWJjoab-C0l3WQs4ugHaLL&w=203&h=307&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2",
                  scale: 1.8,
                  width: 25,
                  height: 25,
                fit: BoxFit.fill,),
              ))
            ]),
        appBar: AppBar(
          toolbarHeight: 65,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              margin: const EdgeInsets.only(top: 7),
              child: Builder(builder: (context) {
                return IconButton(
                  icon: Icon(
                    Icons.short_text,
                    size: 40.0,
                    color: Colors.grey.shade900,
                  ),
                  onPressed: () {},
                );
              }),
            ),
          ),
          title: Container(
            width: 200,
            height: 50,
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  'https://www.claysys.com/app/themes/claysys-2019/assets/images/claysys-logo.png',
                  width: 95,
                  height: 75,
                ),
                const SizedBox(
                  width: 13,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('Poratal', style: TextStyle(letterSpacing: 0.3,fontSize: 16.4,fontWeight: FontWeight.w500, color: Colors.grey.shade600),
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: Builder(builder: (context) {
                return IconButton(
                  icon: Icon(Icons.notifications_none_outlined,
                      size: 25.0, color: Colors.grey.shade700),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                );
              }),
            ),
          ],
        ),
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProfilePage(),
                  const EmployeeInfo(),
                  const SizedBox(height:10),
                  const CurrentOpenings(),
                  Container(
                    width: 400,
                    height: 8,
                    color: Colors.grey.shade200,
                  ),
                  const ContactsList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<profile_details> item = [
    profile_details(
      image:
          'https://www.bing.com/th?id=OIP.OOh0PWJjoab-C0l3WQs4ugHaLL&w=203&h=307&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2',
      name: 'JOHN SMITH',
      designation: 'ID:CS0462 | Frontend Developer',
      emailid: 'johnsmith@claysys.com',
      phno: '+91 9876543210',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: item.length,
      itemBuilder: (context, i) {
        return Container(
          width: 400,
          height: 115,
          color: Colors.grey.shade200,
          // margin: const EdgeInsets.only(bottom: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                item[i].image,
                width: 110,
                height: 115,
                fit: BoxFit.fill,
                alignment: Alignment.topLeft,
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    item[i].name,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          item[i].designation,
                          style: const TextStyle(
                              color: Colors.black87,
                              fontSize: 13.5,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item[i].emailid,
                                style: const TextStyle(
                                    color: Colors.black87,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                item[i].phno,
                                style: const TextStyle(
                                    color: Colors.black87,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 7),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 11, vertical: 11),
                                  fixedSize: const Size(5, 30),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(33),
                                  ),
                                ),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(FontAwesomeIcons.penToSquare,
                                        size: 11, color: Colors.grey.shade900),
                                    const Text(
                                      '\t Edit',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 13),
                                    ),
                                  ],
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}



class EmployeeInfo extends StatefulWidget {
  const EmployeeInfo({Key? key}) : super(key: key);

  @override
  State<EmployeeInfo> createState() => _EmployeeInfoState();
}

class _EmployeeInfoState extends State<EmployeeInfo> {

  List<Employee> data=[
    Employee(leave_data: 20, emp_data: 901, approve_data: 7, pending_data:2),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
        itemCount: data.length,
        itemBuilder: (context,i){
          return Container(
            width: 400,
            height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.grey.shade50,
                  Colors.grey.shade100,
                  Colors.grey.shade200,
                  Colors.grey.shade200
                ]
              )
            ),
            padding: const EdgeInsets.only(left: 5,right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 175,
                  height: 170,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple[400],
                      borderRadius: const BorderRadius.all(Radius.circular(11))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(FontAwesomeIcons.addressCard,
                                size: 50, color: Colors.white),
                            Text(
                              data[i].leave_data.toString(),
                              style: const TextStyle(
                                  fontSize: 27,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "Leave Management",
                          style: TextStyle(
                              fontSize: 14.5,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 28),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 85.5,
                              height: 55,
                              decoration: const BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(11),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    data[i].approve_data.toString(),
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                  Container(
                                    width: 65,
                                    height: 13,
                                    decoration: BoxDecoration(
                                      color: Colors.green.shade400,
                                      borderRadius:
                                      const BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: const Text(
                                      "Approved",
                                      style: TextStyle(fontSize: 10,
                                        color: Colors.white,
                                      ), textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 85.5,
                              height: 55,
                              decoration: const BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(11),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    data[i].pending_data.toString(),
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                  Container(
                                    width: 60,
                                    height: 13,
                                    decoration: const BoxDecoration(
                                      color: Colors.red,
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: const Text(
                                      "Pending",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                        backgroundColor: Colors.red,
                                      ),textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Column(
                    children: [
                      Container(
                        width: 175,
                        height: 80,
                        decoration: BoxDecoration(
                            color: Colors.blue[300],
                            borderRadius: BorderRadius.circular(11)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 20, top: 10, bottom: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Icon(Icons.list_alt,
                                      size: 35, color: Colors.white),
                                  Text(
                                    data[i].emp_data.toString(),
                                    style: const TextStyle(
                                        fontSize: 27,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              const Text(
                                "Employee Information",
                                style: TextStyle(
                                    fontSize: 14.5,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 175,
                        height: 80,
                        decoration: BoxDecoration(
                            color: Colors.purple[300],
                            borderRadius: BorderRadius.circular(11)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 5, top: 10, bottom: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Icon(Icons.calendar_month,
                                  size: 35, color: Colors.white),
                              Text(
                                "Holiday Calender",
                                style: TextStyle(
                                    fontSize: 14.5,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
    );
  }
}



class CurrentOpenings extends StatelessWidget {
  const CurrentOpenings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleWidget(context, "Current Openings"),
          Divider(
            height: 0,
            thickness: 0.7,
            color: Colors.grey.shade300,
          ),
          const Openings(),
          const SizedBox(height: 13,),
          Container(
            height: 40,
            width: 160,
            margin: const EdgeInsets.only(left: 4,bottom: 10),
            child: Padding(
              padding: const EdgeInsets.only(top: 1, left: 15),
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.people_alt_outlined,
                  color: Colors.blue,
                ),
                label: const Text('Refer a friend',
                    style: TextStyle(color: Colors.blue)),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  side: const BorderSide(
                    width: 1.0,
                    color: Colors.blue,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
                // elevation: 15.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class Openings extends StatefulWidget {
  const Openings({Key? key}) : super(key: key);

  @override
  State<Openings> createState() => _OpeningsState();
}

class _OpeningsState extends State<Openings> {
  List<details> item = [
    details(
        designation: 'Software Engineer',
        experience: 'Exp:02-10 Years',
        detail: 'Lorem ipsum dolor sit amet,consectetur\nadipiscing etc..',
        isVisible:true
    ),

    details(
        designation: 'Project Coordinator',
        experience: 'Exp 0-4 Years',
        detail: 'Lorem ipsum dolor sit amet,consectetur\nadipiscing etc..',
        isVisible:false
    ),
    details(
        designation: 'Project Manager',
        experience: 'Exp:01-08 Years',
        detail: 'Lorem ipsum dolor sit amet,consectetur\nadipiscing etc..',
        isVisible:false
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: item.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color:Colors.grey.shade200),
            margin: const EdgeInsets.only(left: 20, top: 15),
            height: 30,
            width: 280,
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      item[i].designation,
                      style: const TextStyle(
                          fontSize: 16.5,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Visibility(
                      visible:item[i].isVisible,
                      child: Container(
                        height: 16,
                        width: 40,
                        decoration: const BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(10)), color: Colors.red,),
                        child: const Text("New",style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 04,
                ),

                Text(
                  item[i].experience.toString(),
                  style: const TextStyle(fontSize: 13.4, color: Colors.black,fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 04,
                ),
                Text(item[i].detail,
                    style: TextStyle(fontSize: 13, color: Colors.grey.shade600,fontWeight: FontWeight.w500)),
              ],
            ),
          );
        },
      ),
    );
  }
}



class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top:10,bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleWidget(context, "Important Contact"),
          Divider(
            height: 1,
            thickness: 0.7,
            color: Colors.grey.shade300,
          ),
          const ContactList(),
        ],
      ),
    );
  }
}



class ContactList extends StatefulWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  List<Contact> contact = [
    Contact(
        title: "Jordan Smet",
        subtitle: "HR Manager",
        image:
            "https://th.bing.com/th/id/R.ea3a079fa3aa9117a47ab9c1f47fbe95?rik=1ueBtWdAJYldnQ&riu=http%3a%2f%2fthemusclemedics.com%2fwp-content%2fuploads%2f2018%2f04%2fCircle-Profile-PNG.png&ehk=gifQH7wqp06aLJgzmt0z0RkYw8OieqF%2babLq1DgjMfo%3d&risl=&pid=ImgRaw&r=0"),
    Contact(
        title: "Christina Jensen",
        subtitle: "Account Manager",
        image:
            "https://connectconferences.com/wp-content/uploads/sites/2/2018/10/Darcie-Fankhauser.png"),
    Contact(
        title: "Gerrit Kramer",
        subtitle: "IT Manager",
        image:
            "https://i0.wp.com/www.zachdrewshow.com/wp-content/uploads/2018/08/Zach-Drew-bio-pic.png?resize=399%2C399&ssl=1"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: contact.length,
          itemBuilder: (context, index) {
            return Container(
              width: 400,
              height: 77,
              margin: const EdgeInsets.only(left: 0, top: 0),
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey.shade800,
                      radius: 27,
                      child: Image.network(
                        contact[index].image,
                        height: 50,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      contact[index].title,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    subtitle: Text(
                      contact[index].subtitle,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: Colors.grey.shade800),
                    ),
                    trailing: SizedBox(
                      width: 100,
                      height: 50,
                      child: Row(
                        children: [
                          Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey.shade50,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(UniconsLine.phone,
                                  color: Colors.blueGrey.shade600)),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey.shade50,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(Icons.mail_outlined,
                                  color: Colors.blueGrey.shade600)),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 5,
                    thickness: 0.7,
                    color: Colors.grey.shade300,
                  ),
                ],
              ),
            );
          }),
    );
  }
}



Widget titleWidget(BuildContext context, String title) {
  return Container(
    padding: const EdgeInsets.only(left: 18.0),
    margin: const EdgeInsets.only(bottom: 10),
    child: Text(title,
        style: const TextStyle(fontSize: 16.5, fontWeight: FontWeight.w700)),
  );
}
