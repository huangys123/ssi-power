package com.jk.dao.role;

import java.util.List;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;
import org.springframework.stereotype.Repository;

import com.jk.entity.menu.MenuRequest;
import com.jk.entity.menu.MenuResponse;
import com.jk.entity.role.RoleRequest;
import com.jk.entity.user.User;

@Repository
public class RoleDaoImpl extends SqlMapClientDaoSupport implements RoleDao {
	
	//查询总条数
	@Override
	public int selectRoleCount(RoleRequest roleRequest) {
		// TODO Auto-generated method stub
		return (Integer) this.getSqlMapClientTemplate().queryForObject("role.selectRoleCount", roleRequest);
	}
	
	//查询列表
	@Override
	public List<User> selectRoleList(RoleRequest roleRequest) {
		// TODO Auto-generated method stub
		return this.getSqlMapClientTemplate().queryForList("role.selectRoleList", roleRequest);
	}

	@Override
	public List<MenuResponse> selectRoleMenuListJson(MenuRequest menuRequest) {
		// TODO Auto-generated method stub
		return this.getSqlMapClientTemplate().queryForList("role.selectRoleMenuListJson", menuRequest);
	}
	
	
}
