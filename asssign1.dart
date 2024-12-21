

void main(){
print("1. Print a Message:");
print("\tHello, Dart! Welcome to Programming.");

print("2. Simple Arithmetic Operation:");
int a=10,b=5;
int c=a+b;
print("\tSum:$c");
int d=a-b;
print("\tSum:$d");
int e=a*b;
print("\tSum:$e");
dynamic f=a/b;
print("\tSum:$f");

print("3. Check Odd or Even:");
var num=11;
if(num/2==0)
print("\tThe number is Even.");
else
print("\tThe number is Odd");

print("4. Simple Calculator Using Functions:");
dynamic cal1=8;
dynamic cal2=4;
Calci calci= new Calci();
dynamic add=calci.Add(cal1,cal2);
dynamic sub=calci.Sub(cal1,cal2);
dynamic mul=calci.Mul(cal1,cal2);
dynamic div=calci.Div(cal1,cal2);
print("\tAddition:$add\n\tSubtraction:$sub\n\tMultiplication:$mul\n\tDivision:$div");

print("5. Fibonacci Series:");
int n1=0,n2=1,n3,i,count=10;
print("\t$n1\n\t$n2");
for(i=2;i<count;++i){
  n3=n1+n2;
  print("\t$n3");
  n1=n2;
  n2=n3;
}

print("6. Working with Lists");
List<int> list=[5,3,8,1,2];
list.add(7);
list.sort();
print("\tSorted List:$list");


print("8. Working with Maps");
Map map={'name':'Alice','age':25,'city':'New York'};
map.addAll({'country':'USA'});
map.update('age',(value)=>26);
print("\tUpdated Map:$map");

print("9. Bubble Sort");
List list1=[5,2,9,1,5,6];
int temp;
for(int i=0;i<list1.length;i++){
  for(int j=0;j<list1.length-1;j++){
    if(list1[j]>list1[j+1]){
      temp=list1[j];
      list1[j]=list1[j+1];
      list1[j+1]=temp;
    }
  }
}
print("\tSorted List:$list1");

print("10. Binary Search");
List list2=[1,3,5,7,9,11];
int low=0,high=list2.length-1,mid;
int key=7;
while(low<=high){
  mid=(low+high)~/2;
  if(list2[mid]==key){
    print("\tNumber found at index:$mid");
    break;
  }
  else if(list2[mid]<key){
    low=mid+1;
  }
  else{
    high=mid-1;
  }

}

print("11. Class and Object");
Car s1=new Car();
s1.Car1('Toyota','Corolla',2020);
s1.displayInfo();

print("12. Inheritance");
Animal animal=new Animal();
animal.makeSound();
Dog dog=new Dog();
dog.makeSound();

print("13.Optional Parameters");
greet("Alice"); 
greet("Bob","Good Morning");

print("14. Anonymous Function");
List list3=[1,2,3,4,5];
list3.forEach((square){
  print("\tSquare of $square:${square*square}");
});

print("15. Palindrome Checker");
String str="madam";
String rev="";
for(int i=str.length-1;i>=0;i--){
  rev=rev+str[i];
}
if(str==rev){
  print("\tThe string $str is a Palindrome.");
}
else{
  print("\tThe string $str is not a Palindrome.");

}


}

void greet(String name,[String msg="Welcome"]){
  print("\tHello $name, $msg");
}



class Animal{
  void makeSound(){
    print("\tAnimal makes a sound");
  }
}
class Dog extends Animal{
  void makeSound(){
    print("\tDog barks");
  }
}


class Car{
  String? brand;
  String? model;
  int? year;
  Car1(String brand,String model,int year){
    this.brand=brand;
    this.model=model;
    this.year=year;
  }
  void displayInfo(){
    print("\tCar details:\n\tBrand:$brand\n\tModel:$model\n\tYear:$year");
  }
}




class Calci{
  dynamic Add(a, b){
  return a+b;
}
dynamic Sub(a,b){    
  return a-b;
}
dynamic Mul(a,b){
  return a*b;
}
dynamic Div(a,b){
  return a/b;
}

}




//  Output:
// 1. Print a Message:
//         Hello, Dart! Welcome to Programming.
// 2. Simple Arithmetic Operation:
//         Sum:15
//         Sum:5
//         Sum:50
//         Sum:2.0
// 3. Check Odd or Even:
//         The number is Odd
// 4. Simple Calculator Using Functions:
//         Addition:12
//         Subtraction:4
//         Multiplication:32
//         Division:2.0
// 5. Fibonacci Series:
//         0
//         1
//         1
//         2
//         3
//         5
//         8
//         13
//         21
//         34
// 6. Working with Lists
//         Sorted List:[1, 2, 3, 5, 7, 8]
// 8. Working with Maps
//         Updated Map:{name: Alice, age: 26, city: New York, country: USA}
// 9. Bubble Sort
//         Sorted List:[1, 2, 5, 5, 6, 9]
// 10. Binary Search
//         Number found at index:3
// 11. Class and Object
//         Car details:
//         Brand:Toyota
//         Model:Corolla
//         Year:2020
// 12. Inheritance
//         Animal makes a sound
//         Dog barks
// 13.Optional Parameters
//         Hello Alice, Welcome
//         Hello Bob, Good Morning
// 14. Anonymous Function
//         Square of 1:1
//         Square of 2:4
//         Square of 3:9
//         Square of 4:16
//         Square of 5:25
// 15. Palindrome Checker
//         The string madam is a Palindrome.
