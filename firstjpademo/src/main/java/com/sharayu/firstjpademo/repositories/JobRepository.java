package com.sharayu.firstjpademo.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sharayu.firstjpademo.entities.Job;

public interface JobRepository extends JpaRepository<Job, Integer> {

}
