import 'package:flutter/material.dart';
import 'package:quiz/pages/quiz_page.dart';
import 'package:quiz/constant/color_constant.dart';

class HomePage extends StatelessWidget {
  quizPage(context, catg) {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => Quiz(
                  catg: catg,
                )));
  }

  handleClick(int item) {
    switch (item) {
      case 0:
        break;
      case 1:
        break;
    }
  }

  HomePage({Key? key}) : super(key: key);
  final List sub = [
    [
      'General Knowledge',
      'Books',
      'Film',
      'Music',
      'Musicals & Theatres',
      'Television',
      'Video Games',
      'Board Games',
      'Science & Nature',
      'Computers',
      'Mathematics',
      'Mythology',
      'Sports',
      'Geography',
      'History',
      'Politics',
      'Art',
      'Celebrities',
      'Animals',
      'Vehicles',
      'Comics',
      'Gadgets',
      'Anime & Manga',
      'Cartoon & Animations'
    ],
    [
      'https://www.science.edu/acellus/wp-content/uploads/2018/08/Acellus-AP-Computer-Science-Principals.jpg',
      'https://jooinn.com/images/business-4.jpg',
      'https://getwallpapers.com/wallpaper/full/4/b/b/58367.jpg',
      'https://www.icriindia.com/uploads/courses/banner/1a166ab3701560420635.jpg',
      'https://getwallpapers.com/wallpaper/full/1/7/c/1488881-science-fiction-wallpaper-sci-fi-1920x1080-for-hd.jpg',
      'https://getwallpapers.com/wallpaper/full/c/7/2/58275.jpg',
      'https://wallpaper-house.com/data/out/12/wallpaper2you_474448.jpg',
      'https://wallpx.com/image/2021/08/checkers-board-game-monochrome.jpg',
      'https://images.unsplash.com/photo-1466853817435-05b43fe45b39?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1999&q=80',
      'https://images.unsplash.com/photo-1547394765-185e1e68f34e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
      'https://media.istockphoto.com/photos/science-math-chemistry-equations-picture-id953006834',
      'https://www.arcticfocus.org/media/images/scientific-chalkboard-childrens-p.2e16d0ba.fill-1200x630.jpg',
      'https://images.unsplash.com/photo-1612872087720-bb876e2e67d1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1307&q=80',
      'https://images.unsplash.com/photo-1562742996-b0feb89cbbbd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1174&q=80',
      'https://images.unsplash.com/photo-1604580864964-0462f5d5b1a8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      'https://images.unsplash.com/photo-1529107386315-e1a2ed48a620?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      'https://images.unsplash.com/photo-1621886292650-520f76c747d6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80',
      'https://media.istockphoto.com/photos/realistic-3d-illustration-colorful-firework-pyrotechnic-night-dark-picture-id1281148014',
      'https://images.unsplash.com/photo-1591824438708-ce405f36ba3d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      'https://images.unsplash.com/photo-1508798179027-a00aa5326443?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
      'https://images.unsplash.com/photo-1620336655055-088d06e36bf0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80',
      'https://images.unsplash.com/photo-1468495244123-6c6c332eeece?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1021&q=80',
      'https://images.unsplash.com/photo-1620928572438-075c466c48da?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      'https://images.unsplash.com/photo-1575540325855-4b5d285a3845?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'
    ],
    [
      9,
      10,
      11,
      12,
      13,
      14,
      15,
      16,
      17,
      18,
      19,
      20,
      21,
      22,
      23,
      24,
      25,
      26,
      27,
      28,
      29,
      30,
      31,
      32
    ]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz App'),
        backgroundColor: ColorsConsts.blue,
        actions: [
          PopupMenuButton<int>(
            onSelected: (item) => handleClick(item),
            itemBuilder: (context) => [
              PopupMenuItem<int>(value: 0, child: Text('Difficulty')),
              PopupMenuItem<int>(value: 1, child: Text('Settings')),
            ],
          ),
        ],
      ),
      body: Container(
        color: ColorsConsts.silver,
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          children: List.generate(sub[0].length, (index) {
            return InkWell(
              onTap: () {
                quizPage(context, sub[2][index]);
              },
              child: Card(
                elevation: 8,
                shadowColor: Colors.grey,
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(color: Colors.grey)),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: FadeInImage(
                          image: NetworkImage(sub[1][index]),
                          fit: BoxFit.cover,
                          placeholder:
                              const AssetImage('assets/images/placeHolder.jpg'),
                        ),

                        // child: Image.network(
                        //   sub[1][index],
                        //   fit: BoxFit.cover,
                        // ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Center(
                        child: Text(
                          '${sub[0][index]}',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
