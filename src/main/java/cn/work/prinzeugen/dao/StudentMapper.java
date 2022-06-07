package cn.work.prinzeugen.dao;

import cn.work.prinzeugen.entity.Student;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author prinzeugen
 */
@Mapper
public interface StudentMapper {
    /**
     * 插入数据
     * @param instance 实体类
     */
    int insertData(Student instance);

    /**
     * 更新数据
     *
     * @param instance 实体类
     * @return
     */
    int updateData(Student instance);

    /**
     * 删除数据
     * @param id 主键
     */
    void deleteData(Integer id);

    /**
     * 根据id查询数据
     * @param id 主键
     * @return 返回包装的实体类
     */
    Student findById(@Param("id")int id, @Param("pwd")String pwd);

    /**
     * 查询所有数据
     * @return 返回所有实体类的集合
     */
    List<Student> findAll();
}
