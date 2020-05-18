package com.techm.repository;

import java.util.Collection;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.techm.entity.RoleDetails;
import com.techm.entity.Tower;
import com.techm.entity.UserDetails;

public interface RolesRepository extends JpaRepository<RoleDetails, Integer> {

	
	List<RoleDetails> findByRoleIdIn(Collection<Integer> id);
	

    @Query("SELECT t.role FROM RoleDetails t where t.roleId = :id") 
    String findRoleByRoleId(@Param("id") int id);
	
}
