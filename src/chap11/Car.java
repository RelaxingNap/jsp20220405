package chap11;

<<<<<<< Updated upstream
import java.util.List;
=======
import java.util.*;
>>>>>>> Stashed changes

public class Car {
	private String model;
	private int price;
	private boolean available;
	private List<String> owners;
<<<<<<< Updated upstream
	
	public Car() {
		
	}
	
	public Car(String model, int price) {
		this.model = model;
		this.price = price;
	}
	
	public List<String> getOwners() {
		return owners;
	}
	
	public void setOwners(List<String> owners) {
		this.owners = owners;
=======
	
	public Car() {}
	
	public Car(String model, int price) {
		this.model = model;
		this.price = price;
	}
	
	public List<String> getOwners() {
		return owners;
	}

	public void setOwners(List<String> owners) {
		this.owners = owners;
	}

	public boolean isAvailable() {
		return available;
>>>>>>> Stashed changes
	}
	
	public void setAvailable(boolean available) {
		this.available = available;
	}
	
	public boolean isAvailable() {
		return available;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

}