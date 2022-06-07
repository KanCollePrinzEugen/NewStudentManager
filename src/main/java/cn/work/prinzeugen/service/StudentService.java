package cn.work.prinzeugen.service;

import cn.work.prinzeugen.entity.Student;
import com.github.pagehelper.PageInfo;

import java.util.List;


public interface StudentService {
	
	public   int register(Student s);

	public   int  deleteStudentBySno(Integer sno);
	
	public Student login(int sno,String pwd);
	
	public PageInfo<Student> getAllStudents(int page, int rows);
	
	public    List   getAllStudentsFenye(int pageNo,int pageSize);
	
	public    List<Student>   getStudentsByName(String sname);

	public Integer countAllStudents();

	public   int  updateStudent(Student s);
	
	
	
	
	

}
