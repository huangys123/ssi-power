package com.jk.service.user;

import java.util.HashMap;
import java.util.List;
import java.util.Map;











import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jk.dao.user.UserDao;
import com.jk.entity.role.RoleRequest;
import com.jk.entity.role.RoleResponse;
import com.jk.entity.user.User;
import com.jk.entity.user.UserResponse;
import com.jk.entity.user.UserRquest;
import com.sun.corba.se.impl.orbutil.closure.Constant;
import com.sun.mail.iap.Response;

import common.constant.Contant;
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;
	
	//查询
	@Override
	public List<User> selectUserList(UserRquest userRquest) {
		// TODO Auto-generated method stub
		return this.userDao.selectUserList(userRquest);
	}
	
	// 新增
	@Override
	public void insertUser(User user) {
		// TODO Auto-generated method stub
		this.userDao.insertUse(user);
	}

	// 删除
	@Override
	public void deleteUser(User user) {
		// TODO Auto-generated method stub
		this.userDao.deleteUser(user);
	}
	
	//修改的回显
	@Override
	public User selectUserById(Integer userId) {
		// TODO Auto-generated method stub
		return this.userDao.selectUserById(userId);
	}

	// 修改
	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		this.userDao.updateUser(user);
	}

	//登录
	@Override 
	public Map<String, Object> login(UserRquest userRequest) {
		Map<String, Object> map = new HashMap<String, Object>();
		//默认设置密码错误
		map.put("flag", Contant.LOGIN_PWD_ERROR);
		map.put("userInfo", null);
		
		//判断验证码
		if (null == userRequest.getUserImgCode() || "".equals(userRequest.getUserImgCode())) {
			
			//验证码为空
			map.put("flag", Contant.LOGIN_CODE_NULL);
		} else if (userRequest.getUserImgCode().equals(userRequest.getSysImgCode())) {
			
			//连接数据库，查询用户信息
			UserResponse userResponse = userDao.login(userRequest);
			
			//判断是否被锁定（小于连续3次失败并且距离最近一次失败大于5分钟）
			if (null == userResponse) {
			
				//用户不存在
				map.put("flag", Contant.LOGIN_ACCOUNT_ERROR);
			} else if (0 == userResponse.getLoginFailNum()
					|| 0 < (userResponse.getLoginFailNum() % 3)
					|| userResponse.getLoginFailDate() > 300000) {
				if (userResponse.getUserPwd().equals(userRequest.getUserPwd())) {
					//登陆成功
					map.put("flag", Contant.LOGIN_SUCCESS);
				
					//用户信息放入map中
					map.put("userInfo", userResponse);
					userRequest.setLoginFailNum(0);
				} else {
				
					//密码错误  
					//连接数据库，修改登陆失败的次数
					int loginFailNum = 1;
					if (userResponse.getLoginFailDate() > 300000) {
						userRequest.setLoginFailNum(1);
					} else {
						userRequest.setLoginFailNum(userResponse.getLoginFailNum() + 1);
						loginFailNum = userResponse.getLoginFailNum() + 1;
					}
					map.put("loginfailnum", loginFailNum);
				}
				
				//修改登陆失败次数
				userDao.updateLoginFailNum(userRequest);
			} else {
				
				//锁定
				map.put("flag", Contant.ACCOUNT_LOCKED);
			}
		} else {
			//验证码错误
			map.put("flag", Contant.LOGIN_CODE_ERROR);
		}
		return map;
	}

	
	//ztree查询
	@Override
	public List<RoleResponse> selectUserRoleListJson(RoleRequest roleRequest) {
		// TODO Auto-generated method stub
		return userDao.selectUserRoleListJson(roleRequest);
	}
	
	@Override
	public void insertUserRoleList(List<RoleRequest> roleRequestList) {
		// TODO Auto-generated method stub
		// 1、删除用户之前的所有角色（mid）
			userDao.deleteAllRolesByUserID(roleRequestList.get(0));
		// 2、添加用户勾选的所有角色（mid）
			userDao.insertUserRoleList(roleRequestList);
	}
	//查询总条数
	@Override
	public int selectUserCount(UserRquest userRquest) {
		// TODO Auto-generated method stub
		return userDao.selectUserCount(userRquest);
	}
  }