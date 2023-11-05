import 'package:flutter/material.dart';

class chattingPageWithFriend extends StatelessWidget {
  const chattingPageWithFriend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/backButton.png', width: 24, height: 24),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Chatting With You",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Lato',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 23),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 2,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.black87,
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),

                        Center(
                          child: Stack(
                            children: [
                              Container(
                              width: 362,
                              height: 102,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white)
                          ),

                              Card(
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "assets/chattingProfilePictureJustin.png",
                                        width: 63,
                                        height: 75,
                                      ),
                                      SizedBox(width: 10), // Add space between the image and text
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Justin",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                          SizedBox(height: 10,),
                                          Text(
                                            "Lorem ipsum dolor sit amet, consectet",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 27,
                                right: 15,
                                child: Text(
                                "Yesterday",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),)
                            ],
                          ),
                        ),
                        SizedBox(height: 15,),
                        Center(
                          child: Stack(
                            children: [
                              Container(
                                  width: 362,
                                  height: 102,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.white)
                              ),

                              Card(
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "assets/chattingProfilePictureNara.png",
                                        width: 63,
                                        height: 75,
                                      ),
                                      SizedBox(width: 10), // Add space between the image and text
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Justin",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                          SizedBox(height: 10,),
                                          Text(
                                            "Lorem ipsum dolor sit amet, consectet",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 27,
                                right: 15,
                                child: Text(
                                  "19.40 PM",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            color: Color(0xFFC19475), // Background color
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Image.asset('assets/brownHomeIcon.png',width: 20, color: Colors.white),
                  onPressed: () {
                    // Navigate to the home screen or perform an action.
                  },
                ),
                IconButton(
                  icon: Image.asset('assets/cartIcon.png',width: 20, color: Colors.white),
                  onPressed: () {
                    // Navigate to the business screen or perform an action.
                  },
                ),
                IconButton(
                  icon: Image.asset('assets/chatIcon.png',width: 20, color: Colors.white),
                  onPressed: () {
                    // Navigate to the school screen or perform an action.
                  },
                ),
                IconButton(
                  icon: Image.asset('assets/profile.png', width: 25),
                  onPressed: () {
                    // Navigate to the school screen or perform an action.
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
