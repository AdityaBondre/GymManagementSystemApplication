package com.BytesCoders.GymManagementSystem.bean;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Slot {
	@Id
    private Long slotId;
	private String slotTime;
	private double pricing;
	public Slot() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Slot(Long slotId, String slotTime, double pricing) {
		super();
		this.slotId = slotId;
		this.slotTime = slotTime;
		this.pricing = pricing;
	}
	public Long getSlotId() {
		return slotId;
	}
	public void setSlotId(Long slotId) {
		this.slotId = slotId;
	}
	public String getSlotTime() {
		return slotTime;
	}
	public void setSlotTime(String slotTime) {
		this.slotTime = slotTime;
	}
	public double getPricing() {
		return pricing;
	}
	public void setPricing(double pricing) {
		this.pricing = pricing;
	}
	@Override
	public String toString() {
		return "Slot [slotId=" + slotId + ", slotTime=" + slotTime + ", pricing=" + pricing + "]";
	}
	
	
	
}
