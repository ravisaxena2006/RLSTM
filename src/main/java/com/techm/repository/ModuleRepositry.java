package com.techm.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.techm.entity.Module;


public interface ModuleRepositry extends JpaRepository<Module, Integer> {

}
