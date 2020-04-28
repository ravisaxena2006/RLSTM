package com.techm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.techm.entity.BoughtOuts;
import com.techm.entity.ProjectCosts;

public interface BoughtSearchRepositroy extends CrudRepository<BoughtOuts, Long> {

	@Query(value = "SELECT * FROM bout_table WHERE dl_id=:keyword and time_stamp=:keyword1 ",nativeQuery = true)
	public List<BoughtOuts> search(@Param("keyword") String keyword, String keyword1);
	
	@Query(value = "SELECT  * FROM bout_table WHERE dl_id=:keyword and time_stamp IS NOT NULL AND dl_id IS NOT NULL GROUP BY time_stamp ORDER BY time_stamp desc ",nativeQuery = true)
	public List<BoughtOuts> searchDlList(@Param("keyword") String keyword);

	@Query(value = "SELECT * FROM bout_table ORDER BY creation_date DESC LIMIT 1",nativeQuery = true)
	public List<BoughtOuts> searchTrack();
}
