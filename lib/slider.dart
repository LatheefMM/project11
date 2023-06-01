import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: slider(),));
}

class slider extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar:AppBar(
       backgroundColor: Colors.pink,
       title: Text('Nature'),
     ),
     body: CarouselSlider(
         items:[
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg'),
                fit: BoxFit.cover,
              )

          ),),
           ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Container(
           decoration: const BoxDecoration(
               image: DecorationImage(
                 image: NetworkImage('https://media.istockphoto.com/id/1093110112/photo/picturesque-morning-in-plitvice-national-park-colorful-spring-scene-of-green-forest-with-pure.jpg?s=612x612&w=is&k=20&c=OiHgTBq_hoQM9wdmyCh64tkF_RFrFOBstqM0Q8GeBl0='),
                 fit: BoxFit.cover,
               )
           ),),
       ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Container(
           decoration: const BoxDecoration(
               image: DecorationImage(
                 image: NetworkImage('https://media.istockphoto.com/id/1344837084/photo/young-woman-with-backpack-outdoors.jpg?s=612x612&w=is&k=20&c=e28atZp7nKuQvRkYd9zso9M9GA5GRhgs1OLhYFbkuxg='),
                 fit: BoxFit.cover,
               )
           ),),
       ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Container(
           decoration: const BoxDecoration(
               image: DecorationImage(
                 image: NetworkImage('https://media.istockphoto.com/id/1270104024/photo/father-carries-son-on-hike-through-forest-trail-in-pacific-northwest.jpg?s=612x612&w=is&k=20&c=zsXyz7q9kB4qS3SnuqRfoCaiAWG0-iMXqdW3zm1zB3g='),
                 fit: BoxFit.cover,
               )
           ),),
       ),
       ], options: CarouselOptions(
     autoPlay: true,
       height: 200,
       enlargeCenterPage: true,
       enableInfiniteScroll: true,
       autoPlayCurve: Curves.easeInExpo,
       autoPlayAnimationDuration: const Duration(seconds: 1)
     )
   )
    );
  }
}