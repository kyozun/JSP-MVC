package com.cuong.springbootdemo.repository;

import com.cuong.springbootdemo.model.Publisher;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PublisherRepository extends JpaRepository<Publisher, Long> {
}
