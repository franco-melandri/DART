
class MyClass {

	MyClass([int i, String title, String d]) {
		index = i;
		this.title = title;
		_description = d;
	}

	MyClass.fromEmpty() {
		index = 0;
		title = "";
		_description = "";
	}

	int index = 0;
	String title = "";

	String _description = "";
	String get description => _description;
	set description(String desc) {
		_description = desc;
	}

	String summary () => title + " , " + description;
}

class MyClass1 extends MyClass {
	MyClass1([int i, String title, String d, int value]) : super(i, title, d){
		this.value = value;
	}

	int value;
}

class MyClass2 implements MyClass {
	MyClass2(int order) {
		this.order = order;
	}

	int order;

	String summary () => order;
}


class TimeStamp {
	DateTime creationTime = new DateTime.now();
	void printTimeStamp() {
		print(creationTime);
	}
}

class MyClass3 extends MyClass2 with TimeStamp {
	MyClass3(int order) : super(order) {
	}


	String summary () => printTimeStamp();
}

void main() {

	printClass(MyClass c) {
		print(c.index);
		print(c.title);
		print(c.description);
		print(c.summary());
	}
	printClass1(MyClass1 c) {
		printClass(c);
		print(c.value);
	}
	printClass2(MyClass2 c) {
		print(c.summary());
	}
	printClass3(MyClass3 c) {
		print(c.summary());
	}

	var c = new MyClass();
	c.index = 1;
	c.title = "title";
	c.description = "description";
	printClass(c);


	c = new MyClass(2, "title2", "description2");
	printClass(c);

	c = new MyClass.fromEmpty();
	printClass(c);

	c = new MyClass1(3, "title3", "description3	", 100);
	printClass1(c);

	c = new MyClass2(1);
	printClass2(c);

	c = new MyClass3(1);
	printClass3(c);
}