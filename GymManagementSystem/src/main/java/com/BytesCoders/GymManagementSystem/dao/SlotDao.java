package com.BytesCoders.GymManagementSystem.dao;

import java.util.List;

import com.BytesCoders.GymManagementSystem.bean.Slot;

public interface SlotDao {
	public void saveNewSlot(Slot slot);
	public List<Slot> displayAllSlots();
	public Slot findSlotById(Long id);
	public Long generateSlotId();

}
