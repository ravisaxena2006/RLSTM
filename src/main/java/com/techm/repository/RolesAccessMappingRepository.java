package com.techm.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.techm.entity.UserRoleAccess;

public interface RolesAccessMappingRepository extends JpaRepository<UserRoleAccess, Integer> {

	

}
