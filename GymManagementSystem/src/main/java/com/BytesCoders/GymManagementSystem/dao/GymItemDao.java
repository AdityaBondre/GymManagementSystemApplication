package com.BytesCoders.GymManagementSystem.dao;

import java.util.List;

import com.BytesCoders.GymManagementSystem.bean.GymItem;

public interface GymItemDao {
	
	public void saveNewItem (GymItem gymItem);
	public List<GymItem>   displayAllItems();
	public GymItem findItemById (Long id);
	public Long generateItemId();
    public Integer findTotalSeatById(Long id);
}
