class Course {
  String titleText;
  String subTitle;
  String imagePath;
  Course({
    this.imagePath,
    this.subTitle,
    this.titleText,
  });
}

List<Course> courses = [
  Course(
    imagePath: 'images/yoga_app/pic_icon1.png',
    subTitle: 'Explore the inner landscape through yoga poses.',
    titleText: 'Hatha Yoga',
  ),
  Course(
    imagePath: 'images/yoga_app/pic_icon2.png',
    subTitle:
        'Yin yoga style is a chance to find balance for the body and mind.',
    titleText: 'Yin Yoga',
  ),
];
