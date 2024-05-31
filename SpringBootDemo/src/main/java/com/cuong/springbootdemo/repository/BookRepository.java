package com.cuong.springbootdemo.repository;

import com.cuong.springbootdemo.model.Book;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BookRepository extends JpaRepository<Book, Long> {

}
