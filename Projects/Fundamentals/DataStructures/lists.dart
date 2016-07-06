
void main() {

	void printAll(List list) {
		for (int i = 0; i < list.length; i++) {
			print(list[i]);
		}
	}

	List greetings = ["hello", "hi", "howdy", "hey"];
	printAll(greetings);

	List various = ["hello", 2, "howdy", 4.5];
	printAll(various);

	var list = new List();
	list.add(1);
	printAll(list);
}