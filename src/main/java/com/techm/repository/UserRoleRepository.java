package com.techm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.techm.entity.UserRole;

public interface UserRoleRepository extends JpaRepository<UserRole, Integer> {

	List<UserRole> findAllByUserId(int id);
	List<UserRole> findByUserIdAndCrmIdAndRecordStatus(int userId,String crmId,String recordStatus);
	
	@Query("SELECT distinct t.crmId FROM UserRole t where t.userId = :id") 
	List<String> findCrmIdByUserId(@Param("id") int id);
}
