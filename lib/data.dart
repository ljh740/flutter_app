import 'package:flutter/material.dart';
import 'package:flutter_app/page/flipper_widget.dart';
import 'package:flutter_app/page/swiper_page.dart';
import 'package:flutter_app/widget/contact_picker_widget.dart';
import 'package:flutter_app/widget/star_rating_widget.dart';
import 'package:flutter_app/widget/text_widget.dart';
import 'package:flutter_app/page/drag_like_page.dart';
import 'package:flutter_app/page/random_words.dart';
import 'package:flutter_app/page/like_button_page.dart';
import 'package:flutter_app/movie/list/movie_grid_page.dart';
import 'package:flutter_app/movie/list/movie_list_page.dart';
import 'package:flutter_app/question/pages/quiz_page.dart';
import 'package:flutter_app/tabs_demo/bottom_navigation.dart';
import 'package:flutter_app/tabs_demo/bottom_navigation_bar.dart';
import 'package:flutter_app/tabs_demo/bottom_navigation_widget.dart';
import 'package:flutter_app/tabs_demo/navigation_keep_alive.dart';
import 'package:flutter_app/tabs_demo/tabbar_home_page.dart';
import 'package:flutter_app/page/time_line.dart';
import 'package:flutter_app/widget/rounded_letter_widget.dart';
import 'package:flutter_app/widget/slider_widget.dart';
import 'package:flutter_app/widget/stepper_widget.dart';
import 'package:flutter_app/widget/textfield_widget.dart';
import 'package:flutter_app/widget/button_widget.dart';
import 'package:flutter_app/widget/chip_widget.dart';
import 'package:flutter_app/widget/dialog_widget.dart';
import 'package:flutter_app/widget/dismissible_widget.dart';
import 'package:flutter_app/widget/frosting_widget.dart';
import 'package:flutter_app/widget/image_widget.dart';
import 'package:flutter_app/widget/load_image_widget.dart';

class RefreshType {
  static final int DEFAULT = 0x1000;
  static final int LOAD_MORE = 0x1000;
  static final int REFRESH = 0x1000;
}

class Girl {
  final String description;
  final String image;

  Girl(this.description, this.image);
}

final List<Girl> girls = [
  Girl('Sliding to the left means dislike',
      'https://t1.onvshen.com:85/gallery/26034/29114/s/0.jpg'),
  Girl('slipping to the right means expressing love',
      'https://t1.onvshen.com:85/gallery/22244/29115/s/0.jpg'),
  Girl('Hope you like',
      'https://t1.onvshen.com:85/gallery/22204/29121/s/001.jpg'),
  Girl(
      'Hope you like', 'https://t1.onvshen.com:85/gallery/18071/29116/s/0.jpg'),
  Girl(
      'Hope you like', 'https://t1.onvshen.com:85/gallery/22116/29119/s/0.jpg'),
  Girl('Hope you like',
      'https://t1.onvshen.com:85/gallery/26920/29030/s/003.jpg')
];

class Doodle {
  final String name;
  final String time;
  final String content;
  final String doodle;
  final Color iconBackground;
  final Icon icon;

  const Doodle(
      {this.name,
      this.time,
      this.content,
      this.doodle,
      this.icon,
      this.iconBackground});
}

