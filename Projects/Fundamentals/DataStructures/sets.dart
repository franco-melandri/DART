
void main() {
	
	Set jerryColors = new Set.from(["blue", "red", "green"]);
	var maryColors = new Set.from(["red", "green", "yellow"]);
	Set bothColors = jerryColors.intersection(maryColors);

	for (String color in bothColors) {
		print(color);	
	};
}