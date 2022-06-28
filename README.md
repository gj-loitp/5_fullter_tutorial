Flutter Tutorial, Flutter demo
This app is very useful for all developers. Written by 100% Dart codes.


build: 
flutter build appbundle
flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs
flutter build apk --debug --verbose

flutter pub cache repair


flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs
flutter build appbundle

Do Flutter update lên 3.0 nên proj cũng phải update. Mọi người pull giúp em code mới về. E update tool gradle ấy ạ. Sau đó mọi người chạy cho em các dòng lệnh
flutter upgrade
dart pub outdated
dart pub upgrade
flutter build apk --flavor prod -t lib/flavors/prod_main.dart
flutter run --prod apk --flavor prod -t lib/flavors/prod_main.dart

I tried out all the methods in previous answers, but all of them lasted only while the terminal was open. So I went ahead and directly added it to the path file permanently.

sudo nano /etc/paths
Add this to the file:
/Users/yourUserName/Development/flutter/bin
Save the file by pressing Ctrl + X, Y and then Enter. Close the terminal and reopen it again. Tada!

flutter build apk --debug --no-sound-null-safety
flutter build apk --release --no-sound-null-safety

arch -x86_64 pod install --repo-update


Widget() {
return Text(
"Hello :)",
style: TextStyle(
fontSize: 60.0,
fontWeight: FontWeight.bold,
color: Colors.blue,
shadows: [
Shadow(
color: Colors.indigo, offset: Offset(0.0, 3.0), blurRadius: 3.0),
]),
);
}

Widget neumorphism(BuildContext context) {
final elevation = 3.0;
return Text(
"Hello :)",
style: TextStyle(
fontSize: 60.0,
fontWeight: FontWeight.bold,
color: Colors.grey.shade50,
shadows: [
Shadow(
color: Colors.grey.shade300,
offset: Offset(3.0, 3.0),
blurRadius: elevation),
Shadow(
color: Colors.white,
offset: Offset(-3.0, 3.0),
blurRadius: elevation),
]),
);
}


Widget() {
return PhysicalModel(
color: Colors.lightBlue,
elevation: 3.5,
shape: BoxShape.rectangle,
child: SizedBox.fromSize(
size: const Size.square(100.0),
),
);
}


Widget() {
return AnimatedPhysicalModel(
child: GestureDetector(
onTap: () => ..., // change elevation here
child: SizedBox.fromSize(
size: const Size.square(100.0),
),
),
shape: BoxShape.rectangle,
elevation: elevation,
borderRadius: BorderRadius.circular(12.0),
color: Colors.amber,
shadowColor: Colors.deepOrange,
duration: Duration(milliseconds: 500),
);
}


BoxDecoration(
borderRadius: BorderRadius.circular(12.0),
shape: BoxShape.rectangle,
color: Colors.lightBlue,
boxShadow: [
BoxShadow(
color: Colors.blue.shade700,
spreadRadius: 1.0,
blurRadius: 10.0,
offset: Offset(3.0, 3.0))
],
);



TextButton(
style: TextButton.styleFrom(
shape: CircleBorder(
side: BorderSide(
width: 2, color: Colors.red, style: BorderStyle.solid)),
),
onPressed: () {},
child: Image.asset(
"resources/images/ic_list_customer.png",
width: 25,
height: 25,
),
)

TextButton(
style: TextButton.styleFrom(
padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
primary: Colors.teal,
backgroundColor: Colors.yellow,
// onSurface: Colors.grey,
textStyle: TextStyle(
// color: Colors.red,
fontSize: Constants.text_medium,
fontStyle: FontStyle.italic,
),
elevation: 5,
side: BorderSide(color: Colors.pink, width: 2),
shape: const BeveledRectangleBorder(
borderRadius: BorderRadius.all(Radius.circular(45)),
),
),
onPressed: () {
Navigator.push(
context,
MaterialPageRoute(builder: (context) => DummyScreen()),
);
},
onLongPress: () {
print('Long press');
},
child: Text(
"TextButton",
),
)

double width = MediaQuery.of(context).size.width;
double height = MediaQuery.of(context).size.height;

// Height (without SafeArea)
var padding = MediaQuery.of(context).padding;
double height1 = height - padding.top - padding.bottom;

// Height (without status bar)
double height2 = height - padding.top;

// Height (without status and toolbar)
double height3 = height - padding.top - kToolbarHeight;


Positioned(
left: 45,
top: 28,
child: Container(
width: 18,
height: 18,
padding: EdgeInsets.all(3),
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.all(Radius.circular(8.5)),
boxShadow: [
BoxShadow(
color: Colors.black.withAlpha(64),
blurRadius: 0.5, // soften the shadow
spreadRadius: 0.5, //extend the shadow
offset: Offset(
0, // Move to right 10  horizontally
1.5, // Move to bottom 10 Vertically
),
)
],
),
child: Image(
image: AssetImage('resources/images/ic_ranking.png'),
),
),
)


Transform.rotate(
angle: -pi / 4,
child: Container(
width: 120,
height: 18,
color: Colors.red,
alignment: Alignment.center,
child: Text(
project.type,
style: TextStyle(
color: Colors.white,
fontSize: 9,
fontWeight: FontWeight.w700),
),
),
),



Container(
width: double.infinity,
height: DimenConstants.buttonHeight,
child: FlatButton(
disabledColor: Colors.grey,
color: Colors.blue,
onPressed: () {
//TODO lotip
},
child: Text(
"Tiếp tục",
style: TextStyle(
color: Colors.white,
fontSize: 14,
fontWeight: FontWeight.w400,
),
),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.only(
topRight: Radius.circular(25.0),
topLeft: Radius.circular(25.0),
bottomRight: Radius.circular(25.0),
),
),
),
),


Container(
width: 100.0,
height: 150.0,
decoration: BoxDecoration(
image: DecorationImage(
fit: BoxFit.cover, image: NetworkImage('Path to your image')),
borderRadius: BorderRadius.all(Radius.circular(8.0)),
color: Colors.redAccent,
),
)
			  

//use this as child
Wrap(
children: <Widget>[*your_child*])
Match_parent,Match_parent:

//use this as child
Container(
height: double.infinity,
width: double.infinity,child:*your_child*)
Match_parent,Wrap_content :

//use this as child
Row(
mainAxisSize: MainAxisSize.max,
children: <Widget>[*your_child*],
);
Wrap_content ,Match_parent:

//use this as child
Column(
mainAxisSize: MainAxisSize.max,
children: <Widget>[your_child],
);


CachedNetworkImage(
imageUrl: "http://via.placeholder.com/350x150",
placeholder: (context, url) => CircularProgressIndicator(),
errorWidget: (context, url, error) => Icon(Icons.error),
width: 50,
height: 50,
),


static User _instance;
User._();
static User get getInstance => _instance = _instance ?? User._();

IconButton(
icon: new Image.asset('assets/ic_email.png',width: 15.0,height: 15.0,),
onPressed: null,
)

ClipRRect(
borderRadius: BorderRadius.circular(8.0),
child: Image.network(
subject['images']['large'],
height: 150.0,
width: 100.0,
),
)
