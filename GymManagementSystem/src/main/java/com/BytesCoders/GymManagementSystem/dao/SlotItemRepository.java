package com.BytesCoders.GymManagementSystem.dao;

import java.util.Set;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.BytesCoders.GymManagementSystem.bean.SlotItem;
import com.BytesCoders.GymManagementSystem.bean.SlotItemEmbed;

public interface SlotItemRepository extends JpaRepository <SlotItem ,SlotItemEmbed> {
	@Query("Select seatBooked from SlotItem a Where embeddedId=?1")
	public Integer findSeatBookedById(SlotItemEmbed id);
	
	@Query("Select embeddedId From SlotItem")
	public Set<SlotItemEmbed> findAllEmbeds();
       
	
}
