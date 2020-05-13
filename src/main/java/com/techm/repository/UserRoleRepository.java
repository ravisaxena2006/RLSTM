package com.techm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;



import com.techm.entity.UserRole;

public interface UserRoleRepository extends JpaRepository<UserRole, Integer> {

	List<UserRole> findAllByUserId(int id);
	List<UserRole> findByUserIdAndCrmIdAndRecordStatus(int userId,String crmId,String recordStatus);
}
