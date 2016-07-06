
void main() {

	void printAllValues(Maps maps) {
		maps.forEach((k,v) => print("$k -> $v"));
	}

	Map countryCapitals = {
							"France": "Paris", 
							"USA": "Washington", 
							"Japan": "Tokyo"
						  };
	printAllValues(countryCapitals);

	Map countryCapitals1 = new Map();
	countryCapitals1["France"] = "Paris";
	countryCapitals1["USA"] = "Washington";
	countryCapitals1["Japan"] = "Tokyo";
	printAllValues(countryCapitals1);
}