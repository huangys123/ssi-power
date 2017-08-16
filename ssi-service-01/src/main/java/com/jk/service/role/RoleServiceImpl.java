package com.jk.service.role;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jk.dao.role.RoleDao;
import com.jk.entity.menu.MenuRequest;
import com.jk.entity.menu.MenuResponse;
import com.jk.entity.role.RoleRequest;
import com.jk.entity.user.User;
@Service
public class RoleServiceImpl implements RoleService {
	@Resource
	 private RoleDao roleDao;
	 //查询总条数
	@Override
	public int selectRoleCount(RoleRequest roleRequest) {
		// TODO Auto-generated method stub
		return roleDao.selectRoleCount(roleRequest);
	}
	
	//查询列表
	@Override
	public List<User> selectRoleList(RoleRequest roleRequest) {
		// TODO Auto-generated method stub
		return roleDao.selectRoleList(roleRequest);
	}

	@Override
	public List<MenuResponse> selectRoleMenuListJson(MenuRequest menuRequest) {
		// TODO Auto-generated method stub
		return roleDao.selectRoleMenuListJson(menuRequest);
	}
	
	 
}
