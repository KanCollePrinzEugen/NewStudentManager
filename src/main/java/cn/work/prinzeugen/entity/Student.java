package cn.work.prinzeugen.entity;

public class Student {


	private Integer sno;
	private String sname;
	private String pwd;
	private Integer age;
	private String address;
	
	
	
	public Integer getSno() {
		return sno;
	}
	public void setSno(Integer sno) {
		this.sno = sno;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Student(){
		
	}
	public Student(Integer sno, String sname, String pwd, Integer age,
			String address) {
		super();
		this.sno = sno;
		this.sname = sname;
		this.pwd = pwd;
		this.age = age;
		this.address = address;
	}
	
	
    
}
