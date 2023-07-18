import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/circle_story.dart';
import 'package:instagram_clone/widgets/story_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List _stories = ['story 1' , 'story 2','story 3','story 4','story 5'];
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.black,
        centerTitle: false,
        title: Text('username123' , style: TextStyle(fontWeight: FontWeight.bold),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.add_box_outlined , color: Colors.white,size: 30,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.table_rows_rounded , color: Colors.white,size: 30,),
          )
        ],),
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [CircleStory(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [Text('10' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.white, fontSize: 18),),
                  Text('Posts' , style: TextStyle(color: Colors.white , fontSize: 12),)],
                
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [Text('130' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.white, fontSize: 18),),
                  Text('Followers' , style: TextStyle(color: Colors.white , fontSize: 12),)],
                
                ),
              )
              , Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [Text('505' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.white, fontSize: 18),),
                  Text('Following' , style: TextStyle(color: Colors.white , fontSize: 12),)],
                
                ),
              )],
            ),
    
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0 , 8,8,2),
            child: Row(
              children: [
                Text('Priyansha Singhal',
                textAlign: TextAlign.left , style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.fromLTRB(8,2,8,8),
            child: Row(
              children: [
                Text('I welcome you to my profile please do not stalk me',
                 style: TextStyle(color: Colors.white , fontSize: 13),),
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.fromLTRB(8,2,8,8),
            child: Row(
              children: [
               Container(height: 30,
               
               width: 340,
             
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.grey.shade600),
               child: Center(child: Text('Edit Profile' , style: TextStyle(color:Colors.white),)),
               ),
               SizedBox(width: 20,),
               Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(color:Colors.grey.shade600 ,borderRadius: BorderRadius.circular(4)),
                child: Icon(Icons.person_add , color: Colors.white,))
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.fromLTRB(12.0 , 8,8,2),
            child: Row(
              children: [
                Text('Story Highlight',
                 style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.fromLTRB(12,2,8,8),
            child: Row(
              children: [
                Text('Keep your favourite stories on your profile',
                 style: TextStyle(color: Colors.white , fontSize: 13),),
              ],
            ),
          ),
          SizedBox(height: 120,
          child: ListView.builder(
            itemCount: _stories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
            
            return StoryWidget(username: _stories[index],);
          },),),
          TabBar(tabs: [
              Tab(child: Icon(Icons.video_collection_outlined)),
    
             
              Tab(child: Icon(Icons.person_add_alt_outlined)),
          ]),
          Expanded(child: TabBarView(children: [
            Column(
              children: [
                SizedBox(height: 50,),
                Icon(Icons.camera_alt_outlined,
                size: 100,
                color: Colors.white,
                ),
                Text('No Posts Yet' , style: TextStyle(
                  color: Colors.white
                ),)
              ],
            ),
            Column(
              children: [
                SizedBox(height: 50,),
                Icon(Icons.person_add,
                size: 100,
                color: Colors.white,
                ),
                Text('Photos and videos of you' , style: TextStyle(
                  color: Colors.white
                ),)
              ],
            )
          ]))


        ]),
      ),
    );
  }
}