const List<Doodle> doodles = [
  Doodle(
      name: "Al-Sufi (Azophi)",
      time: "903 - 986",
      content:
          "One of Al-Sufi's greatest works involved fact-checking the Greek astronomer Ptolemy's measurements of the brightness and size of stars. In the year 964 AD, Al-Sufi published his findings in a book titled Kitab al-Kawatib al-Thabita al-Musawwar, or The Book of Fixed Stars. In many cases, he confirmed Ptolemy’s discoveries, but he also improved upon his work by illustrating the constellations and correcting some of Ptolemy’s observations about the brightness of stars.",
      doodle: "https://t1.onvshen.com:85/gallery/26034/29114/s/0.jpg",
      icon: Icon(Icons.star, color: Colors.white),
      iconBackground: Colors.cyan),
  Doodle(
      name: "Abu al-Wafa’ al-Buzjani",
      time: "940 - 998",
      content:
          " Abu al-Wafa' is an innovator whose contributions to science include one of the first known introductions to negative numbers, and the development of the first quadrant, a tool used by astronomers to examine the sky. His pioneering work in spherical trigonometry was hugely influential for both mathematics and astronomy.",
      doodle: "https://t1.onvshen.com:85/gallery/22244/29115/s/0.jpg",
      icon: Icon(
        Icons.exposure,
        color: Colors.white,
      ),
      iconBackground: Colors.redAccent),
  Doodle(
      name: "Al-Hasan Ibn al-Haytham",
      time: "c. 965 - c. 1040",
      content:
          "Ibn al-Haytham was the first to explain through experimentation that vision occurs when light bounces on an object and then is directed to one's eyes. He was also an early proponent of the concept that a hypothesis must be proved by experiments based on confirmable procedures or mathematical evidence—hence understanding the scientific method five centuries before Renaissance scientists.",
      doodle: "https://t1.onvshen.com:85/gallery/18071/29116/s/0.jpg",
      icon: Icon(
        Icons.visibility,
        color: Colors.black87,
        size: 32.0,
      ),
      iconBackground: Colors.yellow),
  Doodle(
      name: "Al-Bīrūnī",
      time: "973 - 1050",
      content:
          "Biruni is regarded as one of the greatest scholars of the Golden Age of Muslim civilisation and was well versed in physics, mathematics, astronomy, and natural sciences, and also distinguished himself as a historian, chronologist and linguist. He studied almost all fields of science and was compensated for his research and strenuous work. Royalty and powerful members of society sought out Al-Biruni to conduct research and study to uncover certain findings.",
      doodle: "https://t1.onvshen.com:85/gallery/22116/29119/s/0.jpg",
      icon: Icon(
        Icons.account_balance,
        color: Colors.black87,
      ),
      iconBackground: Colors.amber),
  Doodle(
      name: "Ibn Sina (Avicenna)",
      time: "980 - 1037",
      content:
          "Avicenna (Ibn Sīnā) was a Persian polymath who is regarded as one of the most significant physicians, astronomers, thinkers and writers of the Islamic Golden Age. He has been described as the father of early modern medicine. Of the 450 works he is known to have written, around 240 have survived, including 150 on philosophy and 40 on medicine.\nHis most famous works are The Book of Healing, a philosophical and scientific encyclopedia, and The Canon of Medicine, a medical encyclopedia which became a standard medical text at many medieval universities and remained in use as late as 1650. In 1973, Avicenna's Canon Of Medicine was reprinted in New York.\nBesides philosophy and medicine, Avicenna's corpus includes writings on astronomy, alchemy, geography and geology, psychology, Islamic theology, logic, mathematics, physics and works of poetry.",
      doodle: "https://t1.onvshen.com:85/gallery/26920/29030/s/003.jpg",
      icon: Icon(
        Icons.healing,
        color: Colors.white,
      ),
      iconBackground: Colors.green),
  Doodle(
      name: "Ibn Rushd (Averroes)",
      time: "1126 - 1198",
      content:
          "Averroes was an Andalusian philosopher and thinker who wrote about many subjects, including philosophy, theology, medicine, astronomy, physics, Islamic jurisprudence and law, and linguistics. His philosophical works include numerous commentaries on Aristotle, for which he was known in the West as The Commentator. He also served as a judge and a court physician for the Almohad Caliphate.",
      doodle: "https://t1.onvshen.com:85/gallery/22204/29121/s/001.jpg",
      icon: Icon(
        Icons.blur_circular,
        color: Colors.white,
      ),
      iconBackground: Colors.indigo),
  Doodle(
      name: "Nasir al-Din Tusi",
      time: "1201 - 1274",
      content:
          "Tusi was a Persian polymath, architect, philosopher, physician, scientist, and theologian. He is often considered the creator of trigonometry as a mathematical discipline in its own right. Ibn Khaldun (1332–1406) considered Al-Tusi to be the greatest of the later Persian scholars.",
      doodle: "https://t1.onvshen.com:85/gallery/26925/29071/s/001.jpg",
      icon: Icon(
        Icons.category,
        color: Colors.white,
      ),
      iconBackground: Colors.pinkAccent),
  Doodle(
      name: "Ibn Battuta",
      time: "1304 - 1368",
      content:
          "Over a period of thirty years, Ibn Battuta visited most of the Islamic world and many non-Muslim lands, including North Africa, the Horn of Africa, West Africa, the Middle East, Central Asia, Southeast Asia, South Asia and China. Near the end of his life, he dictated an account of his journeys, titled A Gift to Those Who Contemplate the Wonders of Cities and the Marvels of Travelling (Tuḥfat an-Nuẓẓār fī Gharāʾib al-Amṣār wa ʿAjāʾib al-Asfār), usually simply referred to as The Travels (Rihla). This account of his journeys provides a picture of a medieval civilisation that is still widely consulted today.",
      doodle: "https://t1.onvshen.com:85/gallery/26925/29071/s/0.jpg",
      icon: Icon(
        Icons.navigation,
        color: Colors.white,
        size: 32.0,
      ),
      iconBackground: Colors.deepPurpleAccent),
  Doodle(
      name: "Ibn Khaldun",
      time: "1332 - 1406",
      content:
          "He is widely considered as a forerunner of the modern disciplines of historiography, sociology, economics, and demography.\nHe is best known for his book, the Muqaddimah or Prolegomena ('Introduction'). The book influenced 17th-century Ottoman historians like Kâtip Çelebi, Ahmed Cevdet Pasha and Mustafa Naima, who used the theories in the book to analyse the growth and decline of the Ottoman Empire. Also, 19th-century European scholars acknowledged the significance of the book and considered Ibn Khaldun to be one of the greatest philosophers of the Middle Ages.",
      doodle: "https://t1.onvshen.com:85/gallery/26935/29111/s/0.jpg",
      icon: Icon(
        Icons.supervised_user_circle,
        color: Colors.white,
      ),
      iconBackground: Colors.teal),
  Doodle(
      name: "Piri Reis",
      time: "1465 - 1553",
      content:
          "He is primarily known today for his maps and charts collected in his Kitab-ı Bahriye (Book of Navigation), a book that contains detailed information on navigation, as well as very accurate charts (for their time) describing the important ports and cities of the Mediterranean Sea. He gained fame as a cartographer when a small part of his first world map (prepared in 1513) was discovered in 1929 at the Topkapı Palace in Istanbul. His world map is the oldest known Turkish atlas showing the New World, and one of the oldest maps of America still in existence anywhere (the oldest known map of America that is still in existence is the map drawn by Juan de la Cosa in 1500). Piri Reis' map is centered on the Sahara at the latitude of the Tropic of Cancer.",
      doodle: "https://t1.onvshen.com:85/gallery/26906/28971/s/002.jpg",
      icon: Icon(
        Icons.map,
        color: Colors.white,
        size: 32.0,
      ),
      iconBackground: Colors.blue),
];

