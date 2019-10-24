package com.example.demo.user.mapper;


import com.example.demo.entity.Account;
import com.example.demo.entity.Unit;
import com.example.demo.entity.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 用户mapper接口
 * @author： yzh
 */
@Mapper
public interface UserMapper {
    /**
     * 用户登录验证方法
     * @param user
     * @return user
     */
    User findUserByNameAndPwd(User user);

    /**
     * 对比所有用户id号码
     * @return List<User>
     */
    List<User> findUserAll();

    /**
     * 注册单位用户
     * @param user
     * @return Integer
     */
    Integer addUser(User user);
    /**
     * 单位开户
     * @param account
     * @return Integer
     */
    Integer addAccount(Account account);

    /**
     * 根据单位账户ID查找单位用户
     * @param accountId
     * @return
     */
    User findUserByAccountId(String accountId);

    /**
     * 根据ID修改账户状态
     * @param user
     * @return
     */
    Integer updateUserStatus(User user);

    /**
     * 跟据userId查询Unit对象
     * @param user
     * @return
     */
    Unit findUnitByUser(User user);

    /**
     * 添加单位
     * @param unit
     * @return Integer
     */
    Integer addUnit(Unit unit);

    /**
     *根据单位ID查找单位
     * @param id
     * @return Unit
     */
    Unit findUnitById(String id);

    /**
     * 单位登记信息
     * @param unit
     * @return
     */
    Integer updateUnit(Unit unit);

}
