package com.techm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.techm.entity.UserDetails;

public interface UserRepository extends JpaRepository<UserDetails, Integer> {

	public List<UserDetails> findByLoginId(String id);

    @Query("SELECT t.usersnum FROM UserDetails t where t.loginId = :id") 
    Integer findUsersnumByLoginId(@Param("id") String id);
}
