package com.jk.dao.user;

import java.util.List;

import com.jk.entity.role.RoleRequest;
import com.jk.entity.role.RoleResponse;
import com.jk.entity.user.User;
import com.jk.entity.user.UserResponse;
import com.jk.entity.user.UserRquest;

public interface UserDao {

	List selectUserList(UserRquest userRquest);

	void insertUse(User user);
	
	void deleteUser(User user);
	
	User selectUserById(Integer userId);

	void updateUser(User user);

	UserResponse login(User user);

	void updateLoginFailNum(UserRquest userRquest);
	
	//ztree查询
	List<RoleResponse> selectUserRoleListJson(RoleRequest roleRequest);

	void deleteAllRolesByUserID(RoleRequest roleRequest);

	void insertUserRoleList(List<RoleRequest> roleRequestList);

	int selectUserCount(UserRquest userRquest);

	

}
