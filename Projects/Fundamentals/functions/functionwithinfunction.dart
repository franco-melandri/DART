
void main() {

	void talkAbout(String toShout, shoutFunc) {
		print(shoutFunc(toShout));
	}

	String exclame(String toExclame) => toExclame + "!";
	
	String manyTalk(String toMany) {
		String allTogether = "";
		for (int i = 0; i < 10; i++) {
			allTogether = allTogether + toMany;
		}
		return allTogether;
	}

	talkAbout("Hello", exclame);

	talkAbout("TicToc", manyTalk);

	// anonymous function !!
	talkAbout("Wow", (String s) => s.toUpperCase());
}