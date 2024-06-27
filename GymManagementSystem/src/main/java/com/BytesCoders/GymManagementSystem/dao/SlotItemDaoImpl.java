package com.BytesCoders.GymManagementSystem.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.BytesCoders.GymManagementSystem.bean.SlotItem;

@Repository
@Service
public class SlotItemDaoImpl implements  SlotItemDao  {
	
	@Autowired
	private SlotItemRepository repository;

	@Override
	public void save(SlotItem slotItem) {
		repository.save(slotItem);
		
	}

}
