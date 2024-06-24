package com.BytesCoders.GymManagementSystem.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.BytesCoders.GymManagementSystem.bean.SlotItem;
import com.BytesCoders.GymManagementSystem.bean.SlotItemEmbed;

public interface SlotItemRepository extends JpaRepository <SlotItem ,SlotItemEmbed> {
       
	
}
