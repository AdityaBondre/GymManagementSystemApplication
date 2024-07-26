package com.BytesCoders.GymManagementSystem.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import com.BytesCoders.GymManagementSystem.bean.Feedback;

public interface FeedbackRepository extends JpaRepository<Feedback, Long> {

}
