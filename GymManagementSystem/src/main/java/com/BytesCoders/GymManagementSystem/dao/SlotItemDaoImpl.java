package com.BytesCoders.GymManagementSystem.dao;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.BytesCoders.GymManagementSystem.bean.SlotItem;
import com.BytesCoders.GymManagementSystem.bean.SlotItemEmbed;

@Repository
@Service
public class SlotItemDaoImpl implements  SlotItemDao  {
	
	@Autowired
	private SlotItemRepository repository;

	@Override
	public void save(SlotItem slotItem) {
		repository.save(slotItem);
		
	}
	@Override
	public Integer findSeatBookedById(SlotItemEmbed id) {
		return repository.findSeatBookedById(id);
	}
	@Override
	public Set<SlotItemEmbed> findAllEmbeds() {
		
		return repository.findAllEmbeds();
	}
	@Override
	public SlotItem findById(SlotItemEmbed id) {
		// TODO Auto-generated method stub
		return repository.findById(id).get();
	}

}
