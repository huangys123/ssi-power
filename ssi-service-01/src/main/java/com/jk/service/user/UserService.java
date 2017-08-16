package com.jk.service.user;

import java.util.List;
import java.util.Map;

import com.jk.entity.role.RoleRequest;
import com.jk.entity.role.RoleResponse;
import com.jk.entity.user.User;
import com.jk.entity.user.UserRquest;

public interface UserService {

	 List<User> selectUserList(UserRquest userRquest);

	 void insertUser(User user);

	 void deleteUser(User user);
	 
	 User selectUserById(Integer userId);

	 void updateUser(User user);

	Map<String, Object> login(UserRquest userRquest);

	//Ztree查询
	List<RoleResponse> selectUserRoleListJson(RoleRequest roleRequest);

	void insertUserRoleList(List<RoleRequest> roleRequestList);

	int selectUserCount(UserRquest userRquest);

	



}
