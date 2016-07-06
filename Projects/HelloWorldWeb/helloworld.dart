import 'dart:html';

void main() {
	querySelector("#button")
		.onClick
		.listen(sayHello);
}

void sayHello(MouseEvent event) {
	var inputText = (querySelector("#name-input") as InputElement); 
	querySelector("#name-box").text = inputText.value;
	inputText.value = "";
}
