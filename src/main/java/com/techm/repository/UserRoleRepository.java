package com.techm.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.techm.entity.UserDetails;
import com.techm.entity.UserRole;

public interface UserRoleRepository extends JpaRepository<UserRole, Integer> {


}
