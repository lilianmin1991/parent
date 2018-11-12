package home;

public class Dervied extends Base {
	private String name = "Dervied";
	public Dervied() {
		System.out.println("Dervied();");
		tellName();
		printName();
	}
	public void tellName() {
		System.out.println("Dervied tell name: " + name);
	}
	public void printName() {
		System.out.println("Dervied print name: " + name);
	}
	public static void main(String[] args){
		new Dervied();
	}
}

class Base{
	private String name = "Base";
	public Base() {
		
		System.out.println("Base();");
		tellName();
		printName();
	}
	public void tellName() {
		System.out.println("Base tell name: " + name);
	}
	public void printName() {
		System.out.println("Base print name: " + name);
	}
}

/* 输出结果：
 *  Dervied tell name: null
	Dervied print name: null
	Dervied tell name: Dervied
	Dervied print name: Dervied
	1、多态俗称方法重写、覆盖，只针对方法，不针对属性(哪有子类属性覆盖父类属性的？)。
	2、一个类型的指针指向子类实例化对象时，先初始化父类属性，然后执行父类的构造方法，并调用tellName()和printName()两个方法，此时要注意，由于多态特性，此时执行的实际上是子类的两个方法，而此时子类还没有实例化，
		那么子类的name属性也没有初始化，因此为null。
	3、父类初始化后，接着实例化子类，此时子类name属性值也初始化为“dervied”，此时子类构造方法中调用两个方法就可以打印出现值。
	<clinit>方法:
	Java在进行对象创建时首先进行类型加载，如果Class类型存在父类型，则需要先加载父类完成以后再加载子类型。并且对static变量进行初始化操作，对static变量或者static代码块初始化的逻辑就封装在<clinit>方法中。
	Java类型初始化过程中对static变量的初始化操作依赖与对static变量的赋值语句的前后关系，static语句块与static变量声明存在位置关系，java编译器与static变量的赋值位置有关。
	<init>方法:
	Java对象在进行实例化时，首先会进行父类的实例化操作，然后再进行子类的实例化操作。该部分操作封装在<init>方法中，并且子类的<init>方法中会首先对父类<init>方法的调用。
*/
