import 'package:flutter/material.dart'; // Flutter framework import

void main() {
  runApp(MyApp()); // App start
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Debug Banner off
      home: InstagramHomePage(), // Home set
    );
  }
}

// Main Instagram UI Page
class InstagramHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar Start
      appBar: AppBar(
        backgroundColor: Colors.white, // White background
        elevation: 1, // Slight shadow
        leading: IconButton(
          icon: Icon(Icons.camera_alt_outlined, color: Colors.black),
          onPressed: () {},
        ),
        title: Text(
          'Instagram',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Billabong', // Instagram-er moto font
            fontSize: 32,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.live_tv, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.send, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      // AppBar End

      // Body Start
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Story Section Start
            Container(
              height: 120, // Story area height
              child: ListView.builder(
                scrollDirection: Axis.horizontal, // Horizontally scroll
                itemCount: 10, // 10 ta story
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0), // Story gap
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(2), // Border er gap
                          decoration: BoxDecoration(
                            shape: BoxShape.circle, // Circle shape
                            border: Border.all(
                              color: Colors.red, // Red border
                              width: 2,
                            ),
                          ),
                          child: CircleAvatar(
                            radius: 30, // Story circle size
                            backgroundImage: NetworkImage(
                                'https://media.istockphoto.com/id/2159286167/photo/light-portrait-of-a-young-asian-woman-shot-against-a-pink-background.jpg?s=2048x2048&w=is&k=20&c=Dh_1hT_wh1G1c4kBQ5q5tgUIntaqruEiFvgWKAql8uA='), // Dummy Image
                          ),
                        ),
                        SizedBox(height: 5),
                        Text('User $index', style: TextStyle(fontSize: 12)), // User name
                      ],
                    ),
                  );
                },
              ),
            ),
            //story section end here
            Divider(thickness: 1),
            //post section start here
            ListView.builder(
              shrinkWrap: true, //ListView under Column
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index){
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //post header
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1638578195201-6a2f7fb3689a?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGFsaSUyMHJhemF8ZW58MHx8MHx8fDA%3D'),
                ),
                      title: Text('arafat.jahan'), //user name
                      trailing: Icon(Icons.more_vert), //3 dots
                      ),
                    //post image
                    Image.network(
                        'https://images.unsplash.com/photo-1638578195201-6a2f7fb3689a?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGFsaSUyMHJhemF8ZW58MHx8MHx8fDA%3D',
                      width: double.infinity,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 8.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.favorite_border),
                              SizedBox(width: 10),
                              Icon(Icons.chat_bubble_outline),
                              SizedBox(width: 10),
                              Icon(Icons.send)
                            ],
                          ),
                          Icon(Icons.bookmark_border),

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        'Liked by user1 and 120 others',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text('wanjiru.sarah Beautiful Christmas vibes! 🎄✨'),
                    ),

                    //like,comment, share icons
                    Divider(thickness: 1),
                  ],
                );
              },
            ),
          ],
        ),
      ),

      //body end

      //bottom navigation
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_creation_outlined),
            label: 'Reels',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
