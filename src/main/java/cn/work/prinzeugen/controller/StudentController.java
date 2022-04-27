package cn.work.prinzeugen.controller;

import cn.work.prinzeugen.entity.Student;
import cn.work.prinzeugen.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
    public String studentRegister(@RequestParam("sno") String sno,
                                  @RequestParam("pwd") String pwd, @RequestParam("pwdCheck") String pwdCheck,
                                  @RequestParam("age") String age, @RequestParam("address") String address){
        System.out.println("id:"+sno+"\npwd"+pwd+"\npwdCheck:"+pwdCheck+"\nage:"+age+"\naddress:"+address);
        int snoToInt = Integer.parseInt(sno);
        int ageToInt = Integer.parseInt(age);
        if (pwd != pwdCheck){
            return "loginError";
        }
        return null;
    }
}
