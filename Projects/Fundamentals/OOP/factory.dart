
class SimpleLogger {

	static SimpleLogger logger; // our single instance's representation
	
	factory SimpleLogger() {
		if (SimpleLogger.logger == null) {
			SimpleLogger.logger = new SimpleLogger._internal();
		}
		return SimpleLogger.logger;
	}

	SimpleLogger._internal(); // a private constructor
	
	void log(Object o) {
		print(o);
	}
}

void main() {
	SimpleLogger myLogger = new SimpleLogger();
	SimpleLogger myLogger2 = new SimpleLogger();
	print(myLogger == myLogger2); 
}