const List<String> languages = <String>[
  'Flutter',
  'Android',
  'iOS',
  'Java',
  'Object-C',
  'JavaScript',
  'Ruby',
  'PHP',
  'C++',
  'C#',
  'C语言',
  'Dart',
  'Kotlin',
  'Swift'
];

class ExpandStateBean {
  var isOpen;
  String title;
  int index;
  List<SubExpandBean> subExpand;

  ExpandStateBean(this.isOpen, this.title, this.index, this.subExpand);
}

class SubExpandBean {
  String title;
  Widget widget;

  SubExpandBean(this.title, this.widget);
}

List<ExpandStateBean> expandStateList = [
  ExpandStateBean(false, 'Widgets', 0, [
    SubExpandBean('Text', TextWidget()),
    SubExpandBean('Button', ButtonWidget()),
    SubExpandBean('Image', ImageWidget()),
    SubExpandBean('TextField', TextFieldWidget()),
    SubExpandBean('Dialog', DialogWidget()),
    SubExpandBean('TabBar', TabBarHomePage()),
    SubExpandBean('BottomNavigationBar', BottomNavigationBarHomePage()),
    SubExpandBean('BottomNavigation', BottomNavigationWidget()),
    SubExpandBean('NavigationKeepAlive', NavigationKeepAlive()),
    SubExpandBean('不规则底部导航栏', BottomNavigation()),
    SubExpandBean('Stepper', StepperWidget()),
    SubExpandBean('Slider', SliderWidget()),
    SubExpandBean('Chip', ChipWidget()),
    SubExpandBean('滑动删除', DismissibleWidget()),
    SubExpandBean('毛玻璃', FrostingWidget()),
  ]),
  ExpandStateBean(false, 'Custom Widgets', 1, [
    SubExpandBean('DragLike', DragLikePage()),
    SubExpandBean('LikeButton', LikeButtonPage()),
    SubExpandBean('时间流', TimeLinePage()),
    SubExpandBean('LoadImage', LoadImageWidget()),
    SubExpandBean('RoundedLetter', RoundedLetterWidget()),
    SubExpandBean('Flipper', FlipperWidget()),
    SubExpandBean('ContactPicker', ContactPickerWidget()),
    SubExpandBean('Swiper', SwiperPage()),
    SubExpandBean('评分控件', StarRatingWidget()),
  ]),
  ExpandStateBean(false, '功能', 2, [
    SubExpandBean('Question', QuizPage()),
    SubExpandBean('电影TOP250', MovieGridPage()),
    SubExpandBean('最新电影', MovieListPage()),
    SubExpandBean('RandomWords', RandomWords()),
  ]),
];

List<String> banner_images = [
  "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1550062506230&di=c1fe7acf0d730d3eec5e259b83c5dbb1&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F9358d109b3de9c82036507ac6681800a19d84395.jpg",
  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1550062506230&di=5a7d0ce4bf6bc3ea16631b3b6656705d&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4e4a20a4462309f76874a128790e0cf3d7cad6f5.jpg',
  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1550062506229&di=d809dd657a9e0df1b5ccdc7aa2b5ed6e&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F0e2442a7d933c89527374758db1373f08202004c.jpg',
  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1550062506227&di=4dbf7aff166eedb67f17d9cb445b7b3f&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F8d5494eef01f3a29dda37ce99325bc315c607caa.jpg'
];