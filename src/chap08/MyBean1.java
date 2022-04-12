package chap08;

// 예) 아래 클래스의 get(is), set메소드 4개 중 get, set제거하고 앞글자를 소문자로 바꾸면
// (name, age)가 속성(property)
// 속성은 메소드명에 의해 정해짐.
// get 메소드는 속성읽기
// set 메소드는 속성쓰기

// is : get메소드의 리턴타입이 boolean이면 is로 가능.
public class MyBean1 {
	private String name;
	private int age;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	
}
