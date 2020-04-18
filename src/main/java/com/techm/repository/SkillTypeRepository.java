package com.techm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.techm.entity.RLS;
import com.techm.entity.SkillType;

public interface SkillTypeRepository extends JpaRepository<SkillType,Integer> 
{
	SkillType findFirstBySkillTypeId(int id);
}