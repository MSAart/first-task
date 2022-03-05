import 'package:firsttask/const_style.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Color(0xff044F94),
        ),
        title: const Text(
          'First Task',
          style: textAppbar,
        ),
        backgroundColor: const Color(0xffffffff),
        elevation: 0.5,
        actions: [
          Image.asset(
            'assets/images/logo-codehouse.png',
            width: 100,
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 2,
                child: Container(
                  height: 200,
                  padding: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage(
                      'assets/images/image_ilustrator.jpg',
                    )),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Flutter Developer',
                style: textTitle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Material(
                        elevation: 1,
                        borderRadius: BorderRadius.circular(20),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/code_house.jpg',
                            width: 35,
                            height: 35,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                      ),
                      const Text(
                        'Code House',
                        style: textCourse,
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                      ),
                      Text(
                        '5.0 ( 1500 )',
                        style: textRating,
                      )
                    ],
                  )
                ],
              ),
              Divider(),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'in this course you’ll learn how to be FrontEnd Flutter Developer from beginning',
                style: textDesc,
              ),
              const SizedBox(
                height: 10,
              ),
              const Card(
                elevation: 2,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/play.png'),
                    backgroundColor: Colors.white,
                  ),
                  title: Text(
                    'Fundamental Dart',
                    style: textMateri,
                  ),
                  subtitle: Text(
                    '2 Materi',
                    style: textSubMateri,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Card(
                elevation: 2,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/play.png'),
                    backgroundColor: Colors.white,
                  ),
                  title: Text(
                    'Introduction Flutter',
                    style: textMateri,
                  ),
                  subtitle: Text(
                    '9 Materi',
                    style: textSubMateri,
                  ),
                  trailing: Icon(Icons.lock),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 1,
                child: Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xff044F94),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                    child: InkWell(
                        splashColor: const Color(0xff044F94),
                        borderRadius: BorderRadius.circular(10),
                        child: const Center(
                            child: Text(
                          'Buy Course Now \$10',
                          style: textButtons,
                        )),
                        onTap: () {}),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
