**Flutter Tutorial, Flutter demo**  
*This app is very useful for all developers. Written by 100% Dart codes.*


<img src="https://play-lh.googleusercontent.com/dJ4RVPaVF-I4O4YnWUF9l2XesNZh36Iq1z3L33QLjUSAI5uUAGFmQBDRCY15s32svoc=w5120-h2880-rw" width="150" />
<img src="https://play-lh.googleusercontent.com/G_O83yVHWjeS2IiKAp_4BKNnFgx9cRC5YB22Pq_Tn0qG4C16onZb-eH8Q23js6simg=w5120-h2880-rw" width="150" />
<img src="https://play-lh.googleusercontent.com/iDnAcSIFjaZFiSICNgGkfueQo8X8iFGVM10W1kST61NuWzEbk-Q1CThaiy9IRXvuX-J9=w5120-h2880-rw" width="150" />
<img src="https://play-lh.googleusercontent.com/Go2MUdHADAUR-JayT2GhdHrHJ3165Smev_MzuK25VjVVVKt1UUNIaHEWx5nOynqsZg=w5120-h2880-rw" width="150" />
<img src="https://play-lh.googleusercontent.com/Eb3QQFBrPrAbo90rPOLHwgDEhnkcZQ5TBhfHplGE6DpzIqkmOSykQbdG2kIIvb-Q3E0=w5120-h2880-rw" width="150" />
<img src="https://play-lh.googleusercontent.com/aCfhkERRrvN6LZIRe19kG6-QBxcJxUYHmWncghg_DzrtXI6B0Un18RNbdloFWrLLsK4=w5120-h2880-rw" width="150" />


build:

flutter build appbundle

flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs

flutter build apk --debug --verbose

flutter pub cache repair

flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs    
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


delete pod file o folder ios  
flutter clean  
flutter pub get  
cd ios  
arch -x86_64 pod install --repo-update
