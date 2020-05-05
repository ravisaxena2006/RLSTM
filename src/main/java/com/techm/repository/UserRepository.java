package com.techm.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.techm.entity.UserDetails;

public interface UserRepository extends JpaRepository<UserDetails, Integer> {

}
