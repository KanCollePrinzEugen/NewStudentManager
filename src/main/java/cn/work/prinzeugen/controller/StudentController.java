package cn.work.prinzeugen.controller;

import cn.work.prinzeugen.entity.Student;
import cn.work.prinzeugen.service.StudentService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.Objects;

/**
 * @author prinzeugen
 */
@Controller
public class StudentController {
    @Autowired
    private StudentService studentService;

    @RequestMapping("/index")
    public String goToIndex(){
        return "index";
    }
    @RequestMapping("/toRegister")
    public String goToRegister(){
        return "register";
    }
    @RequestMapping("/toUpdate")
    public String goToUpdate() {return "updateStudent";}
    @RequestMapping("/toMain")
    public String goToMain() {return "main";}
    @RequestMapping("/toDeleteStudent")
    public String toDeleteStudent() {return "deleteStudent";}
    @RequestMapping("/toFindStudent")
    public String toFindStudent() {return "findStudent";}
    @RequestMapping("/studentLogin")
    public String studentLogin(@RequestParam("sno") String sno,
                               @RequestParam("pwd") String pwd){
        System.out.println("id:"+sno+"\npwd:"+pwd);
        int snoToInt = Integer.parseInt(sno);
        Student s = studentService.login(snoToInt, pwd);
        if(s != null){
            return "main";
        }else{
            return "loginError";
        }
    }
    @RequestMapping("/studentRegister")
    public String studentRegister(@RequestParam("sno") String sno, @RequestParam("sname") String sname,
                                  @RequestParam("pwd") String pwd, @RequestParam("pwdCheck") String pwdCheck,
                                  @RequestParam("age") String age, @RequestParam("address") String address){
        System.out.println("id:"+sno+"\npwd:"+pwd+"\npwdCheck:"+pwdCheck+"\nage:"+age+"\naddress:"+address);
        int snoToInt = Integer.parseInt(sno);
        int ageToInt = Integer.parseInt(age);
        Student s = new Student(snoToInt, sname, pwd, ageToInt, address);
        if (!Objects.equals(pwd, pwdCheck)){
            return "loginError";
        }
        if (studentService.register(s) > 0){
            return "main";
        } else{
            return "register";
        }
    }
    @RequestMapping("/findAllByPage")
    public String findAll(Integer page, Integer rows, HttpSession session){

        System.out.println("我是控制层：传来的参数page=" + page + "rows=" + rows);

        //调用service层方法
        PageInfo<Student> pageInfo = studentService.getAllStudents(page, rows);

        session.setAttribute("pageInfo", pageInfo);

        System.out.println(pageInfo.toString());

        return "showStudentByPage";
    }
    @RequestMapping("/updateStudent")
    public String updateStudent(@RequestParam("sno") String sno, @RequestParam("sname") String sname,
                                  @RequestParam("pwd") String pwd, @RequestParam("pwdCheck") String pwdCheck,
                                  @RequestParam("age") String age, @RequestParam("address") String address){
        System.out.println("id:"+sno+"\npwd:"+pwd+"\npwdCheck:"+pwdCheck+"\nage:"+age+"\naddress:"+address);
        int snoToInt = Integer.parseInt(sno);
        int ageToInt = Integer.parseInt(age);
        Student s = new Student(snoToInt, sname, pwd, ageToInt, address);
        if (!Objects.equals(pwd, pwdCheck)){
            return "updateStudent";
        }
        if (studentService.updateStudent(s) > 0){
            return "main";
        } else{
            return "updateStudent";
        }
    }

}
