package com.techm.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.techm.entity.RoleDetails;
import com.techm.entity.UserDetails;

public interface RolesRepository extends JpaRepository<RoleDetails, Integer> {

	

}
