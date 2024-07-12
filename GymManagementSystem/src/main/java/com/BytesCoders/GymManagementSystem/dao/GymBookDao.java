package com.BytesCoders.GymManagementSystem.dao;

import java.util.List;

import com.BytesCoders.GymManagementSystem.bean.GymBook;



public interface GymBookDao {
	public void save(GymBook gymBook);
	public Long generateBookingid();
	public List<GymBook> getBookList();
	public GymBook findBookInfoById(Long id);
	public void deleteById(Long id);
	public List<GymBook> getEntitiesByUsername(String username);
	

	

}
