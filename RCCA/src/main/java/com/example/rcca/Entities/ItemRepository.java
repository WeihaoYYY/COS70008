package com.example.rcca.Entities;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ItemRepository extends JpaRepository<Item, Long> {
    @Modifying  //update或delete时必须使用@Modifying对方法进行注解，才能使得ORM知道现在要执行的是写操作
    @Query(value = "UPDATE Item i SET i.status = 1 WHERE i.rid = :id")
    void approval(@Param("id") Long id);

//    @Query()

}
