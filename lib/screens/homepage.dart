import 'package:flutter/material.dart';
import 'package:claysys_portal/models/contact.dart';
import 'package:unicons/unicons.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  titleWidget(context,"Important Contact"),
                  Divider(
                    height: 0,
                    thickness: 0.7,
                    color: Colors.grey.shade300,
                  ),
                  const ContactList()
                ],
              ),
            ),
          ],
        ),
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
    Contact(title: "Jordan Smet", subtitle: "HR Manager", image: "https://th.bing.com/th/id/R.ea3a079fa3aa9117a47ab9c1f47fbe95?rik=1ueBtWdAJYldnQ&riu=http%3a%2f%2fthemusclemedics.com%2fwp-content%2fuploads%2f2018%2f04%2fCircle-Profile-PNG.png&ehk=gifQH7wqp06aLJgzmt0z0RkYw8OieqF%2babLq1DgjMfo%3d&risl=&pid=ImgRaw&r=0"),
    Contact(title: "Christina Jensen", subtitle: "Account Manager", image: "https://connectconferences.com/wp-content/uploads/sites/2/2018/10/Darcie-Fankhauser.png"),
    Contact(title: "Gerrit Kramer", subtitle: "IT Manager", image: "https://i0.wp.com/www.zachdrewshow.com/wp-content/uploads/2018/08/Zach-Drew-bio-pic.png?resize=399%2C399&ssl=1"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: contact.length,
        itemBuilder: (context, index) {
          return Container(
            width: 400,
            height: 77,
            margin: const EdgeInsets.only(left: 0,top: 0),
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(backgroundColor: Colors.grey.shade800,radius: 27,child: Image.network(contact[index].image,height:50, width:double.infinity, fit: BoxFit.cover,),),
                  title: Text(contact[index].title,style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                  subtitle: Text(contact[index].subtitle,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.grey.shade800),),
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
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Icon(UniconsLine.phone,color: Colors.blueGrey.shade600)
                        ),
                        const SizedBox(width: 10,),
                        Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.blueGrey.shade50,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Icon(Icons.mail_outlined,color: Colors.blueGrey.shade600)
                        ),
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
        }
    );
  }
}



Widget titleWidget(BuildContext context, String title) {
  return Container(
    padding: const EdgeInsets.only(left: 18.0),
    margin: const EdgeInsets.only(bottom: 10),
    child: Text(
        title,
        style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w800)
    ),
  );
}