package com.jk.dao.user;

import java.sql.SQLException;
import java.util.List;

import org.springframework.orm.ibatis.SqlMapClientCallback;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;
import org.springframework.stereotype.Repository;

import com.ibatis.sqlmap.client.SqlMapExecutor;
import com.jk.entity.role.RoleRequest;
import com.jk.entity.role.RoleResponse;
import com.jk.entity.user.User;
import com.jk.entity.user.UserResponse;
import com.jk.entity.user.UserRquest;

@Repository
public class UserDaoImpl extends SqlMapClientDaoSupport implements UserDao{
	protected SqlMapExecutor sqlMap;

	// 查询列表
	public List<User> selectUserList(UserRquest userRquest) {
		// TODO Auto-generated method stub
		return getSqlMapClientTemplate().queryForList("user.selectUserList",userRquest);
	}
	
	// 新增
	@Override
	public void insertUse(User user) {
		// TODO Auto-generated method stub
		getSqlMapClientTemplate().insert("user.insertUser",user);
	}
  
	// 删除
	@Override
	public void deleteUser(User user) {
		// TODO Auto-generated method stub
		getSqlMapClientTemplate().delete("user.deleteUser",user.getUserId());
	}
	
	// 修改的回显
	@Override
	public User selectUserById(Integer userId) {
		// TODO Auto-generated method stub
		return (User) getSqlMapClientTemplate().queryForObject("user.selectUserById",userId);
	}

	// 修改
	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		getSqlMapClientTemplate().update("user.updateUser",user);
	}

	
	//登录
	@Override
	public UserResponse login(User user) {
		// TODO Auto-generated method stub
		return (UserResponse) getSqlMapClientTemplate().queryForObject("user.loginUser",user);
	}

	// 多次登录失败 密码锁定
	@Override
	public void updateLoginFailNum(UserRquest userRquest) {
		// TODO Auto-generated method stub
		this.getSqlMapClientTemplate().update("user.updateLoginFailNum",userRquest);
	}
	//=================================================
	//查询ztree
	@Override
	public List<RoleResponse> selectUserRoleListJson(RoleRequest roleRequest) {
		// TODO Auto-generated method stub
		return this.getSqlMapClientTemplate().queryForList("user.selectUserRoleListJson", roleRequest);
	}
	// 删除
	@Override
	public void deleteAllRolesByUserID(RoleRequest roleRequest) {
		// TODO Auto-generated method stub
		this.getSqlMapClientTemplate().delete("user.deleteAllRolesByUserID", roleRequest);
	}
	//新增权限数据
	@Override
	public void insertUserRoleList(final List<RoleRequest> roleRequestList) {
		// TODO Auto-generated method stub
		this.getSqlMapClientTemplate().execute(new SqlMapClientCallback<Object>() {

			@Override
			public Object doInSqlMapClient(SqlMapExecutor sqlMap)throws SQLException {
				// TODO Auto-generated method stub
				//开启批量
				sqlMap.startBatch();
				//添加批量操作语句
				for (RoleRequest roleRequest : roleRequestList) {
					sqlMap.insert("user.insertUserRole", roleRequest);
				}
				//执行批量操作
				sqlMap.executeBatch();
				return null;
			}
			
		});
	}
	
	//分页
	@Override
	public int selectUserCount(UserRquest userRquest) {
		// TODO Auto-generated method stub
		return (Integer) this.getSqlMapClientTemplate().queryForObject("user.selectUserCount", userRquest);
	}
	
	
		
}
