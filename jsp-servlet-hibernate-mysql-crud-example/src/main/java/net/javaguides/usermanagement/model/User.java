package net.javaguides.usermanagement.model;


import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="User")
public class User {

	private String id;
    private String name;
    private String email;
    private String country;
    
    
    @XmlElement
    public void setId(String id) {
		this.id = id;
	}
    
	public String getId() {
		return id;
	}
	
	
	
	@XmlElement
	public void setName(String name) {
		this.name = name;
	}
	
	public String getName() {
		return name;
	}

	
	
	@XmlElement
	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmail() {
		return email;
	}

	

	@XmlElement
	public void setCountry(String country) {
		this.country = country;
	}
	
	public String getCountry() {
		return country;
	}

	
}