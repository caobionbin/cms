package com.web.dao;

import java.util.List;

import com.web.entity.Menus;

public interface MenuMapper {
	//获取所有菜
	List<Menus> getAllMenus();
	 //获取指定页码的菜
	List<Menus> getMenusByPage(int count1,int count2);
	//删除某条菜
	void deleteMenu(int id);
	//更新某个菜
	void updateMenu(Menus menus);
	//插入新的菜
	void insertMenu(Menus menus);
	//获取总菜条数
	int getTotalCount();
	//获取某条菜的详情
	Menus getOneMenu(int id);
	

}
