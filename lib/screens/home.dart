import 'package:assignment_1_facebook_posts/screens/detailPage.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCCCCCC),
      appBar: _AppBar(),
      body: _Body(context),
    );
  }

  Widget _Body(context) {
    return ListView(
      children: [
        _Card(
            userIcon: "assets/user3.png",
            name: "Niraj Karanjeet",
            updated: "timeline post",
            date: "Sep 03",
            privacyIcon: Icons.public_off,
            firstLineCaption:
                "Struggled many hard time but Everyday is a beautiful ",
            richCaption: "day",
            hashTag: "Life_is_a_fun",
            imagePost:
                "https://www.planetware.com/photos-large/CH/switzerland-matterhorn.jpg",
            likes: 2,
            comments: 166,
            shares: 13,
            onPress: () {
              return Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Detail(
                          imageUrl:
                              "https://www.planetware.com/photos-large/CH/switzerland-matterhorn.jpg",
                          likes: 2,
                          comments: 166,
                          shares: 13,
                          name: "Niraj Karanjeet",
                        )),
              );
            }),
        _Card(
            userIcon: "assets/user2.jpg",
            name: "Supriya Maskey",
            updated: "cover",
            date: "Aug 29",
            privacyIcon: Icons.public,
            firstLineCaption: "Be like water my friend then you can be ",
            richCaption: "everything",
            hashTag: "Taking_a_chillpill",
            imagePost:
                "https://lp-cms-production.imgix.net/image_browser/Dead-Sea-Israel.jpg?format=auto",
            likes: 9,
            comments: 4456,
            shares: 65,
            onPress: () {
              return Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Detail(
                          imageUrl:
                              "https://lp-cms-production.imgix.net/image_browser/Dead-Sea-Israel.jpg?format=auto",
                          comments: 4456,
                          shares: 65,
                          likes: 9,
                          name: "Supriya Maskey",
                        )),
              );
            }),
        _Card(
            userIcon: "assets/user1.jpg",
            name: "Sujan Shrestha",
            updated: "timeline post",
            date: "Sep 16",
            privacyIcon: Icons.public_off,
            firstLineCaption: "When you love what you do ",
            richCaption: "do",
            hashTag: "#love_illustrator",
            imagePost:
                "https://scontent.fktm3-1.fna.fbcdn.net/v/t1.0-9/123759490_3258991044209563_2543353549805977268_o.jpg?_nc_cat=107&ccb=2&_nc_sid=09cbfe&_nc_ohc=GpBpP-Iw9H0AX--woOi&_nc_ht=scontent.fktm3-1.fna&oh=ef3e6c6dab8f5f0a5acba9dcbe573817&oe=6003B6A7",
            likes: 1,
            comments: 66,
            shares: 4,
            onPress: () {
              return Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Detail(
                    imageUrl:
                        "https://scontent.fktm3-1.fna.fbcdn.net/v/t1.0-9/123759490_3258991044209563_2543353549805977268_o.jpg?_nc_cat=107&ccb=2&_nc_sid=09cbfe&_nc_ohc=GpBpP-Iw9H0AX--woOi&_nc_ht=scontent.fktm3-1.fna&oh=ef3e6c6dab8f5f0a5acba9dcbe573817&oe=6003B6A7",
                    likes: 1,
                    comments: 66,
                    shares: 4,
                    name: "Sujan Shrestha",
                  ),
                ),
              );
            }),
      ],
    );
  }

  Widget _Card({
    String userIcon,
    String name,
    String updated,
    String date,
    IconData privacyIcon,
    String firstLineCaption,
    String richCaption,
    String hashTag,
    String imagePost,
    int likes,
    int comments,
    int shares,
    Function onPress,
  }) {
    return GestureDetector(
      onTap: onPress,
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 20,
                    backgroundImage: AssetImage(userIcon),
                  ),
                  GeneralSizedBox(width: 5.0),
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 1, left: 3, right: 3),
                    child: Icon(
                      Icons.check_circle,
                      color: Colors.blue,
                      size: 17,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "updated their $updated photo.",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  GeneralSizedBox(
                    width: 5,
                  ),
                  Icon(Icons.more_horiz)
                ],
              ),
              Row(
                children: [
                  GeneralSizedBox(width: 50),
                  Text(date),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 8.0, left: 3, right: 3),
                    child: Text("."),
                  ),
                  Icon(
                    privacyIcon,
                    size: 18,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                  text: firstLineCaption,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                  children: [
                    TextSpan(
                        text: '${richCaption} \n',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: "# $hashTag",
                        style: TextStyle(color: Colors.blue)),
                  ],
                ),
              ),
              Image.network(imagePost),
              GeneralSizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 5),
                      child: Stack(
                        overflow: Overflow.visible,
                        children: [
                          Positioned(
                            child: CircleAvatar(
                              radius: 10,
                              backgroundImage: AssetImage("assets/heart.png"),
                            ),
                          ),
                          Positioned(
                            right: 15,
                            child: CircleAvatar(
                              radius: 10,
                              backgroundImage: AssetImage("assets/like.png"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text("${likes}K"),
                  ]),
                  Row(children: [
                    Text("${comments} Comments . ${shares} Shares"),
                  ]),
                ],
              ),
              Divider(
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _LikeComment(icon: Icons.thumb_up_outlined, text: "Like"),
                  _LikeComment(
                      icon: Icons.mode_comment_outlined, text: "Comment"),
                  _LikeComment(icon: Icons.reply_outlined, text: "Share"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _LikeComment({IconData icon, String text}) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.black,
        ),
        GeneralSizedBox(width: 4),
        Text(
          text,
          style: TextStyle(color: Colors.black),
        )
      ],
    );
  }

  Widget _AppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        "facebook",
        style: TextStyle(
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold,
            fontSize: 28),
      ),
      actions: [
        CustomCircleAvatar(icon: Icons.search),
        GeneralSizedBox(width: 10.0),
        CustomCircleAvatar(icon: Icons.message),
        GeneralSizedBox(width: 5.0),
      ],
    );
  }

  CircleAvatar CustomCircleAvatar({IconData icon}) {
    return CircleAvatar(
      backgroundColor: Color(0xffECECEC),
      child: Icon(
        icon,
        color: Colors.black,
      ),
    );
  }

  Widget GeneralSizedBox({double width, double height}) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
