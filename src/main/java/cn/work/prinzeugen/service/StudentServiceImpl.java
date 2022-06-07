package cn.work.prinzeugen.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.work.prinzeugen.dao.StudentMapper;
import cn.work.prinzeugen.entity.Student;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author prinzeugen
 */
@Service
@Transactional
//@Service用来表示业务层的实现类
//@Transactional该注解表示类中的所有方法（其实只需要增删改方法即可，查询方法不需要使用该注解）都纳入spring框架的事务管理
public class StudentServiceImpl  implements  StudentService{
	
	//@Autowired注解将StudentDao注入到本类中
	@Autowired
	StudentMapper dao ;

	@Override
	public int register(Student s) {
		return dao.insertData(s);
	}

	@Override
	public Student login(int sno, String pwd) {
		
//		Map<String,Object> data  = new HashMap<String,Object>();
//		data.put("sno", sno);
//		data.put("pwd", pwd);

		return dao.findById(sno, pwd);

	}

	@Override
	public PageInfo<Student> getAllStudents(int page, int rows) {

		//1.开启分页插件
		PageHelper.startPage(page,rows);

		//2.从数据库查询所有要分页的记录
		List<Student> list = dao.findAll();

		//3.将查询结果封装到PageInfo对象中
		PageInfo<Student> studentPageInfo = new PageInfo<Student>(list);

		System.out.println("我是服务层：结果是" + studentPageInfo.toString());

		return studentPageInfo;
	}

	@Override
	public int deleteStudentBySno(Integer sno) {


//		return dao.deleteStudentBySno(sno);
		return 0;
	}



	@Override
	public int updateStudent(Student s) {
		return dao.updateData(s);
	}

	@Override
	public List<Student> getStudentsByName(String sname) {
//		return dao.getStudentsByName(sname);
		return null;
	}

	@Override
	public List getAllStudentsFenye(int pageNo, int pageSize) {
		Map<String,Object> data  = new HashMap<String,Object>();

		int startPos = (pageNo-1)*pageSize;

		data.put("startPos", startPos);
		data.put("pageSize", pageSize);

//		return dao.getAllStudentsFenye(data);
		return null;
	}

	@Override
	public Integer countAllStudents() {
//		return dao.countAllStudents();
		return null;
	}
}
