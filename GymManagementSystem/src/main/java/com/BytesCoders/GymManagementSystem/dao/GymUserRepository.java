package com.BytesCoders.GymManagementSystem.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.BytesCoders.GymManagementSystem.bean.GymUser;

public interface GymUserRepository extends JpaRepository<GymUser, String> {
	Optional<GymUser> findByUsername(String username);
	
	@Query("Select username from GymUser where type='Customer'")
	public List<String> findAllCustomerUsers();
}
