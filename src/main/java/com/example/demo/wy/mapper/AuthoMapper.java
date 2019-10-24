package com.example.demo.wy.mapper;

import com.example.demo.entity.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @ClassName： AuthoMapper
 * @Description： 单位网上操作用户业务授权
 * @Author： wy
 * @Date： 2019/10/24 9:54
 */
@Mapper
public interface AuthoMapper {

    /**
     * 添加经办人
     * @param user
     * @return
     */
    Integer addAutho(User user);

    /**
     * 对比所有用户id号码
     * @return
     */
    List<User> findUserAll();

}
