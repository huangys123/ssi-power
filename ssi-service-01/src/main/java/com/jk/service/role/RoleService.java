package com.jk.service.role;

import java.util.List;

import com.jk.entity.menu.MenuRequest;
import com.jk.entity.menu.MenuResponse;
import com.jk.entity.role.RoleRequest;
import com.jk.entity.user.User;

public interface RoleService {

	int selectRoleCount(RoleRequest roleRequest);

	List<User> selectRoleList(RoleRequest roleRequest);

	List<MenuResponse> selectRoleMenuListJson(MenuRequest menuRequest);


}
