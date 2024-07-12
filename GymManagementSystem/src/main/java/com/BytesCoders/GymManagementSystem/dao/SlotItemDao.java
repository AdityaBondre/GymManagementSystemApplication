package com.BytesCoders.GymManagementSystem.dao;

import java.util.Set;

import com.BytesCoders.GymManagementSystem.bean.SlotItem;
import com.BytesCoders.GymManagementSystem.bean.SlotItemEmbed;

public interface SlotItemDao {
	public void save(SlotItem slotItem);
	public Integer findSeatBookedById(SlotItemEmbed id);
	public Set<SlotItemEmbed> findAllEmbeds();
	public SlotItem findById(SlotItemEmbed id);

}
