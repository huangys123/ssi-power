package com.jk.controller.role;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jk.entity.menu.MenuRequest;
import com.jk.entity.menu.MenuResponse;
import com.jk.entity.role.RoleRequest;
import com.jk.entity.user.User;
import com.jk.entity.user.UserRquest;
import com.jk.service.role.RoleService;

@Controller
public class RoleController {
	@Resource
	private RoleService roleService;
	//查询跳转页面
	@RequestMapping("toRoleListPage")
	String toRoleListPage(){
		
		return "role/role_Show";
	}
	//查询列表  分页
    @RequestMapping("selectRoleListJson2")
	@ResponseBody
	Map<String,Object> selectRoleListJson2(String pageNumber, RoleRequest roleRequest) {
    	//查询总条数
		int totalCount = roleService.selectRoleCount(roleRequest);
		roleRequest.setTotalCount(totalCount);
		if (null == pageNumber || "".equals(pageNumber.trim())) {
			pageNumber = "1";
		}
		roleRequest.setPageIndex(Integer.valueOf(pageNumber));
		
		//计算分页信息
		roleRequest.calculate();
		//查询列表
		List<User> roleList = roleService.selectRoleList(roleRequest);
		//封装结果
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("total", totalCount);
		map.put("rows", roleList);
		return map;
	}
    
    //跳转页面
    @RequestMapping("toRoleMenuPage")
	String toRoleMenuPage(Model m, RoleRequest roleRequest) {
		m.addAttribute("roleId", roleRequest.getRoleId());
		return "role/role_Menu";
	}
    
    @RequestMapping("selectRoleMenuListJson")
	@ResponseBody
	List<MenuResponse> selectRoleMenuListJson(MenuRequest menuRequest) {
		List<MenuResponse> menuList = roleService.selectRoleMenuListJson(menuRequest);
		return menuList;
	}
    
}
