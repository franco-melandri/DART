import 'package:unittest/unittest.dart';

exclaim(String what) => what + "!";
void main() {
test("exclaim() test", (){
String original = "I'm testing";
expect(exclaim(original), equals("I'm testing!"));
});
}