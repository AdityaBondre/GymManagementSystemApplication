package com.BytesCoders.GymManagementSystem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.BytesCoders.GymManagementSystem.bean.GymItem;
import com.BytesCoders.GymManagementSystem.bean.Slot;
import com.BytesCoders.GymManagementSystem.dao.GymItemDao;
import com.BytesCoders.GymManagementSystem.dao.SlotDao;

@RestController
public class GymController {
	
	@Autowired
	private GymItemDao gymItemDao;
	
	@Autowired
	private SlotDao slotDao;
	
	@GetMapping("/index")
	public ModelAndView showIndexPage() {
		return new ModelAndView("index");
	}
	
	@GetMapping ("/gymitem")
	public ModelAndView showItemEntryPage() {
	GymItem gymItem=new GymItem();
	Long newId= gymItemDao.generateItemId();
	gymItem.setItemId(newId);
	ModelAndView mv=new ModelAndView("gymItemEntryPage");
	mv.addObject("itemRecord", gymItem);
	return mv;

	}
	@PostMapping ("/gymitem")
	public ModelAndView saveItem (@ModelAttribute("itemRecord") GymItem gymItem) { 
		gymItemDao.saveNewItem (gymItem);
	return new ModelAndView("index");
	}
	@GetMapping ("/gymitems")
	public ModelAndView showItemReportPage() {
	List<GymItem> itemList=gymItemDao.displayAllItems();
	ModelAndView mv=new ModelAndView("gymItemReportPage");
	mv.addObject("itemList", itemList);
	return mv;
	}

    @GetMapping("/slot")
    public ModelAndView showSlotEntryPage() {
    Slot slot=new Slot();
    Long newId=slotDao.generateSlotId(); 
    slot.setSlotId (newId);
    ModelAndView mv=new ModelAndView("slotEntryPage");
    mv.addObject("slotRecord", slot);
    return mv;
    }
    @PostMapping("/slot")
    public ModelAndView saveSlot (@ModelAttribute("slotRecord") Slot slot) {
    slotDao.saveNewSlot (slot);
    return new ModelAndView("index");
    }
    @GetMapping("/slots")
    public ModelAndView showSlotReportPage() {
    List<Slot> slotList=slotDao.displayAllSlots();
    ModelAndView mv=new ModelAndView("slotReportPage");
    mv.addObject("slotList", slotList);
    return mv;
    }
    
}
