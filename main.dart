void main() {
	A a = new C();
  print(a.salom());
  a.test(3,"b");
  print(a.sum(3,5));

  // A a = new A(); bu xato chunki A class abstract class
  
}
abstract class A{
  String salom();
  void test(int a,String b); // tanasi yoq funksiyalarni override qilish majburiy
  int sum(int a,int b){
    return a+b;
  } // tanasi bor funksiyalarni override qilish shart emas
}

class C extends A{
  @override
  String salom() {
  return "hi from C";
  }

  @override
  void test(int a, String b) {
    print("$a $b");
  }
  
}

class B implements A{
  @override
  String salom() {
    return "hi from B";
  }

  @override
  void test(int a, String b) {
    
  }
  
}
