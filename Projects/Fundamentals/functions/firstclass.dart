

void talkAbout(String toShout, shoutFunc) {
	print(shoutFunc(toShout));
}

String exclame(String toExclame) => toExclame + "!";

String manyTalk(String toMany) {
	String allTogether = "";
	for (int i = 0; i < 10; i++) {
		allTogether = allTogether + toMany; // keep concatenating onto the end of allTogether
	}
	return allTogether;
}

void main() {
	talkAbout("Hello", exclame);
	talkAbout("TicToc", manyTalk);
}